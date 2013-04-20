<?php
require_once "db.php";
session_start();


// Post Action for the adding new worksheet

if ( isset($_POST['siteid']) && isset($_POST['worksheettype']) && isset($_POST['wsname'])) {
   $s = mysql_real_escape_string($_POST['siteid']);
   $p = mysql_real_escape_string($_POST['worksheettype']);
   $a = mysql_real_escape_string ($_POST['wsname']); 
   $sql = "INSERT INTO Siteworksheets (community_name, site_id, worksheettype_id) 
              VALUES ('$a', '$s', '$p')";
   mysql_query($sql);
   $_SESSION['wssuccess'] = 'Worksheet Added';
   //$_SESSION['siteUID'] = $s;
   // $_SESSION['sitekey'] = $s;
   header( 'Location: sitereview.php') ;
   return;
}

// Error validation for the worksheets 

if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}

if ( isset($_SESSION['success']) ) {
    echo '<p style="color:green">'.$_SESSION['success']."</p>\n";
    unset($_SESSION['success']);
}

if ( isset($_SESSION['wsupdate']) ) {
    echo '<p style="color:green">'.$_SESSION['wsupdate']."</p>\n";
    unset($_SESSION['wsupdate']);
}

if ( isset($_SESSION['wssuccess']) ) {
    echo '<p style="color:green">'.$_SESSION['wssuccess']."</p>\n";
    unset($_SESSION['wssuccess']);
}
echo ('<h1> Site Details </h1>'."\n");
$site_key = $_SESSION['sitekey'];
//echo ("<p>$site_key</p>");
$result = mysql_query("SELECT id, site_name FROM Siteinfo WHERE site_name = '$site_key'");
$wsheets = mysql_query("SELECT * FROM Worksheettypes");
while ( $row = mysql_fetch_row($result) ) {
    echo("<h3> Site Name:<br>");
    // Displaying the details of the site
    echo(htmlentities($row[1]));
    echo("</h3>");
    echo("<p> Site ID:");
    echo(htmlentities($row[0]));
    echo("</p>");
    
    
    
////////////// Displaying all the worksheets that are already present for the site
    
    echo("<h4> Worksheets Added for the Site </h4>");
    echo '<table border="1">'."\n";
    $sitewsheets = mysql_query("SELECT id, site_id, community_name, worksheettype_id,score FROM Siteworksheets WHERE site_id ='$row[0]'");
    while ( $row1 = mysql_fetch_row($sitewsheets) ) {
        echo "<tr><td>";
        echo(htmlentities($row1[0]));
        echo("</td><td>");
        echo(htmlentities($row1[1]));
        echo("</td><td>\n");
        echo(htmlentities($row1[2]));
        echo("</td><td>\n");
        echo(htmlentities($row1[3]));
        echo("</td><td>\n");
        echo(htmlentities($row1[4]));
        echo("</td><td>\n");
        echo('<a href="addworksheet.php?swsid='.htmlentities($row1[0]).'&wstypeid='.htmlentities($row1[3]).'&siteuid='.htmlentities($row1[1]).'">Enter Details</a> / ');
        echo('<a href="viewworksheet.php?swsid='.htmlentities($row1[0]).'&wstypeid='.htmlentities($row1[3]).'&siteuid='.htmlentities($row1[1]).'">View Worksheet</a>');
        echo("</td></tr>\n");
}
echo '</table>';

// Adding new worksheets by selecting the type of worksheet and the 
echo("<h4> Add Worksheets:</h4>");
echo ("<p> Select the type of worksheet you want to add and also enter an alphabet/unique identifier in the name field. The name is automatically generated - WetlandA/ WetlandB etc</p>");
echo ("<form method='post'>");
echo("<select name ='worksheettype'>");
echo ("<option value=''>Select the woksheet type</option>");
// fetching the worksheet types from the database
while ( $row2 = mysql_fetch_row($wsheets)){
echo ("<option value='$row2[0]'>$row2[1]</option>");
}
echo("</select>");
echo ("<p>Worksheet Name:  <input type='text' name='wsname'></p>");
echo("<p><input type='submit' value='Add'/></p>");
echo("<input type='hidden' name='siteid' value='$row[0]'>");

echo("</form>");
///////////////////////////////////////////////////////////////////////////////////////////
}
?>   