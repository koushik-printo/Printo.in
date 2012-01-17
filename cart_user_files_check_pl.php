<?php
/*
Filename : cart_user_files.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Plupload for custom upload files
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

require('includes/utility/cart.php');
$cartutility_obj=new CartutilityAdapter();

$session_id = session_id();

$count = 0; foreach ($_POST as $name => $value) {
//echo $count % 2 == 0 ? 'alt' : '';
$name_array=explode("_",$name);

if($name_array[2]=="tmpname")
{
$file_array=explode(".",$value);
$cart_upload_insert="insert into cart_uploads(file_name,file_type) values('$value','$file_array[1]')";
$current_file_id=$dbhelper_obj->executeInsertQuery($cart_upload_insert);

$current_item_id=$cartutility_obj->addcartitem_without_template($session_id,$_POST[product_id]);

$cart_upload_update="update cart_uploads set cart_item_id='$current_item_id' where upload_id='$current_file_id'";
$dbhelper_obj->executeQuery($cart_upload_update);

}
}
header("location:viewcart.php");

?>
