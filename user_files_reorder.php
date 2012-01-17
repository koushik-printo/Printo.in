<?php
/*
Filename : cart_user_files_confirm.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Cart User Upload file Confirm
*/

require('includes/inc.php');
require('includes/utility/db_helper.php'); 
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

require('includes/utility/cart.php');

 
require('includes/utility/pricing.php');
$current_ufile=$_GET[ufile];
$session_id=session_id();
$cur_product_id=$_GET[pid];

/* item Info */
require('includes/classes/cartitems_class.php');
$cartitem_obj=new CartItemsAdapter();
$query="select * from cart_items where file_id='$current_ufile' order by cart_item_id desc limit 0,1";
$cartItemsList=$cartitem_obj->getSingleRecord($query);
$smarty->assign("cartItemsList",$cartItemsList);
$my_form_fileds=$cartItemsList['formfields'];
$my_opt_fileds=$cartItemsList['optfields'];

$cartutility_obj=new CartutilityAdapter();
$current_item_id=$cartutility_obj->addcartitem_without_template($session_id,$cur_product_id,$current_ufile);

$dt_array=explode(" | ",$my_form_fileds);
$image_name_array=explode(" : ",$dt_array[1]);
$image_array=explode(".",$image_name_array[1]);

$page_count_array=explode(" : ",$dt_array[2]);
$width_array=explode(" : ",$dt_array[3]);
$height_array=explode(" : ",$dt_array[4]);

// Landing Preview image //
if($page_count_array[1]==1)
$pimage=$image_array[0].".png";
else
$pimage=$image_array[0]."_Page_1.png";

$source_folder="../printo.in/cude/tempUploads/out/".$pimage;
$destination_folder="uploads/cart_img/".$current_item_id.".png";
copy($source_folder,$destination_folder);

$up_query="update cart_items set form_fields='$my_form_fileds',opt_fields='$my_opt_fileds' where cart_item_id='$current_item_id'";
$dbhelper_obj->executeQuery($up_query);

header("location:cart_user_files_confirm.php?itemid=$current_item_id");

?>