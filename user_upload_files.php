<?php 
/*
Filename : user_profile.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Profile form
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Login Security */
	include_once "includes/security.php";
	$secure_obj=new SceurityAdapter();
	$secure_obj->checkUserLogin();
	
	$current_user_id=$_SESSION[sess_uid];

$smarty->display('user_upload_files.tpl');
?>
