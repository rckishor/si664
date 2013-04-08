<?php
require_once "db.php";
session_start();

if ( isset($_POST['title']) && isset($_POST['plays']) 
     && isset($_POST['rating'])) {
   $t = mysql_real_escape_string($_POST['title']);
   $p = mysql_real_escape_string($_POST['plays']);
   $r = mysql_real_escape_string($_POST['rating']);
   if ((is_numeric($p) == FALSE) || (is_numeric($r) == FALSE)){
        $_SESSION['error'] = 'Values for Plays and Rating must be numeric';
        header( 'Location: index.php' ) ;
        return;
    }
   if ( (is_numeric($p) == TRUE) && (is_numeric($r) == TRUE)) {
   $sql = "INSERT INTO tracks (title, playcount, ratinginfo) 
              VALUES ('$t', '$p', '$r')";
   mysql_query($sql);
   $_SESSION['success'] = 'Record Added';
   header( 'Location: index.php' ) ;
   return;
}
}
?>
<p>Add A New Track</p>
<form method="post">
<p>Title:
<input type="text" name="title"></p>
<p>Plays:
<input type="text" name="plays"></p>
<p>Rating:
<input type="text" name="rating"></p>
<p><input type="submit" value="Add New"/>
<a href="index.php">Cancel</a></p>
</form>

