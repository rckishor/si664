<?php
require_once "db.php";
session_start();

if ( isset($_POST['title']) && isset($_POST['plays']) 
     && isset($_POST['rating']) && isset($_POST['id']) ) {
    $t = mysql_real_escape_string($_POST['title']);
    $p = mysql_real_escape_string($_POST['plays']);
    $r = mysql_real_escape_string($_POST['rating']);
    $id = mysql_real_escape_string($_POST['id']);
    if ((is_numeric($p) == FALSE) || (is_numeric($r) == FALSE)){
        $_SESSION['error'] = 'Values for Plays and Rating must be numeric';
        header( 'Location: index.php' ) ;
        return;
    }
    if ( (is_numeric($p) == TRUE) && (is_numeric($r) == TRUE)) {
    
    $sql = "UPDATE tracks SET title='$t', playcount='$p',
              ratinginfo='$r' WHERE id='$id'"; 
    mysql_query($sql);
    $_SESSION['success'] = 'Record updated';
    header( 'Location: index.php' ) ;
    return;
}
}
$id = mysql_real_escape_string($_GET['id']);
$result = mysql_query("SELECT title, playcount, ratinginfo, id 
    FROM tracks WHERE id='$id'");
$row = mysql_fetch_row($result);
if ( $row == FALSE ) {
    $_SESSION['error'] = 'Bad value for id';
    header( 'Location: index.php' ) ;
    return;
}

$t = htmlentities($row[0]);
$p = htmlentities($row[1]);
$r = htmlentities($row[2]);
$id = htmlentities($row[3]);

echo <<< _END
<p>Edit Track</p>
<form method="post">
<p>Title:
<input type="text" name="title" value="$t"></p>
<p>Plays:
<input type="text" name="plays" value="$p"></p>
<p>Rating:
<input type="text" name="rating" value="$r"></p>
<input type="hidden" name="id" value="$id">
<p><input type="submit" value="Update"/>
<a href="index.php">Cancel</a></p>
</form>
_END
?>

