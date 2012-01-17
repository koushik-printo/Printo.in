<?php 
/*
Filename : user_login.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Login form
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Login Security */
	include_once "includes/security.php";
	$secure_obj=new SceurityAdapter();
	$secure_obj->checkUserLogin();
	
	/* get User Details */
require('includes/classes/userprofile_class.php'); 
$userprofile_obj=new UserProfileAdapter();
$query="select * from user_profiles where user_id='$_SESSION[sess_uid]'";
$userProfileList=$userprofile_obj->getSingleRecord($query);
$smarty->assign('userProfileDetails',$userProfileList);
	
$smarty->display('user_dashboard.tpl');
?>
