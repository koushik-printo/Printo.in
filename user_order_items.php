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
	
	/* Query String values */
	$current_order_id=$_GET[order_id];
	$current_cart_id=$_GET[cart_id];
	$current_user_id=$_SESSION[sess_uid];
	
require('includes/classes/orderitems_class.php');
$orderitems_obj=new OrderItemsAdapter();
 $query="select t1.*,t2.product_name,t3.template_base_name from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) left join templates as t3 on t1.template_id=t3.template_id where t1.cart_id='$current_cart_id'";
$orderItemsList=$orderitems_obj->getMultipleRecords($query);
$smarty->assign('orderItemsList',$orderItemsList);
//print_r($orderItemsList);
$smarty->assign('current_order_id',$current_cart_id);

$smarty->display('user_order_items.tpl');
?>
