<?php 
/*
Filename : forgot_password.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Forgot password
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Query string values */
$current_action=$_GET[act];

require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 
require('includes/classes/userprofile_class.php'); 
require('includes/utility/triggers_utility.php'); 

require('validations/forgot_password_validation.php');

if($current_action=="cart")
$smarty->assign('actionmessage','cart');

$smarty->display('forgot_password.tpl');
?>
