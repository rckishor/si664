<?php
require_once "db.php";
session_start();
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
if ( isset($_SESSION['success']) ) {
    echo '<p style="color:green">'.$_SESSION['success']."</p>\n";
    unset($_SESSION['success']);
}
echo "<h1> Wetlands Worksheet </h1>";
$questions = mysql_query("SELECT id, question_desc FROM Worksheetquesmap WHERE worksheettype_id = '2'");
// $option = mysql_query ("SELECT options_desc FROM Quesansmap WHERE question_id = '8'");
$ques_option = mysql_query("SELECT Worksheetquesmap.id, Quesansmap.options_desc, Quesansmap.id
FROM Worksheetquesmap
JOIN Quesansmap
ON Worksheetquesmap.worksheettype_id = '2' AND Worksheetquesmap.id =Quesansmap.question_id");
// echo "<form method = "post">";
while ( $row = mysql_fetch_row($questions) ) {
    echo "<p><b>";
    echo($row[1]);
    echo "</b>";
    echo "<ul>";
    while ( $row1 = mysql_fetch_row($ques_option) ) {
    if ($row1[0] == $row[0]) {
    echo "<li>";
    echo ($row1[1]);
    echo ($row1[2]);
    echo "</li>";
    }
    }
    echo "</ul>";
    echo("</p>\n");
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
<a href="add.php">Add New</a>