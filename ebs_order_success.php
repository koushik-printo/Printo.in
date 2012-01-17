<?php

/*
Filename    : ebs_order_success.php
Author      : Aikya 
Description : Main souce file for success payment
Contains    : Configuration files, Database queries
Location    : Root Folder
*/
require('includes/inc.php');

 $secret_key = "16c2ae984543eb9805fd4926019d8e0a";	 // Your Secret Key
if(isset($_GET['DR'])) {
	 require('includes/Rc43.php');
	 $DR = preg_replace("/\s/","+",$_GET['DR']);

	 $rc4 = new Crypt_RC4($secret_key);
 	 $QueryString = base64_decode($DR);
	 $rc4->decrypt($QueryString);
	 $QueryString = split('&',$QueryString);

	 $response = array();
	 foreach($QueryString as $param){
	 	$param = split('=',$param);
		$response[$param[0]] = urldecode($param[1]);
	 }
}


foreach( $response as $key => $value) {

if($key=="ResponseCode")
$ebs_ResponseCode=$value;
if($key=="ResponseMessage")
$ebs_ResponseMessage=$value;
if($key=="DateCreated")
$ebs_DateCreated=$value;
if($key=="PaymentID")
$ebs_PaymentID=$value;
if($key=="MerchantRefNo")
$ebs_MerchantRefNo=$value;
if($key=="Amount")
$ebs_Amount=$value;
if($key=="Mode")
$ebs_Mode=$value;
if($key=="BillingName")
$ebs_BillingName=$value;
if($key=="BillingAddress")
$ebs_BillingAddress=$value;
if($key=="BillingCity")
$ebs_BillingCity=$value;
if($key=="BillingState")
$ebs_BillingState=$value;
if($key=="BillingPostalCode")
$ebs_BillingPostalCode=$value;
if($key=="BillingCountry")
$ebs_BillingCountry=$value;
if($key=="BillingPhone")
$ebs_BillingPhone=$value;
if($key=="BillingEmail")
$ebs_BillingEmail=$value;
if($key=="DeliveryName")
$ebs_DeliveryName=$value;
if($key=="DeliveryAddress")
$ebs_DeliveryAddress=$value;
if($key=="DeliveryCity")
$ebs_DeliveryCity=$value;
if($key=="DeliveryState")
$ebs_DeliveryState=$value;
if($key=="DeliveryPostalCode")
$ebs_DeliveryPostalCode=$value;
if($key=="DeliveryCountry")
$ebs_DeliveryCountry=$value;
if($key=="DeliveryPhone")
$ebs_DeliveryPhone=$value;
if($key=="Description")
$ebs_Description=$value;
if($key=="IsFlagged")
$ebs_IsFlagged=$value;
if($key=="TransactionID")
$ebs_TransactionID=$value;

}


if($ebs_ResponseCode==0)
{
$current_cart_id=$ebs_MerchantRefNo;

require('includes/utility/db_helper.php'); 
$dbhelper_obj=new DbHelperAdapter(); 

require('includes/classes/cart_class.php');
require('includes/classes/cartitems_class.php');
require('includes/classes/cartbilling_class.php');
require('includes/classes/cartshipping_class.php');
require('includes/classes/coupons_class.php');
require('includes/utility/triggers_utility.php'); 
require('includes/utility/orders_utility.php'); 
require('includes/classes/products_class.php');
require('includes/classes/state_class.php'); 

$cart_obj=new CartAdapter();
$query="select * from cart where cart_id='$current_cart_id'";
$cartDetails=$cart_obj->getSingleRecord($query);

$coupon_id=$cartDetails['couponid'];
$current_billing_id=$cartDetails['billingid'];
$current_shipping_id=$cartDetails['shippingid'];


$cartbilling_obj=new CartBillingAdapter();
$query="select * from cart_billing where billing_id='$current_billing_id'";
$cartBillingDetails=$cartbilling_obj->getSingleRecord($query);

$cartshipping_obj=new CartShippingAdapter();
$query="select * from cart_shipping where shipping_id='$current_shipping_id'";
$cartShippingDetails=$cartshipping_obj->getSingleRecord($query);

$coupons_obj=new CouponsAdapter();
$query="select * from coupons where coupon_id='$coupon_id'";
$couponDetails=$coupons_obj->getSingleRecord($query);



$order_date=date("Y-m-d");
$cart_id=$current_cart_id;
$user_id=$cartDetails['userid'];
$coupon_code=$couponDetails['couponcode'];
$total_price=$cartDetails['totalprice'];
$shipping_charge=$cartDetails['shippingcharge'];
$gross_amount=$cartDetails['totalprice'];
$tax_narration=$cartDetails['taxtype']; // need to modify based on billing display info
$tax_amount=$cartDetails['taxamount'];
//$final_price=$cartDetails['finalprice']+$tax_amount;
$tax_narration="";
$tax_amount=0;;
$final_price=$cartDetails['finalprice']+$tax_amount;
$payment_recvd=$final_price;
$balance=0;

$billing_fname=$cartBillingDetails['billingfname'];
$billing_lname=$cartBillingDetails['billinglname'];
$billing_address1=$cartBillingDetails['billingaddress1'];
$billing_address2=$cartBillingDetails['billingaddress2'];
$billing_city=$cartBillingDetails['city'];
$billing_state=$cartBillingDetails['stateid'];
$billing_country=$cartBillingDetails['country'];
$billing_phone=$cartBillingDetails['phone'];
$billing_email=$cartBillingDetails['emailid'];
$billing_zipcode=$cartBillingDetails['zipcode'];
$billing_area=$cartBillingDetails['area'];

$shipping_fname=$cartShippingDetails['shippingfname'];
$shipping_lname=$cartShippingDetails['shippinglname'];
$shipping_address1=$cartShippingDetails['shippingaddress1'];
$shipping_address2=$cartShippingDetails['shippingaddress2'];
$shipping_city=$cartShippingDetails['city'];
$shipping_state=$cartShippingDetails['stateid'];
$shipping_country=$cartShippingDetails['country'];
$shipping_phone=$cartShippingDetails['phone'];
$shipping_email=$cartShippingDetails['emailid'];
$shipping_zipcode=$cartShippingDetails['zipcode'];
$shipping_area=$cartShippingDetails['area'];

 $order_query="insert into orders(order_date,cart_id,user_id,coupon_code,total_price,shipping_charge,gross_amount,tax_narration,tax_amount,final_price,payment_recvd,balance,billing_fname,billing_lname,billing_address1,billing_address2,billing_city,billing_state,billing_country,billing_phone,billing_email,billing_zipcode,billing_area,shipping_fname,shipping_lname,shipping_address1,shipping_address2,shipping_city,shipping_state,shipping_country,shipping_phone,shipping_email,shipping_zipcode,shipping_area,order_status) values(now(),'$cart_id','$user_id','$coupon_code','$total_price','$shipping_charge','$gross_amount','$tax_narration','$tax_amount','$final_price','$payment_recvd','$balance','$billing_fname','$billing_lname','$billing_address1','$billing_address2','$billing_city','$billing_state','$billing_country','$billing_phone','$billing_email','$billing_zipcode','$billing_area','$shipping_fname','$shipping_lname','$shipping_address1','$shipping_address2','$shipping_city','$shipping_state','$shipping_country','$shipping_phone','$shipping_email','$shipping_zipcode','$shipping_area','Order Received')";
$current_order_id=$dbhelper_obj->executeInsertQuery($order_query);

$state_obj=new StateAdapter();
$query="select * from state where state_id='$shipping_state'";
$stateList=$state_obj->getSingleRecord($query);

$shipping_address=$shipping_fname." ".$shipping_lname."<br>".$shipping_address1.",".$shipping_address2."<br>".$shipping_city.",".$stateList['statename'].",".$shipping_zipcode.",".$shipping_country."<br>Contact No:".$shipping_phone;

$query="select * from state where state_id='$billing_state'";
$stateList=$state_obj->getSingleRecord($query);

$billing_address=$billing_fname." ".$billing_lname."<br>".$billing_address1.",".$billing_address2."<br>".$billing_city.",".$stateList['statename'].",".$billing_zipcode.",".$billing_country."<br>Contact No:".$billing_phone;

$cartitems_obj=new CartItemsAdapter();
$query="select * from cart_items where cart_id='$current_cart_id'";
$cartItemsDetails=$cartitems_obj->getMultipleRecords($query);

foreach($cartItemsDetails as $key)
{
$product_id=$key['productid'];
$template_id=$key['templateid'];
$quantity=$key['quantity'];
$price=$key['price'];
$file_id=$key['fileid'];
$form_fields=$key['formfields'];
$logofile=$key['logofile'];
if($logofile=="")
$logofile="NULL";
$opt_fields=$key['optfields'];
$current_item_id=$key['cartitemid'];


 if($template_id==0)
  {
$source_folder="uploads/cart_img/".$current_item_id.".png";
$destination_folder="uploads/order_img/".$current_item_id.".png";
copy($source_folder,$destination_folder);
$item_image=$current_item_id.".png";
 } else {
 $source_folder="uploads/cart_img/".$current_item_id.".jpg";
$destination_folder="uploads/order_img/".$current_item_id.".jpg";
copy($source_folder,$destination_folder);
$item_image=$current_item_id.".jpg";
 }
 
$order_item_query="insert into order_items(order_id,product_id,template_id,quantity,price,file_id,form_fields,opt_fields,item_image,logofile) values('$current_order_id','$product_id','$template_id','$quantity','$price','$file_id','$form_fields','$opt_fields','$item_image','$logofile')";
$dbhelper_obj->executeQuery($order_item_query);

$unit_price=$price/$quantity;
$products_obj=new ProductsAdapter();
$query="select * from products where product_id='$product_id'";
$productDetails=$products_obj->getSingleRecord($query);
     
           

$mail_items.="<tr>
            <td bgcolor='#e3e3e3' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#333;'>".$productDetails['productname']."</td><td bgcolor='#f1f1f1' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'>".$unit_price." </td><td align='center' bgcolor='#f1f1f1' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'>".$quantity."</td> <td align='right' bgcolor='#f1f1f1' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'>".$price.".00</td></tr>";
 
 
}

$new_session_id=$cartDetails['sessionid']."-Done";
$up_query="update cart set session_id='$new_session_id' where cart_id='$current_cart_id'";
$dbhelper_obj->executeQuery($up_query);

/* Insert to order payment table */
$ins_query="INSERT INTO `order_payments` (`cart_id`, `order_id`, `payment_mode`, `payment_date`, `amount`, `status`, `ebs_ResponseCode`, `ebs_ResponseMessage`, `ebs_DateCreated`, `ebs_PaymentID`, `ebs_MerchantRefNo`, `ebs_Amount`, `ebs_IsFlagged`, `ebs_TransactionID`, `ebs_Mode`, `ebs_BillingName`, `ebs_BillingAddress`, `ebs_BillingCity`, `ebs_BillingState`, `ebs_BillingPostalCode`, `ebs_BillingCountry`, `ebs_BillingPhone`, `ebs_BillingEmail`, `ebs_DeliveryName`, `ebs_DeliveryAddress`, `ebs_DeliveryCity`, `ebs_DeliveryState`, `ebs_DeliveryPostalCode`, `ebs_DeliveryCountry`, `ebs_DeliveryPhone`, `ebs_Description`) VALUES ('$current_cart_id', '$current_order_id', 'EBS', now(), '$ebs_Amount', '$ebs_ResponseMessage', '$ebs_ResponseCode', '$ebs_ResponseMessage', '$ebs_DateCreated', '$ebs_PaymentID', '$ebs_MerchantRefNo', '$ebs_Amount', '$ebs_IsFlagged', '$ebs_TransactionID', '$ebs_Mode', '$ebs_BillingName', '$ebs_BillingAddress', '$ebs_BillingCity', '$ebs_BillingState', '$ebs_BillingPostalCode', '$ebs_BillingCountry', '$ebs_BillingPhone', '$ebs_BillingEmail', '$ebs_DeliveryName', '$ebs_DeliveryAddress', '$ebs_DeliveryCity', '$ebs_DeliveryState', '$ebs_DeliveryPostalCode', '$ebs_DeliveryCountry', '$ebs_DeliveryPhone', '$ebs_Description')";
$dbhelper_obj->executeQuery($ins_query);
/* End of Insert to order payment table */

/* Order Email Sending */
$triggers_obj=new TriggersUtilityAdapter(); // Create object for Trigger utility
$ordersutility_obj=new OrdersUtilityAdapter(); // Create object for Trigger utility

$subject="Order confirmation – www.printo.in";
$message=$ordersutility_obj->getOrderConfirmationMail($current_cart_id,$ebs_BillingName,$mail_items,$shipping_charge,$final_price,$shipping_address,$billing_address,$tax_amount);
$triggers_obj->send_email("Printo","admin@printo.in",$billing_email,$subject,$message);
/* End of Order Email Sending */

/* Order Intimation mail Start */
$today=date("M d, Y");
$subject="New order : ".$current_cart_id." on ".$today;
$message="New order has been placed, here is the details <br>
   <p>Order ID <br>".$current_cart_id."</p>
   <p>Billing Address<br>".$billing_address."</p>
   <p>Shipping Address<br>".$shipping_address."</p>
   <p>Price<br>".$final_price."</p>";
$triggers_obj->send_email("Printo","admin@printo.in","online@printo.in",$subject,$message);
/* Order Intimation mail Ends */

header("location:alert.php?order_id=$current_cart_id");
} 
else
{
header("location:alert.php?pay=cancel");
} 
?>