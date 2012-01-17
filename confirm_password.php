<?php 
/*
Filename : confirm_password.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Confirm Password
*/
require('includes/inc.php');  // main settings like smarty, database,....

require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 
require('includes/classes/userprofiles_class.php'); 
require('includes/utility/triggers_utility.php'); 

/* Query string values */
$get_link_id=$_GET['id'];

$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility
$recCount=$dbhelper_obj->recordCount("select count(*) from user_profiles where reset_link='$get_link_id'");
if($recCount<=0)
{
header("location:alert.php?act=fcancel");
} else {
$userprofile_obj=new UserProfilesAdapter(); // Create object for user's profile calss
$userInfo=$userprofile_obj->getSingleRecord("select * from user_profiles where reset_link='$get_link_id'");

$today=date("Y-m-d h:i:s");
$validation_obj=new ValidationAdapter(); // Create object for form validation
$compare_time=$validation_obj->getdays($today,$userInfo['resetgenerateddate']);

if($compare_time>48)
{
header("location:alert.php?act=fdate");
} else {

$current_user_id=$userInfo['userid'];

require('validations/confirm_password_validation.php');

$smarty->assign('current_user_id',$current_user_id);

$smarty->display('confirm_password.tpl');
} // end of days calculation
} // end of count calculation
?>
