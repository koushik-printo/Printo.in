<?php
/*
Filename : index.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Root file
*/

require('includes/inc.php');

$smarty->assign("welcome_message","Welcome to Printo");
$smarty->assign("nav_home","first active");
$smarty->assign("nav_sl","store-locator");
$dell=$_GET['dell'];
if($dell!="" && $dell=="yes")
$smarty->assign("dell",$dell);


$smarty->display('index.tpl');
?>
