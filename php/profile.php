<?php
session_start();
require "dbconfig.php";
$dprofile = $_REQUEST["Ch"];
print_r($dprofile);
// $na  = $_POST['NAME'];
// $una = $_POST['UNAME'];
// $adr = $_POST['ADDR'];
// $em = $_POST['EMAIL'];
// $pinc = $_POST['PINCODE'];

// move_uploaded_file($dprofile['tmp_name'], "media/profile_photos/" . $dprofile['name']);
// $umg = $dprofile['name'];
// $uimg = "media/profile_photos" . "$umg";
// $qry = "UPDATE user SET Profile_photo = '$uimg' WHERE user_name ='" . $_SESSION['username'] . "' ";
// mysqli_query($con, $qry);
