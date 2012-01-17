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

/* Login Security */
	include_once "includes/security.php";
	$secure_obj=new SceurityAdapter();
	$secure_obj->checkUserLogin();

$session_id = session_id();
$current_user_id=$_SESSION[sess_uid];

$user_folder="uf/".$current_user_id;

$count = 0; foreach ($_POST as $name => $value) {
//echo $count % 2 == 0 ? 'alt' : '';
$name_array=explode("_",$name);

if($name_array[2]=="tmpname")
{
	// to get original name 
	foreach ($_POST as $name1 => $value1) {
	$original_name_array=explode("_",$name1);
	if($original_name_array[2]=="name")
	$original_name=$value1;
	}
	// end of getting original name 
	
if (!is_dir($user_folder)){
		mkdir($user_folder, 0777);
		}
		$file_array=explode(".",$value);
		
		$source_folder="./cartuploads/".$value;
		$destination_folder=$user_folder."/".$value;
		
		copy($source_folder,$destination_folder);
		//$product_info=$this->db->get_row("select * from products where product_id='$record->product_id'");
		
		//$user_sql="insert into user_files(product_name,folder_id,file_name,file_type,user_id,product_category_id) value('$product_info->product_name','0','$uplods_info->file_name','$uplods_info->file_type','$user_id','$product_info->product_category_id')";
		
		$file_name=$value;
		
		 $user_sql="insert into user_files(file_name,original_name,file_type,user_id,upload_mode) value('$file_name','$original_name','$file_array[1]','$current_user_id','plupload')";
		
$dbhelper_obj->executeQuery($user_sql);

}

		
}

header("location:user_files.php");

?>
