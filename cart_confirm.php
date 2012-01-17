<?php 
/*
Filename : cart_confirm.php
Author : Printo - Koushik
Table Name : cart related tables
Functionality : confirm cart items and proceed to payment
*/

require('includes/inc.php');
require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php');
require('includes/utility/cart.php'); 
require('includes/utility/coupons_utility.php');

/* current session id */
$session_id = session_id();

/* cart Info */
require('includes/classes/cart_class.php');
$cart_obj=new CartAdapter();
$query="select * from cart where session_id='$session_id'";
 $cartList=$cart_obj->getSingleRecord($query);



$smarty->assign("cartDetails",$cartList);

$cart_id=$cartList['cartid'];
$billing_id=$cartList['billingid'];
$shipping_id=$cartList['shippingid'];

/* product Info */
require('includes/classes/cartitems_class.php');
$cartutility_obj=new CartutilityAdapter();
//$query="select * from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) where t1.cart_id='$cart_id'";
$query="select * from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) where t1.cart_id='$cart_id'";
$cartitemsList=$cartutility_obj->getcartitems($query);
$smarty->assign("cartitemsList",$cartitemsList);

require('validations/cart_confirm_validation.php');


/* cart Billing Info */
require('includes/classes/cartbilling_class.php');
$cartbilling_obj=new CartBillingAdapter();
$query="select * from cart_billing where billing_id='$billing_id'";
$cartBillingList=$cartbilling_obj->getSingleRecord($query);

/* cart Billing state Info */
$b_state_id=$cartBillingList['stateid'];
require('includes/classes/state_class.php');
$state_obj=new StateAdapter();
$query="select * from state where state_id='$b_state_id'";
$BillingState=$state_obj->getSingleRecord($query);
//print "bill".$BillingState['statename'];
if($BillingState['statename']=="")
	$BillingStateVal=$cartBillingList['stateid'];	
else
	$BillingStateVal=$BillingState['statename'];

/* cart Shipping Info */
require('includes/classes/cartshipping_class.php');
$cartshipping_obj=new CartShippingAdapter();
$query="select * from cart_shipping where shipping_id='$shipping_id'";
$cartShippingList=$cartshipping_obj->getSingleRecord($query);
//print_r($cartList);
/* cart Shipping state Info */
$s_state_id=$cartShippingList['stateid'];
$query="select * from state where state_id='$s_state_id'";
$ShippingState=$state_obj->getSingleRecord($query);
//print "ship".$ShippingState['statename'];
if($ShippingState['statename']=="")
	$ShippingStateVal=$cartShippingList['stateid'];	
else
	$ShippingStateVal=$ShippingState['statename'];	


$shippingVat=$ShippingState['vatpercentage'];
$smarty->assign('shippingVat',$shippingVat);
//************** For EBS Form ************//
  
  $smarty->assign('cur_account_id','7494');
  $smarty->assign('cur_return_url','http://www.printo.in/ebs_order_success.php?DR={DR}');
  if($cartBillingList['emailid']=="dev@printo.in")
  $smarty->assign('cur_mode','TEST');
  else
  $smarty->assign('cur_mode','LIVE');
  $smarty->assign('cur_reference_no',$cart_id);
  $smarty->assign('cur_amount',$cartList['finalprice']);
  $smarty->assign('sub_total',$cartList['finalprice']);
  $smarty->assign('taxAmount',$cartList['taxamount']);
  /*$taxAmount = ($cartList['totalprice'] * $shippingVat/100);
  $smarty->assign('taxAmount',$taxAmount);
  $vatamount= $cartList['totalprice'] +($cartList['totalprice'] * $shippingVat/100);
  $smarty->assign('cur_amount',$vatamount);
  $smarty->assign('vatamount',$vatamount);*/
  $smarty->assign('cur_description','Printo - One Stop Printing');
 //print_r($cartBillingList);
  $bill_name=$cartBillingList['billingfname']." ".$cartBillingList['billinglname'];
  $smarty->assign('cur_name',$bill_name);
  $smarty->assign('cur_address',$cartBillingList['billingaddress1']." ". $cartBillingList['billingaddress2']);
  $smarty->assign('cur_city',$cartBillingList['city']);
  $smarty->assign('cur_state',$BillingStateVal);
  $smarty->assign('cur_postal_code',$cartBillingList['zipcode']);
  $smarty->assign('cur_country','IND');
  $smarty->assign('cur_email',$cartBillingList['emailid']);
  $smarty->assign('cur_phone',$cartBillingList['phone']);
  
  $ship_name=$cartShippingList['shippingfname']." ".$cartShippingList['shippinglname'];
  //print_r($cartShippingList);
  $smarty->assign('cur_ship_name',$ship_name);
  $smarty->assign('cur_ship_address',$cartShippingList['shippingaddress1']." ".$cartShippingList['shippingaddress2']);
  $smarty->assign('cur_ship_city',$cartShippingList['city']);
  $smarty->assign('cur_ship_state',$ShippingStateVal);
  $smarty->assign('cur_ship_postal_code',$cartShippingList['zipcode']);
  $smarty->assign('cur_ship_country','IND');
  $smarty->assign('cur_ship_phone',$cartShippingList['phone']);
  
  /* End of EBS Form *********** */
$smarty->display('cart_confirm.tpl');
?>
