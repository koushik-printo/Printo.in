<?php 
/*
Filename : user_changepassword.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Change Password form
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Login Security */
	include_once "includes/security.php";
	$secure_obj=new SceurityAdapter();
	$secure_obj->checkUserLogin();
	
require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 

require('validations/user_changepassword_validation.php');

if($_GET[act]=="suc")
$smarty->assign('action_message',"Password has been changed");

$smarty->display('user_changepassword.tpl');
?>
