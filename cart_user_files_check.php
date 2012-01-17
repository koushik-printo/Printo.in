<?php
/*
Filename : cart_user_files.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Plupload for custom upload files
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

require('includes/utility/cart.php');
$cartutility_obj=new CartutilityAdapter();
$current_user_id=$_SESSION[sess_uid];

$session_id = session_id();


header("location:viewcart.php");

?>
