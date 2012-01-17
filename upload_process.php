<?php
/*
Filename : upload_process.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Upload Process for API 
*/

require('includes/inc.php');

/* Query string Values */
$current_item_id=$_GET[itemid];
$current_filename=$_GET[filename];
$send_item=$current_item_id.",".$current_filename;

$smarty->assign('current_item_id',$current_item_id);
$smarty->assign('current_filename',$current_filename);
$smarty->assign('send_item',$send_item);

$smarty->display('upload_process.tpl');
?>
