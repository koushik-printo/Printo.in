<?php
/*
Filename : track_order.php
Author : Printo - Koushik
Table Name : orders
Functionality : Tracking order using order code
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
require('includes/utility/orders_utility.php');
/* post string values */
 $cur_order_id=$_POST[order_code];

  $query="select * from cart_items where cart_id='$cur_order_id'";
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility
$rcount=$dbhelper_obj->recordCount($query);

if($rcount>=1)
{
$ordersutility_obj=new OrdersUtilityAdapter();
$ordersList=$ordersutility_obj->getTrackOrder($cur_order_id);
//print_r($ordersList);
$smarty->assign('ordersList',$ordersList);
$smarty->display('track_order.tpl');
} else {
	header("location:alert.php?act=trackerr");
}



?>
