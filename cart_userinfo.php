<?php 
/*
Filename : cart_userinfo.php
Author : Printo - Koushik
Table Name : cart,users,cart_billing and cart_shipping
Functionality : User details for shopping cart
*/
require('includes/inc.php');  // main settings like smarty, database,....

$session_id = session_id();
$current_user_id= $_SESSION['sess_uid'];
$get_use=$_GET['use'];

require('includes/classes/cart_class.php'); 
require('includes/classes/cartbilling_class.php'); 
require('includes/classes/cartshipping_class.php'); 
require('includes/classes/userprofiles_class.php'); 
require('includes/utility/cart.php');  
require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/pincodes_utility.php'); 
require('includes/classes/orders_class.php'); 

require('includes/utility/cart_uploads_utility.php'); 
$cartuplaodutility_obj=new CartUploadsUtilityAdapter();
$cartuplaodutility_obj->moveuserfiles($session_id,$current_user_id);

require('validations/cart_userinfo_validation.php');


require('includes/classes/state_class.php'); 
$state_obj=new StateAdapter();
$query="select * from state";
$stateList=$state_obj->getMultipleRecords($query);
$smarty->assign("stateList",$stateList);

$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

if($get_use==1 && $current_user_id!="")
{
	$order_sql="select * from orders where user_id='$current_user_id' order by order_id desc limit 0,1";
	$orders_obj=new OrdersAdapter(); // Create object for shipping
$ordersList=$orders_obj->getSingleRecord($order_sql);
//print_r($ordersList);
$smarty->assign('cur_billing_email',$ordersList['billingemail']);
$smarty->assign('cur_billing_fname',$ordersList['billingfname']);
$smarty->assign('cur_billing_lname',$ordersList['billinglname']);
$smarty->assign('cur_billing_address1',$ordersList['billingaddress1']);
$smarty->assign('cur_billing_address2',$ordersList['billingaddress2']);
$smarty->assign('cur_billing_city',$ordersList['billingcity']);
$smarty->assign('cur_billing_state',$ordersList['billingstate']);
$smarty->assign('cur_billing_country',$ordersList['billingcountry']);
$smarty->assign('cur_billing_pincode',$ordersList['billingzipcode']);
$smarty->assign('cur_billing_area',$ordersList['billingarea']);
$smarty->assign('cur_billing_phone',$ordersList['billingphone']);

$smarty->assign('cur_shipping_email',$ordersList['shippingemail']);
$smarty->assign('cur_shipping_fname',$ordersList['shippingfname']);
$smarty->assign('cur_shipping_lname',$ordersList['shippinglname']);
$smarty->assign('cur_shipping_address1',$ordersList['shippingaddress1']);
$smarty->assign('cur_shipping_address2',$ordersList['shippingaddress2']);
$smarty->assign('cur_shipping_city',$ordersList['shippingcity']);
$smarty->assign('cur_shipping_state',$ordersList['shippingstate']);
$smarty->assign('cur_shipping_country',$ordersList['shippingcountry']);
$smarty->assign('cur_shipping_pincode',$ordersList['shippingzipcode']);
$smarty->assign('cur_shipping_area',$ordersList['shippingarea']);
$smarty->assign('cur_shipping_phone',$ordersList['shippingphone']);

} 
$sql="select DropDownValue,DropDownDisplay from printo_outlet where Deleteflag='N'";
//while(mysql_fetch_assoc(mysql_query($sql)))
$smarty->assign('myServeOptions', array(
												'NO' => '-- Please Select One --',	
												'BEL' => 'BEL Road',
												'BRG' => 'Brigade Road',
												'EC1' => 'Electronic City',
												'EC1' => 'Electronic City - Infosys',
												'HSR' => 'HSR Layout',
												'INR' => 'Indiranagar',
												'ODI' => 'Indiranagar (inside Office Depot)',
												'ODJ' => 'Jayanagar - Inside Office Depot',
												'JN2' => 'Jayanagar 3rd Block',
												'JN1' => 'Jayanagar 9th Block',
												'kr1' => 'Koramangala 60ft road',
												'kr2' => 'Koramangala NGV',
												'MLM' => 'Malleshwaram',
												'ODM' => 'Mantri Square Mall',
												'APR' => 'Old Airport Road',
												'WHF' => 'Whitefield')
												);
$smarty->assign('myServeSelect', 'NO'); 

$order_exist="select count(*) from orders where user_id='$current_user_id'";
$record_count=$dbhelper_obj->recordCount($order_exist);
if($record_count>=1)
$smarty->assign("uselast","Yes");
else
$smarty->assign("uselast","No");

$smarty->display('cart_userinfo.tpl');
?>
