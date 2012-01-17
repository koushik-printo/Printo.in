<?php
/*
Filename : cart_user_files.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Plupload for custom upload files
*/

require('includes/inc.php');
require('includes/classes/userfiles_class.php');
require('includes/classes/products_class.php');
require('includes/utility/db_helper.php');
require('includes/utility/cart.php');
require('includes/utility/form_validation.php');
require('includes/utility/pricing.php');

/* Query String */
if($_GET[pid]!="")
$current_product_id=$_GET[pid];
$current_cart_item_id=$_GET[itemid];
$current_action=$_GET[act];
$current_user_id=$_SESSION[sess_uid];
$session_id = session_id();


$smarty->assign('product_id',$current_product_id);
$products_obj = new ProductsAdapter();
$query="select * from products where product_id='$current_product_id'";
$productsList=$products_obj->getSingleRecord($query);
$product_name_array=explode(" ",$productsList['productname']);
$smarty->assign("Name1",$productsList['productname']);
//print_r($productsList);
 $imgPath="images/".$productsList['imag'];
 $imageSource="<img src='$imgPath'>";
$smarty->assign('catImage',$imageSource);


$userfiles_obj = new UserFilesAdapter();
$query="select * from user_files where user_id='$current_user_id'";
$userFilesList=$userfiles_obj->getMultipleRecords($query);
$smarty->assign('userFilesList',$userFilesList);

/* Remove Cart Items */
if($current_action=="rm")
{
$cartutility_obj=new CartutilityAdapter();
$cartutility_obj->removecartitem($current_cart_item_id);
}

require('validations/cart_user_files_validations.php');

if($current_product_id==1) // Business cards 
{ $smarty->assign('artfilename','bc_artwork_specification.php'); }
elseif($current_product_id==3) // Letter heads 
{ $smarty->assign('artfilename','lh_artwork_specification.php'); }
elseif($current_product_id==10) // Envelopes 
{ $smarty->assign('artfilename','en_artwork_specification.php'); }
elseif($current_product_id==11) // 	Folded Brochures
{ $smarty->assign('artfilename','br_artwork_specification.php'); }
elseif($current_product_id==12)  // 	Standees
{ $smarty->assign('artfilename','st_artwork_specification.php'); }
elseif($current_product_id==13) // A4 Flyers
{ $smarty->assign('artfilename','fl_artwork_specification.php'); }
elseif($current_product_id==14) // Documents Printing
{ $smarty->assign('artfilename','dp_artwork_specification.php'); }

$smarty->display('cart_user_files.tpl');
?>
