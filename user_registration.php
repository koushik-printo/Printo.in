<?php 
/*
Filename : user_registration.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Regisration form
*/
require('includes/inc.php');  // main settings like smarty, database,....

require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 
require('includes/utility/triggers_utility.php'); 

require('validations/user_registration_validation.php');

$smarty->display('user_registration.tpl');
?>