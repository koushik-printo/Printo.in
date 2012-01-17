<?php 
/*
Filename : cart_templates.php
Author : Printo - Koushik
Table Name : product table and template tables
Functionality : Selecting template based on product id
*/

require('includes/inc.php');
require('includes/utility/form_validation.php'); 
require('includes/utility/db_helper.php');
require("includes/utility/pricing.php");
require('includes/utility/cart.php'); 
require('includes/utility/coupons_utility.php'); 
error_reporting(0);
/* current session id */
$session_id = session_id();
$current_action=$_GET[act];
$current_cart_item_id=$_GET[itemid];


/* template Info */
require('includes/classes/cart_class.php');
$cart_obj=new CartAdapter();
$query="select * from cart where session_id='$session_id'";
$cartList=$cart_obj->getSingleRecord($query);
$smarty->assign("cartDetails",$cartList);
$cart_id=$cartList['cartid'];

/* product Info */
require('includes/classes/cartitems_class.php');
$cartutility_obj=new CartutilityAdapter();

//$query="select * from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) where t1.cart_id='$cart_id'";

$query="select * from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) where t1.cart_id='$cart_id'";
$cartitemsList=$cartutility_obj->getcartitems($query);
$smarty->assign("cartitemsList",$cartitemsList);
//print_r($cartitemsList);
//print_r($cartitemsList);

foreach($cartitemsList as $a)
{
	if($a[productid]==17 && $a[optfields]!="")
	{	$val=explode($a[optfields]);
		print_r($val);
	}
	
}



/* if($cartitemsList[0]['templateid']==0)
{
$current_data=$cartitemsList[0]['formfields'];
$dt_array=explode(" | ",$current_data);
$image_name_array=explode(" : ",$dt_array[1]);
$image_array=explode(".",$image_name_array[1]);
$page_count_array=explode(" : ",$dt_array[2]);
if($page_count_array[1]==1)
$pimage=$image_array[0]."png";
else
$pimage=$image_array[0]."_Page_1.png";
$smarty->assign("previewimage",$pimage);
$smarty->assign("imgpath","/printo.in/cude/tempUploads/out");
} */

/* Remove Cart Items */
if($current_action=="rm")
{
$cartutility_obj=new CartutilityAdapter();
$cartutility_obj->removecartitem($current_cart_item_id);
header("location:viewcart.php");
}

require('validations/viewcart_validation.php');

$smarty->display('viewcart.tpl');
?>
