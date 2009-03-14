<?php

/*
 * Copyright 2007-2009 Kevin A. Lee
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

include_once("database.php");
include_once("mailer.php");
include_once("form.php");
include_once("securimage/securimage.php");

/**
 * Class to simplify keeping track of users and tasks.
 *
 * @author Kevin A. Lee
 * @email kevin.lee@buildmeister.com
 */
class Session
{
	var $username;     //Username given on sign-up
	var $userid;       //Random value generated on current login
	var $userlevel;    //The level to which the user pertains
	var $time;         //Time user was last active (page loaded)
	var $logged_in;    //True if user is logged in, false otherwise
	var $userinfo = array();  //The array holding all user info
	var $url;          //The page url current being viewed
	var $referrer;     //Last recorded site page viewed
	var $result_str;   // results string to be displayed.
	var $securimage;   // class for checking catchpas

	/**
	 * Note: referrer should really only be considered the actual
	 * page referrer in process.php, any other time it may be
	 * inaccurate.
	 */

	/* Class constructor */
	function Session(){
		$this->time = time();
		$this->startSession();
	}

	/**
	 * startSession - Performs all the actions necessary to
	 * initialize this session object. Tries to determine if the
	 * the user has logged in already, and sets the variables
	 * accordingly. Also takes advantage of this page load to
	 * update the active visitors tables.
	 */
	function startSession(){
		global $database;	// the database connection

		// is session already started?
		if(!isset($_SESSION)) {
			// start the session
			session_start();
		}

		// determine if user is logged in
		$this->logged_in = $this->checkLogin();

		// update users last active timestamp
		if ($this->logged_in){
			$database->addActiveUser($this->username, $this->time);
		}

		// remove inactive visitors from database
		$database->removeInactiveUsers();
		#$database->removeInactiveGuests();

		// set referrer page
		if(isset($_SESSION['url'])){
			$this->referrer = $_SESSION['url'];
		} else {
			$this->referrer = "/";
		}

		// set current url
		$this->url = $_SESSION['url'] = $_SERVER['PHP_SELF'];
		
		// create securimage catchpa class
		$this->securimage = new Securimage();
	} // startSession

	/**
	 * checkLogin - Checks if the user has already previously
	 * logged in, and a session with the user has already been
	 * established. Also checks to see if user has been remembered.
	 * If so, the database is queried to make sure of the user's
	 * authenticity. Returns true if the user has logged in.
	 */
	function checkLogin(){
		global $database;  //The database connection
		/* Check if user has been remembered */
		if(isset($_COOKIE['cookname']) && isset($_COOKIE['cookid'])){
			$this->username = $_SESSION['username'] = $_COOKIE['cookname'];
			$this->userid   = $_SESSION['userid']   = $_COOKIE['cookid'];
		}

		/* Username and userid have been set and not guest */
		if (isset($_SESSION['username']) && isset($_SESSION['userid'])) {
			/* Confirm that username and userid are valid */
			if ($database->confirmUserID($_SESSION['username'], $_SESSION['userid']) != 0) {
				/* Variables are incorrect, user not logged in */
				unset($_SESSION['username']);
				unset($_SESSION['userid']);
				return false;
			}

			/* User is logged in, set class variables */
			$this->userinfo  = $database->getUserInfo($_SESSION['username']);
			$this->username  = $this->userinfo['username'];
			$this->userid    = $this->userinfo['userid'];
			$this->userlevel = $this->userinfo['userlevel'];
			return true;
		}
		/* User not logged in */
		else{
			return false;
		}
	}

	/**
	 * login - The user has submitted his username and password
	 * through the login form, this function checks the authenticity
	 * of that information in the database and creates the session.
	 * Effectively logging in the user if all goes well.
	 */
	function login($subuser, $subpass, $subremember) {
		global $database;

		// checks that username is in database and password is correct */
		$subuser = stripslashes($subuser);
		$subpass = stripslashes($subpass);
		$result = $database->confirmUserPass($subuser, md5($subpass));

		// check error codes
		if ($result == 1) {
			return "INVALID_USER";
		} else if ($result == 2){
			return "INVALID_PASSWORD";
		}

		// check if user has been activated
		if ($database->confirmUserActive($subuser) == 0) {
			return "INACTIVE_USER";
		}		

		// username and password correct, register session variables 
		$this->userinfo  = $database->getUserInfo($subuser);
		$this->username  = $_SESSION['username'] = $this->userinfo['username'];
		$this->userid    = $_SESSION['userid']   = $this->generateRandID();
		$this->userlevel = $this->userinfo['userlevel'];

		// insert userid into database and update active users table
		$database->updateUserField($this->username, "userid", $this->userid);
		$database->addActiveUser($this->username, $this->time);
		#$database->removeActiveGuest($_SERVER['REMOTE_ADDR']);

		// reflect fact that user has logged in
		$this->logged_in = true;

		// setup cookies to remember login
		if ($subremember) {
			setcookie("cookname", $this->username, time()+COOKIE_EXPIRE, COOKIE_PATH);
			setcookie("cookid",   $this->userid,   time()+COOKIE_EXPIRE, COOKIE_PATH);
		}
	
		// login completed sucessfuly
		return "OK";
	}

	/**
	 * logout - Gets called when the user wants to be logged out of the
	 * website. It deletes any cookies that were stored on the users
	 * computer as a result of him wanting to be remembered, and also
	 * unsets session variables and demotes his user level to guest.
	 */
	function logout(){
		global $database;  //The database connection
		/**
		 * Delete cookies - the time must be in the past,
		 * so just negate what you added when creating the
		 * cookie.
		 */
		if(isset($_COOKIE['cookname']) && isset($_COOKIE['cookid'])){
			setcookie("cookname", "", time()-COOKIE_EXPIRE, COOKIE_PATH);
			setcookie("cookid",   "", time()-COOKIE_EXPIRE, COOKIE_PATH);
		}

		/* Unset PHP session variables */
		unset($_SESSION['username']);
		unset($_SESSION['userid']);

		/* Reflect fact that user has logged out */
		$this->logged_in = false;

		/**
		 * Remove from active users table and add to
		 * active guests tables.
		 */
		$database->removeActiveUser($this->username);
		#$database->addActiveGuest($_SERVER['REMOTE_ADDR'], $this->time);

		/* Set user level to guest */
		#$this->username  = GUEST_NAME;
		#$this->userlevel = GUEST_LEVEL;
	}

	

	/**
	 * Submit a new article, checking the paramters supplied.
	 *
	 * @param string $articletitle
	 * @param string $articlesummary
	 * @param string $articlecontent
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitArticle($articletitle, $articlesummary, $articlecontent) {
		global $database, $form, $mailer;  // the database, form and mailer object

		// article title error checking
		$field = "title";
		if (!$articletitle || strlen($articletitle = trim($articletitle)) == 0) {
			$form->setError($field, "An article title is required.");
		}

		// article summary error checking
		$field = "summary";
		if (!$articlesummary || strlen($articlesummary = trim($articlesummary)) == 0) {
			$form->setError($field, "An article summary is required.");
		}

		// article content error checking
		$field = "content";
		if (!$articlecontent || strlen($articlecontent = trim($articlecontent)) == 0) {
			$form->setError($field, "Article content is required.");
		}
		$articlecontent = nl2br(htmlentities($articlecontent));
		//$articlecontent = addslashes($articlecontent);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewArticle($this->username, $articletitle, $articlesummary, $articlecontent)) {
				$mailer->sendNotification("New article added by " . $this->username . ": " . $articletitle);
				return 0;      // new inactive article added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitArticle

	/**
	 * Submit a new tip, checking the paramters supplied.
	 *
	 * @param string $tiptitle
	 * @param string $tipsummary
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitTip($tiptitle, $tipsummary, $tipcontent) {
		global $database, $form, $mailer;  // the database, form and mailer object

		// tip title error checking
		$field = "title";
		if (!$tiptitle || strlen($tiptitle = trim($tiptitle)) == 0) {
			$form->setError($field, "A tip title is required.");
		}

		// tip summary error checking
		$field = "summary";
		if (!$tipsummary || strlen($tipsummary = trim($tipsummary)) == 0) {
			$form->setError($field, "A tip summary is required.");
		}
		$tipsummary = htmlentities($tipsummary);
		//$tipsummary = addslashes($tipsummary);

		// tip content error checking
		$field = "content";
		if (!$tipcontent || strlen($tipcontent = trim($tipcontent)) == 0) {
			$form->setError($field, "Tip content is required.");
		}

		$tipcontent = nl2br(htmlentities( $tipcontent));
		//$tipcontent = addslashes($tipcontent);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewTip($this->username, $tiptitle, $tipsummary, $tipcontent)) {
				$mailer->sendNotification("New tip added by " . $this->username . ": " . $tiptitle);
				return 0;      // new inactive tip added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitTip

	/**
	 * Submit a new glossary item, checking the paramters supplied.
	 *
	 * @param string $glosstitle
	 * @param string $glosssummary
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitGlossItem($glosstitle, $glosssummary){
		global $database, $form, $mailer;  // the database, form and mailer object

		// gloss title error checking
		$field = "title";
		if (!$glosstitle || strlen($glosstitle = trim($glosstitle)) == 0) {
			$form->setError($field, "A glossary term is required.");
		}

		// gloss summary error checking
		$field = "summary";
		if (!$glosssummary || strlen($glosssummary = trim($glosssummary)) == 0) {
			$form->setError($field, "A glossary definition is required.");
		}
		//$glosssummary = addslashes($glosssummary);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewGlossItem($this->username, $glosstitle, $glosssummary)) {
				return 0;      // new inactive glossary item added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitGlossItem

	/**
	 * Submit a new link, checking the parameters supplied.
	 *
	 * @param string $linktitle
	 * @param string $linkurl
	 * @param string $linksummary
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitLink($linktitle, $linkurl, $linksummary){
		global $database, $form, $mailer;  // the database, form and mailer object

		// link title error checking
		$field = "title";
		if (!$linktitle || strlen($linktitle = trim($linktitle)) == 0) {
			$form->setError($field, "A link title is required.");
		}

		// link email error checking
		$field = "url";
		if (!$linkurl || strlen($linkurl = trim($linkurl)) == 0) {
			$form->setError($field, "A link URL is required.");
		}
		$linkurl = stripslashes($linkurl);

		// link summary error checking
		$field = "summary";
		if (!$linksummary || strlen($linksummary = trim($linksummary)) == 0) {
			$form->setError($field, "A link summary is required.");
		}
		//$linksummary = addslashes($linksummary);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewLinkItem($this->username, $linktitle, $linkurl, $linksummary)) {
				$mailer->sendNotification("New link added by " . $this->username . ": " . $linktitle);
				return 0;      // new inactive link added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitLink

	/**
	 * Submit a new book, checking the parameters supplied.
	 *
	 * @param string $booktitle
	 * @param string $bookauthor
	 * @param string $bookurl
	 * @param string $booksummary
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitBook($booktitle, $bookauthor, $bookurl, $booksummary){
		global $database, $form, $mailer;  // the database, form and mailer object

		// book title error checking
		$field = "title";
		if (!$booktitle || strlen($booktitle = trim($booktitle)) == 0) {
			$form->setError($field, "A book title is required.");
		}

		// book author error checking
		$field = "author";
		if (!$bookauthor || strlen($bookauthor = trim($bookauthor)) == 0) {
			$form->setError($field, "A book author is required.");
		}

		// book url error checking
		$field = "url";
		if (!$bookurl || strlen($bookurl = trim($bookurl)) == 0) {
			$form->setError($field, "A book URL is required.");
		}
		$linkurl = stripslashes($bookurl);

		// book summary error checking
		$field = "summary";
		if (!$booksummary || strlen($booksummary = trim($booksummary)) == 0) {
			$form->setError($field, "A book summary is required.");
		}
		//$booksummary = addslashes($booksummary);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewBookItem($this->username, $booktitle, $bookauthor, $bookurl, $booksummary)) {
				$mailer->sendNotification("New book added by " . $this->username . ": " . $booktitle);
				return 0;      // new inactive book added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitBook
	
	/**
	 * Submit a new comment on a glossary item, checking the parameters supplied.
	 *
	 * @param string $glossid
	 * @param string $comment
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitGlossaryComment($glossid, $comment) {
		global $database, $form, $mailer;  // the database, form and mailer object

		// comment error checking
		$field = "comment";
		if (!$comment || strlen($comment = trim($comment)) == 0) {
			$form->setError($field, "A comment is required.");
		}
		$comment = nl2br(htmlentities($comment));
		//$comment = addslashes($comment);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewGlossaryComment($this->username, $glossid, $comment)) {
				$mailer->sendNotification("New glossary comment added by " . $this->username . ": " . $comment);
				return 0;      // new inactive comment added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitGlossaryComment

	/**
	 * Submit a new comment on a tip, checking the parameters supplied.
	 *
	 * @param string $tipid
	 * @param string $comment
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function submitTipComment($tipid, $comment) {
		global $database, $form, $mailer;  // the database, form and mailer object

		// comment error checking
		$field = "comment";
		if (!$comment || strlen($comment = trim($comment)) == 0) {
			$form->setError($field, "A comment is required.");
		}
		$comment = nl2br(htmlentities($comment));
		//$comment = addslashes($comment);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->addNewTipComment($this->username, $tipid, $comment)) {
				$mailer->sendNotification("New tip comment added by " . $this->username . ": " . $comment);
				return 0;      // new inactive comment added succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // submitTipComment

	/**
	 * Update an existing article, checking the paramters supplied.
	 *
	 * @param string $articletitle
	 * @param string $articlesummary
	 * @param string $articlecontent
	 * @return 0 if succesfull, 1 if form errors or 2 if submission failed
	 */
	function updateArticle($articleid, $articletitle, $articlesummary, 
		$articlecategory, $articledate, $articlestate, $articleauthor,
		$articlecontent) {
		global $database, $form, $mailer;  // the database, form and mailer object

		// article title error checking
		$field = "title";
		if (!$articletitle || strlen($articletitle = trim($articletitle)) == 0) {
			$form->setError($field, "An article title is required.");
		}

		// article summary error checking
		$field = "summary";
		if (!$articlesummary || strlen($articlesummary = trim($articlesummary)) == 0) {
			$form->setError($field, "An article summary is required.");
		}
		
		// article category error checking
		$field = "category";
		if (sizeof($articlecategory) < 1) {
			$form->setError($field, "At least one article category is required.");
		}
		
		// article date error checking
		$field = "date";
		if (!$articledate || strlen($articledate  = trim($articledate)) == 0) {
			$form->setError($field, "An article date is required.");
		}
		
		// article state error checking
		$field = "state";
		if (!$articlestate || strlen($articlestate  = trim($articlestate)) == 0) {
			$form->setError($field, "An article state is required.");
		}
		
		// article author error checking
		$field = "author";
		if (!$articleauthor || strlen($articleauthor  = trim($articleauthor)) == 0) {
			$form->setError($field, "An article author is required.");
		}

		// article content error checking
		$field = "content";
		if (!$articlecontent || strlen($articlecontent = trim($articlecontent)) == 0) {
			$form->setError($field, "Article content is required.");
		}
		//$articlecontent = nl2br(htmlentities($articlecontent));
		//$articlecontent = addslashes($articlecontent);

		// errors exist, have user correct them
		if ($form->num_errors > 0) {
			return 1;
		} else {
			if ($database->updateArticle($articleid, $articletitle, $articlesummary, 
				$articlecategory, $articledate, $articlestate, $articleauthor,
				$articlecontent)) {
				return 0;      // article updated succesfully
			} else {
				return 2;      // submission attempt failed
			}
		}
	} // updateArticle
	
	/**
	 * Attempts to edit the user's account information
	 * including the password, which it first makes sure is correct
	 * if entered, if so and the new password is in the right
	 * format, the change is made. All other fields are changed
	 * automatically.
	 *
	 * @param string $subcurpass
	 * @param string $subnewpass
	 * @param string $subemail
	 * @param string $subnewfirst
	 * @param string $subnewlast
	 * @return true if user is succesfully updated else false
	 */
	function editAccount($suboldusername, $subnewusername, $subcurpass, 
		$subnewpass, $subnewfirst, $subnewlast, $subemail){
		global $database, $form;

		$suboldusername = stripslashes($suboldusername);
		
		// new username entered as admin user
		if ($this->isAdmin()) {
			if ($subnewusername) {
				// username error checking
				$field = "username";
				// spruce up username, and check validity
				$subnewusername = stripslashes($subnewusername);
				if (strlen($subnewusername) < 5) {
					$form->setError($field, "Username is required to be 5 or more characters.");
				} else if (strlen($subnewusername) > 30) {
					$form->setError($field, "Username is required to be 30 characters or less.");
				} else if (!eregi("^([0-9a-z])+$", $subnewusername)) {
					$form->setError($field, "Username should contain alpha numeric characters only.");
				} else if (strcasecmp($subnewusername, GUEST_NAME) == 0) {
					$form->setError($field, "The Username is reserved.");
				} else if ($subnewusername != $suboldusername) {
					if ($database->usernameTaken($subnewusername)) {
						$form->setError($field, "The Username is already in use.");
					}
				} else if ($database->usernameBanned($subnewusername)) {
					$form->setError($field, "The Username contains a banned word.");
				}
			} else {
				$subusername = $this->username;
			}
		}
		
		// new password entered
		if ($subnewpass) {
			// current Password error checking
			$field = "curpass";  // use field name for current password
			if (!$subcurpass) {
				$form->setError($field, "The Current Password needs to be entered.");
			} else {
				// check if password too short or is not alphanumeric
				$subcurpass = stripslashes($subcurpass);
				if (strlen($subcurpass) < 4 ||
				!eregi("^([0-9a-z])+$", ($subcurpass = trim($subcurpass)))){
					$form->setError($field, "The Current Password is invalid.");
				}
				// password entered is incorrect
				if ($database->confirmUserPass($subusername,md5($subcurpass)) != 0) {
					$form->setError($field, "The Current Password is incorrect.");
				}
			}

			// new Password error checking
			$field = "newpass";  // use field name for new password
			// spruce up password and check length
			$subpass = stripslashes($subnewpass);
			if (strlen($subnewpass) < 4) {
				$form->setError($field, "The New Password is too short.");
			}
			// Check if password is not alphanumeric
			else if(!eregi("^([0-9a-z])+$", ($subnewpass = trim($subnewpass)))) {
				$form->setError($field, "The New Password is not alphanumeric.");
			}
		}
		// change password attempted
		else if($subcurpass){
			// New Password error reporting
			$field = "newpass";  // use field name for new password
			$form->setError($field, "A New Password has not been entered.");
		}

		// email error checking
		$field = "email";  // use field name for email
		if ($subemail && strlen($subemail = trim($subemail)) > 0) {
			// check if valid email address
			$regex = "^[_+a-z0-9-]+(\.[_+a-z0-9-]+)*"
			."@[a-z0-9-]+(\.[a-z0-9-]{1,})*"
			."\.([a-z]{2,}){1}$";
			if (!eregi($regex,$subemail)) {
				$form->setError($field, "The Email address is invalid.");
			}
			$subemail = stripslashes($subemail);
		}

		// errors exist, have user correct them */
		if ($form->num_errors > 0){
			return false;  // errors with form
		}
		
		if ($this->isAdmin()) {
			if ($subnewusername != $suboldusername) {
				$database->updateUserField($suboldusername, "username", $subnewusername);
			}
		}
		
		// update password since there were no errors
		if ($subcurpass && $subnewpass) {
			$database->updateUserField($subusername, "password", md5($subnewpass));
		}

		// change Email
		if ($subemail) {
			$database->updateUserField($subusername, "email", $subemail);
		}

		// change firstname
		if ($subnewfirst) {
			$database->updateUserField($subusername, "firstname", $subnewfirst);
		}

		// change lastname
		if ($subnewlast) {
			$database->updateUserField($subusername, "lastname", $subnewlast);
		}

		// success!
		return true;
	}
	
	/**
	 * isAdmin - Returns true if currently logged in user is
	 * an administrator, false otherwise.
	 */
	function isAdmin(){
		return ($this->userlevel == ADMIN_LEVEL ||
		$this->username  == ADMIN_NAME);
	}

	/**
	 * generateRandID - Generates a string made up of randomized
	 * letters (lower and upper case) and digits and returns
	 * the md5 hash of it to be used as a userid.
	 */
	function generateRandID(){
		return md5($this->generateRandStr(16));
	}

	/**
	 * generateRandStr - Generates a string made up of randomized
	 * letters (lower and upper case) and digits, the length
	 * is a specified parameter.
	 */
	function generateRandStr($length){
		$randstr = "";
		for($i=0; $i<$length; $i++){
			$randnum = mt_rand(0,61);
			if($randnum < 10){
				$randstr .= chr($randnum+48);
			}else if($randnum < 36){
				$randstr .= chr($randnum+55);
			}else{
				$randstr .= chr($randnum+61);
			}
		}
		return $randstr;
	}

	/**
	 * Display a dialog box for results
	 *
	 * @param string $title
	 * @param string $text
	 * @param string $referrer
	 */
	function displayDialog($title, $text, $referrer) {
$dialog =<<<EOD
<form id="dialogForm" action="$referrer" method="post">
    <fieldset style="width:350px; margin: 0px auto">   	

		<h2>$title</h2>
		
		<p>$text</p>
 									
		<!-- buttons and ajax processing -->
		<div>					
			<input type="submit" value="OK" id="submit"/>
		</div>
		
	</fieldset>
</form>		
EOD;
		echo $dialog;
	}
};


/**
 * Initialize session object - This must be initialized before
 * the form object because the form uses session variables,
 * which cannot be accessed unless the session has started.
 */
$session = new Session;

/* Initialize form object */
$form = new Form;

?>
