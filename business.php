<?php
/*
Filename : business.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Static page - About us
*/

require('includes/inc.php');
$smarty->assign("nav_bs","first active");
$smarty->assign("nav_sl","store-locator");
$smarty->display('business.tpl');
?>
