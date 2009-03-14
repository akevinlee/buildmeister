<?php

include_once("common.inc");
include_once("session.php");

// get details of article and add to HTML header
if (isset($_GET['id'])) {
	$aid = $database->clean_data($_GET['id']);
	$html_head_title = $database->getArticleTitle($aid);
	$html_head_description = $database->getArticleSummary($aid);
	$html_head_keywords = $database->getArticleCategories($aid);
} else if (isset($_GET['title'])) {
	$atitle_unformatted = $database->clean_data($_GET['title']);
	$atitle = str_replace("_", " ", $atitle_unformatted);
	$aid = $database->getArticleIdByTitle($atitle);
	$html_head_title = $database->getArticleTitle($aid);
	$html_head_description = $database->getArticleSummary($aid);
	$html_head_keywords = $database->getArticleCategories($aid);
}

include_once("fckeditor/fckeditor.php");
include_once("header.inc");

// do we have an article id?
if (!isset($_GET['id']) && !isset($_GET['title'])) {
    $session->displayDialog("No Article Specified",
    	"No article has been specified, please select an article on the "
        . "<b>articles</b> page to see its content.",
        SITE_BASEDIR . "/pages/articles/");
// does the article exist?	        
} else if (!$database->articleExists($aid)) {
	$session->displayDialog("Article Does Not Exist",
    	"The specified article does not exist, please select an article on the "
    	. "<b>articles</b> page to see its content.",
        SITE_BASEDIR . "/pages/articles/");		        	        
} else {
    $currentid = $aid;
	    
    // update view count
    if (!$session->isAdmin()) {
    	$database->updateArticleViews($currentid);
    }
    
    // should we show comments and comment form
    $show_comments = true;
	    
    // fetch article content
    echo "<div id='article'>\n";       
        
    $article_sql = "SELECT id, title, posted_by, DATE_FORMAT(date_posted, \"%M %D, %Y\")"
   		. " as newdate, DATE_FORMAT(date_updated, \"%M %D, %Y\") as updated, "
    	. "content, state from " . TBL_ARTICLES . " where id = " . $currentid;
        
    if ($result = mysqli_query($database->getConnection(), $article_sql)) {
		$row = mysqli_fetch_assoc($result);

		echo "<h1 id='title'>" . $row['title'] . "</h1>\n";
		
		echo "<div id='comment'><div class='odd'>\n";
		
   		// has the article been published?
    	if ($row['state'] != PUBLISHED_STATE) {
    		// NO, just display message 
    		echo "<p style='align:center' class='error'>This article has not yet been published.</p>";
    		$show_comments = false;
    	}

    	// show the article if unpublished and admin
    	if ($row['state'] == PUBLISHED_STATE || $session->isAdmin()) {
   			// display article
   			echo "<p class='header'>Posted by <a href='"
   				. REWRITE_PREFIX . "/users/" . $row['posted_by'] 
    			. "'>" . $row['posted_by'] . "</a> on " . $row['newdate'];
    		if (strcmp($row['updated'], "") != 0) {
    			echo ", last updated on " . $row['updated'];
    		}

    		// display edit and delete links
   			if ($session->isAdmin()) {
   				echo "<small> | <a href='edit.php?id=" . $row['id'] . "'>Edit</a>";
				echo " | <a href='article.delete.php?id=" . $row['id'] . "'"
					. "onclick=\"return confirm('Are you sure you want to delete this article?')\""
					. ">Delete</a>";
       		}

       		echo "</small></p>\n";
	       	echo "<p>";
			echo "Filed under:&nbsp;\n";
  					
			// get categories for entry
			$cat_sql = "select a.cat_id, c.name from " . TBL_ARTICLE_CATEGORIES . " a, " 
				. TBL_CATEGORIES . " c where a.article_id = " . $row['id'] . " AND a.cat_id = c.id;";
			if ($cat_result = mysqli_query($database->getConnection(), $cat_sql)) {
				if (mysqli_num_rows($cat_result) == 0) {
   					echo "Uncategorized"; 
   				} else {
					while ($cat_row = mysqli_fetch_assoc($cat_result)) {
						$cname = strtolower(str_replace(" ", "_", $cat_row['name']));
	    				echo "<a class=\"labels\" href=\"" . REWRITE_PREFIX
	    					. "/categories/" . $cname . "\">" 
	    					. $cat_row['name'] . "</a>&nbsp;\n";
					}
   				}
				// free result set
    			mysqli_free_result($cat_result);
			} 
								
    		// fetch number of comments
   			$comment_sql = "SELECT COUNT(id) from " . TBL_ARTCOM . " where state = 1 AND art_id = ". $currentid;
   			if ($comment_result = mysqli_query($database->getConnection(), $comment_sql)) {
   				if (mysqli_num_rows($comment_result) == 0) {
   					echo "&nbsp;|&nbsp;There are <a href='#comments'>no comments</a> on this article.</p>"; 
   				} else {
   					$comment_row = mysqli_fetch_row($comment_result);
   					echo " | There are <a href='#comments'>" 
   						. $comment_row[0] . " comments</a> on this article.</p>";
   				}
   			}
   			// free result set
    		mysqli_free_result($comment_result);

    		echo "</div></div>\n";
    		
			echo htmlspecialchars_decode($row['content']);  															
    	}
    	
    	// free result set
    	mysqli_free_result($result);
	}
	    
    // TODO: rate article

	// display comments and comment form
	if ($show_comments) {
		echo "<a id='comments' href=''></a>";
		
		echo "<div id='comment'>\n";
	   	echo "<h3 class='sub'>Comments</h3>\n";

	   	// fetch comments
   		$comment_sql = "SELECT id, posted_by, comment, DATE_FORMAT(date_posted, \"%M %D, %Y\") " .
       		"as newdate, website from " . TBL_ARTCOM . " where state = 1 AND art_id = ". $currentid . 
       		" ORDER BY date_posted DESC;";
   		if ($result = mysqli_query($database->getConnection(), $comment_sql)) {
   			if (mysqli_num_rows($result) == 0) {
   				echo "<p>There are no comments on this article.</p>"; 
   			} else {
       			$current_row = 0;
       			while ($comment_row = mysqli_fetch_assoc($result)) {
           			if (($current_row++ % 2) == 0) {
	      	     		echo "<div class='even'>";
    	 	      	} else {
        		   		echo "<div class='odd'>";
          	 		}
          	 		if ($comment_row['website'] != "") {
          		  		echo "<p class='header'>Posted by <a href='http://" . $comment_row['website']
          		  			. "'>" . $comment_row['posted_by'] . "</a>";
          	 		} else {
          	 			echo "<p class='header'>Posted by <b>". $comment_row['posted_by'] . "</b>";
          	 		}
 		    		
					// display edit and delete links 		    		
            		if ($session->isAdmin()) {
        				echo "<small> | <a href='comment.delete.php?aid=$currentid&cid=" 
        					. $comment_row['id'] . "'"
							. "onclick=\"return confirm('Are you sure you want to delete this comment?')\""
							. ">Delete</a>";					
        			}	
        		
         	   		echo "</small></p>";
            		echo "<p>" . htmlspecialchars_decode($comment_row['comment']) . "</p>";
            		echo "<p class='footer'>Posted on " . $comment_row['newdate']. "</p>";
            		echo "</div>";
        		}
   			}
        	
        	// free result set
    		mysqli_free_result($result);
    	}     	
?>

<a id="submitcomment" href=""></a>

<h3 class="sub">Submit a new comment</h3>  

<form id="commentForm" action="<?php echo SITE_BASEDIR . "/pages/articles/comment.submit.php" ?>" method="post">
	<fieldset style="width:650px; margin: 0px auto">
		
		<!-- ajax submit response -->
		<div id="response">
			All fields in <b>bold</b> are required.
		</div>
		
		<!-- name -->
		<div>
			<label class="required" accesskey="N" for="name">Name:</label>
       		<input type="text" name="name" maxlength="50" id="name" class="txt"
<?php
		if ($session->logged_in) {
			echo "value='" . $session->userinfo['firstname'] . " "
				. $session->userinfo['lastname'] . "'";
		} 
?>       		
       		>
       	</div>
       	
       	<!-- email -->
		<div>
			<label accesskey="w" for="website">Website:</label>
			<input type="text" name="website" maxlength="50" id="website" 
			 style="width:250px" class="txt"
<?php
		if ($session->logged_in) {
			echo "value='" . $session->userinfo['website'] . "'";
		} 
?> 			
			>
		</div>
		
		<!-- comment -->
		<div>
			<label class="required" accesskey="C" for="comment">Comment:</label>
			<span id="fckeditor">
<?php

$oFCKeditor = new FCKeditor('commentText') ;
$oFCKeditor->BasePath = SITE_BASEDIR . '/include/fckeditor/' ;
$oFCKeditor->Height = '200';
$oFCKeditor->Width = '500';
$oFCKeditor->EditorAreaCSS = SITE_BASEDIR . '/stylesheets/article.css' ;
$oFCKeditor->ToolbarSet = 'Basic';
$oFCKeditor->Config['LinkBrowser'] = 'false';
$oFCKeditor->Config['LinkUpload'] = 'false';
$oFCKeditor->Value = 'Enter your comment here...';
$oFCKeditor->Create();

?>			
			</span>	

		</div>
			
		<!-- catchpa -->
		<div>
			<label for="kludge"><!-- empty --></label>
			<img class="txt" id="catchpa" 
				src="<?php echo SITE_PREFIX . "/include/securimage/securimage_show.php" ?>" alt="CAPTCHA Image" />
			<a href="" id="reload" class="txt">Reload Image</a>				
		</div>
		<div>
			<label class="required" accesskey="p" for="captchpaText">Catchpa:</label>					    
			<input class="txt" type="text" maxlength="4" name="catchpa_text" 
				id="catchpaText" style="width:50px">			
		</div>
						
		<!-- buttons and ajax processing -->
		<div>		
			<label for="kludge"><!-- empty --></label>
			<input type="submit" value="Submit Comment" id="submit" class="btn"/>
			&nbsp;
			<span id="waiting" style="visibility: hidden">			
				<img align="absmiddle" src="<?php echo SITE_PREFIX; ?>/images/spinner.gif"/>
				&nbsp;<strong>Processing...<strong>
			</span>	
		</div>
		
		<div>
			<!-- id of the article -->
			<input type="hidden" name="article_id" id="articleId" 
				value="<?php echo $currentid; ?>"/>
			<!-- title of the article -->
			<input type="hidden" name="article_title" id="articleTitle" 
				value="<?php echo $atitle_unformatted; ?>"/>				
		</div>

	</fieldset>
</form>

</div>

<?php
				
		}     
		
		echo "</div>\n";
    }
    
include_once("footer.inc");

?>
