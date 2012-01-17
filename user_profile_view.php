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
	
require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 
require('validations/user_profile_validation.php');

$smarty->display('user_profile_view.tpl');
?>
