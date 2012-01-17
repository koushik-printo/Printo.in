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
require('includes/classes/userprofile_class.php'); 
require('includes/utility/triggers_utility.php'); 

/* Query string values */
$get_mem_id=$_GET[id];

$validation_obj=new ValidationAdapter(); // Create object for form validation
$current_user_id=$validation_obj->decrypt($get_mem_id,"PRINTO");

require('validations/confirm_password_validation.php');

$smarty->assign('current_user_id',$current_user_id);

$smarty->display('confirm_password_validation.tpl');
?>
<script type="text/javascript">
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
</script>