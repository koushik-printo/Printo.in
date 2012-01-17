<?php 
/*
Filename : user_profile.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Profile form
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Login Security */
	include_once "includes/security.php";
	$secure_obj=new SceurityAdapter();
	$secure_obj->checkUserLogin();
	
	$current_user_id=$_SESSION[sess_uid];

require('includes/classes/products_class.php');
require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php'); 
require('validations/user_files_validation.php');
	
require('includes/classes/userfiles_class.php');
$userfiles_obj=new UserFilesAdapter();
$query="select * from user_files where user_id='$current_user_id' order by file_id";
$userFilesList=$userfiles_obj->getMultipleRecords($query);
$smarty->assign('userFilesList',$userFilesList);


/* Product Name */
$product_obj=new ProductsAdapter();
$query="select * from products";
$productList=$product_obj->getMultipleRecords($query);
$smarty->assign('productList',$productList);







$smarty->display('user_files.tpl');
?>
