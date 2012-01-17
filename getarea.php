<?php
require('includes/inc.php');
require('includes/utility/pincodes_utility.php'); 
$pincodeutility_obj=new PincodesUtilityAdapter(); // Create object for pincode utility

/*Query string Values */
$pcode=$_GET[q];
$cur_mode=$_GET[mode];

$curr_area=$pincodeutility_obj->getPincodeArea($pcode);

if($cur_mode=="bill")
echo "<input type='text' name='billing_area' value='$curr_area' />";
elseif($cur_mode=="ship")
echo "<input type='text' name='shipping_area' value='$curr_area' />";

?>
