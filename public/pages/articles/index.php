<?php

include_once("common.inc");
include_once("header.inc");

?>

<div id="article">

	<div id="toptitle">
		<h2>Articles</h2>
	</div>

	<div id="introductory">
		<p>This page lists all of the articles that are contained on this site. We are always
		looking for new articles, if you have an idea for an article or have written some content 
		yourself that you would like to shared, then please <a href="../contact/">contact us</a> 
		for more information. </p>
	</div>

<?php
	// fetch all published articles
	$sql = "SELECT id, title, posted_by, DATE_FORMAT(date_posted, \"%M %D, %Y\")"
    	. " as newdate, summary from " . TBL_ARTICLES . " where state = "
		. PUBLISHED_STATE . " ORDER BY date_posted DESC;";

	if ($result = mysqli_query($database->getConnection(), $sql)) {		
		while ($row = mysqli_fetch_assoc($result)) {
			$atitle = strtolower(str_replace(" ", "_", $row['title']));
			echo "<div id='splitlist'><strong><a href='" . $atitle . "'>"
 		    	. $row['title'] . "</a></strong><br/>"
 		    	. "<small>Posted by <a href='"
 		    	. "/users/" . $row['posted_by'] 
 		    	. "'>" . $row['posted_by'] . "</a> on "
 		    	. $row['newdate'];			 
 		    echo "</small><br/>" . $row['summary'] . "</div>";
    	}
    	// free result set
    	mysqli_free_result($result);
	}

?>

</div>

<?php
include_once("footer.inc");
?>
