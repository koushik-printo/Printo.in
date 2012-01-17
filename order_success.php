<?php 
/*
Filename : cart_userinfo.php
Author : Printo - Koushik
Table Name : cart,users,cart_billing and cart_shipping
Functionality : User details for shopping cart
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* current cart id */
$current_cart_id=$_GET[cart_id];
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
//$tax_narration="VAT";
//$tax_amount=$cartDetails['totalprice']*4/100;
//$final_price=$cartDetails['finalprice']+$tax_amount;
$tax_narration="";
$tax_amount=0;;
$final_price=$cartDetails['finalprice']+$tax_amount;
$payment_recvd=$final_price;
$balance=0;

$billing_name=$cartBillingDetails['billingname'];
$billing_address1=$cartBillingDetails['billingaddress1'];
$billing_address2=$cartBillingDetails['billingaddress2'];
$billing_city=$cartBillingDetails['city'];
$billing_state=$cartBillingDetails['stateid'];
$billing_country=$cartBillingDetails['country'];
$billing_phone=$cartBillingDetails['phone'];
$billing_email=$cartBillingDetails['emailid'];
$billing_zipcode=$cartBillingDetails['zipcode'];

$shipping_name=$cartShippingDetails['shippingname'];
$shipping_address1=$cartShippingDetails['shippingaddress1'];
$shipping_address2=$cartShippingDetails['shippingaddress2'];
$shipping_city=$cartShippingDetails['city'];
$shipping_state=$cartShippingDetails['stateid'];
$shipping_country=$cartShippingDetails['country'];
$shipping_phone=$cartShippingDetails['phone'];
$shipping_email=$cartShippingDetails['emailid'];
$shipping_zipcode=$cartShippingDetails['zipcode'];



$order_query="insert into orders(order_date,cart_id,user_id,coupon_code,total_price,shipping_charge,gross_amount,tax_narration,tax_amount,final_price,payment_recvd,balance,billing_name,billing_address1,billing_address2,billing_city,billing_state,billing_country,billing_phone,billing_email,billing_zipcode,shipping_name,shipping_address1,shipping_address2,shipping_city,shipping_state,shipping_country,shipping_phone,shipping_email,shipping_zipcode,order_status) values(now(),'$cart_id','$user_id','$coupon_code','$total_price','$shipping_charge','$gross_amount','$tax_narration','$tax_amount','$final_price','$payment_recvd','$balance','$billing_name','$billing_address1','$billing_address2','$billing_city','$billing_state','$billing_country','$billing_phone','$billing_email','$billing_zipcode','$shipping_name','$shipping_address1','$shipping_address2','$shipping_city','$shipping_state','$shipping_country','$shipping_phone','$shipping_email','$shipping_zipcode','Order Received')";
$current_order_id=$dbhelper_obj->executeInsertQuery($order_query);

$shipping_address=$shipping_name."<br>".$shipping_address1.",".$shipping_address2."<br>".$shipping_city.",".$shipping_state.",".$shipping_zipcode.",".$shipping_country."<br>Contact No:".$shipping_phone;

$billing_address=$billing_name."<br>".$billing_address1.",".$billing_address2."<br>".$billing_city.",".$billing_state.",".$billing_zipcode.",".$billing_country."<br>Contact No:".$billing_phone;

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
$opt_fields=$key['optfields'];
$current_item_id=$key['cartitemid'];

$order_item_query="insert into order_items(order_id,product_id,template_id,quantity,price,file_id,form_fields,opt_fields) values('$current_order_id','$product_id','$template_id','$quantity','$price','$file_id','$form_fields','$opt_fields')";
$dbhelper_obj->executeQuery($order_item_query);

$unit_price=$price/$quantity;
$products_obj=new ProductsAdapter();
$query="select * from products where product_id='$product_id'";
$productDetails=$products_obj->getSingleRecord($query);
$mail_items.="<tr>
    <td width=220><p><strong>".$productDetails['productname']."</strong> </p></td>
    <td width=124><p><strong>".$unit_price."</strong> </p></td>
    <td width=75><p><strong>".$quantity."</strong> </p></td>
    <td width=141><p><strong>".$price."</strong> </p></td>
  </tr>";
  
  if($template_id==0)
  {
$source_folder="uploads/cart_img/".$current_item_id.".png";
$destination_folder="uploads/order_img/".$current_item_id.".png";
copy($source_folder,$destination_folder);
 } else {
 $source_folder="uploads/cart_img/".$current_item_id.".jpg";
$destination_folder="uploads/order_img/".$current_item_id.".jpg";
copy($source_folder,$destination_folder);
 }
 
}

$new_session_id=$cartDetails['sessionid']."-Done";
$up_query="update cart set session_id='$new_session_id' where cart_id='$current_cart_id'";
$dbhelper_obj->executeQuery($up_query);

/* Order Email Sending */
$triggers_obj=new TriggersUtilityAdapter(); // Create object for Trigger utility
$ordersutility_obj=new OrdersUtilityAdapter(); // Create object for Trigger utility

$subject="Order confirmation – www.printo.in";
$message=$ordersutility_obj->getOrderConfirmationMail($current_order_id,$billing_name,$mail_items,$shipping_charge,$final_price,$shipping_address,$billing_address);
$triggers_obj->send_email("Printo","admin@printo.in",$billing_email,$subject,$message);
/* End of Order Email Sending */


header("location:alert.php?order_id=$current_order_id");

?>
