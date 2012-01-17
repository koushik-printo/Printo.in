<?php 
/*
Filename : cart_confirm.php
Author : Printo - Koushik
Table Name : cart related tables
Functionality : confirm cart items and proceed to payment
*/

require('includes/inc.php');
/*require('includes/utility/form_validation.php');
require('includes/utility/db_helper.php');
require('includes/utility/cart.php'); 
require('includes/utility/coupons_utility.php');*/


$smarty->display('cust_ord_business-card-single.tpl');
?>
