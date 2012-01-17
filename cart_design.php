<?php 
/*
Filename : cart_templates.php
Author : Printo - Koushik
Table Name : product table and template tables
Functionality : Selecting template based on product id
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
require("includes/utility/pricing.php");
require('includes/utility/cart.php');
require('includes/classes/cart_class.php');



$session_id = session_id();
$smarty->assign("cusr_sess_id",$session_id);

/* Query string values */

$current_product_id=$_GET[pid];
if($current_product_id=='17')
{
$current_product_folder=$_GET[folder];
$current_product_type=$_GET[type];
if($current_product_type=="1")
	$current_product_type="classic";
if($current_product_type==2)
	$current_product_type="Long";
if($current_product_type==3)
	$current_product_type="compact";
$smarty->assign("current_product_type",$current_product_type);
$smarty->assign("current_product_folder",$current_product_folder);
}
$current_tempalte_id=$_GET[tid];
$tempalte_category_id=$_GET[tcid];
$current_item_id=$_GET[itemid];
$smarty->assign("tempalte_category_id",$tempalte_category_id);
$smarty->assign("current_item_id",$current_item_id);
$smarty->assign("current_tempalte_id",$current_tempalte_id);


/* template Info */
require('includes/classes/templates_class.php');
$template_obj=new TemplatesAdapter();
$query="select * from templates where template_id='$current_tempalte_id'";
$tempaltesList=$template_obj->getSingleRecord($query);
if($current_product_id=="1")
{
	$imageName=$tempaltesList[templatebasename]."_L.jpg";	
	$smarty->assign("imageName",$imageName);
}
else if($current_product_id=="3")
{
	$imageName=$tempaltesList[templatebasename]."_L.jpg";	
	$smarty->assign("imageName",$imageName);
}
else if($current_product_id=="10")
{
	$imageName=$tempaltesList[templatebasename]."_L.jpg";	
	$smarty->assign("imageName",$imageName);
}
else if($current_product_id=="16")
{
	$imageName=$tempaltesList[templatebasename]."_L.jpg";	
	$smarty->assign("imageName",$imageName);
}
$smarty->assign("tempalteDetails",$tempaltesList);

/* product Info */
require('includes/classes/products_class.php');
$product_obj=new ProductsAdapter();
$query="select * from products where product_id='$current_product_id'";
$productList=$product_obj->getSingleRecord($query);
$smarty->assign("productDetails",$productList);
$product_name_array=explode(" ",$productList['productname']);
$smarty->assign("Name1",$product_name_array[0]);
$smarty->assign("Name2",$product_name_array[1]);

if($current_item_id!="")
{
/* template Info */
require('includes/classes/cartitems_class.php');
$cartitem_obj=new CartItemsAdapter();
$query="select * from cart_items where cart_item_id='$current_item_id'";
$cartItemsList=$cartitem_obj->getSingleRecord($query);
$smarty->assign("cartItemsList",$cartItemsList);
$form_array=explode(" | ",$cartItemsList['formfields']);
for($i=0;$i<=count($form_array);$i++)
{
$frm_value=explode(" : ",$form_array[$i]);
$smarty->assign($frm_value[0],$frm_value[1]);
}

}
require('validations/cart_design_validation.php');

$smarty->display('cart_design.tpl');

?>
