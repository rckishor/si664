<?php
require_once "db.php";
session_start();

if ( isset($_POST['sitename']) && isset($_POST['parcelno']) && isset($_POST['acreage'])  
     && isset($_POST['city']) && isset($_POST['state']) && isset($_POST['zip'])) {
   $s = mysql_real_escape_string($_POST['sitename']);
   $p = mysql_real_escape_string($_POST['parcelno']);
   $a = mysql_real_escape_string ($_POST['acreage']);
   $ad = mysql_real_escape_string ($_POST['address']);
   $c = mysql_real_escape_string ($_POST['city']);
   $st = mysql_real_escape_string ($_POST['state']);
   $z = mysql_real_escape_string ($_POST['zip']); 
   $sql = "INSERT INTO Siteinfo (site_name, parcel_no, acreage, address, city, state, zip) 
              VALUES ('$s', '$p', '$a','$ad','$c','$st','$z')";
   mysql_query($sql);
   $_SESSION['success'] = 'Site Added';
   $_SESSION['sitekey'] = $s;
   header( 'Location: sitereview.php') ;
   return;
}
?>
<h1>Add A New Site</h1>
<h2>Site Information</h2>
<form method="post">
<p>Site Name:
<input type="text" name="sitename"></p>
<p>Parcel Number:
<input type="text" name="parcelno"></p>
<p>Acreage:
<input type="text" name="acreage"></p>
<p>Address:
<input type="text" name="address"></p>
<p>City:
<input type="text" name="city"></p>
<p>State:
<input type="text" name="state"></p>
<p>Zip:
<input type="text" name="zip"></p>
<p><input type="submit" value="Save"/>
<a href="index.php">Cancel</a></p>
</form>

