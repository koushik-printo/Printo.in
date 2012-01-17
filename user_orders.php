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
	
require('includes/classes/orders_class.php');
$orders_obj=new OrdersAdapter();
$query="select * from orders where user_id='$current_user_id' order by cart_id desc";
$ordersList=$orders_obj->getMultipleRecords($query);
$smarty->assign('ordersList',$ordersList);

$smarty->display('user_orders.tpl');
?>
