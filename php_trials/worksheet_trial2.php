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
echo "<form method = 'post'>";
$questions = mysql_query("SELECT id, question_desc FROM Worksheetquesmap WHERE worksheettype_id = '2'");
// $option = mysql_query ("SELECT options_desc FROM Quesansmap WHERE question_id = '8'");
// echo "<form method = "post">";
while ( $row = mysql_fetch_row($questions) ) {
    echo "<p><b>";
    echo($row[1]);
    echo "</b></p>";
    echo "<p>";
    $ques_ans = mysql_query ("SELECT id,options_desc,question_id
FROM Quesansmap
WHERE question_id ='$row[0]'");
    while ( $row1 = mysql_fetch_row($ques_ans) ) {
    echo ("<input type = 'checkbox' name ='$row[0]' value ='$row1[0]' >$row1[1]<br>");
    }
    echo("</p>\n");
}
echo "<p><input type = 'submit' Value = 'Submit'>";
echo "<a href=''>Cancel</a></p>";
echo "</form>";
?>