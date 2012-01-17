<?php
/*
Filename : newsletter_confirm.php
Author : Printo - Koushik
Table Name : orders
Functionality : Newsletter Confirm
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

/* post string values */
$cur_email=$_GET[em];

$query="select count(*) from newsletters where email='$cur_email'";
$rcount=$dbhelper_obj->recordCount($query);
if($rcount<=0)
{
$query="insert into newsletters(email,reg_date) values('$cur_email',now())";
$dbhelper_obj->executeQuery($query);
header("location:alert.php?act=newsletter_confirm");
} else {
header("location:alert.php?act=newsletter_exist");
}
?>