<?php 
/*
Filename : user_login.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Login form
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Query string values */
$current_action=$_GET[act];

require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 
require('includes/classes/userprofiles_class.php'); 
require('includes/utility/triggers_utility.php'); 

require('validations/user_login_validation.php');

/* start Retrive values from cookies */
	if(isset($_COOKIE['cookname']) && isset($_COOKIE['cookpass'])){
	$smarty->assign('cur_user_email',$_COOKIE['cookname']);
	$smarty->assign('cur_user_password',$_COOKIE['cookpass']);
   }
/* end Retrive values from cookies */
   
//if($current_action=="cart")
$smarty->assign('actionmessage',$current_action);

$smarty->display('user_login.tpl');
?>
