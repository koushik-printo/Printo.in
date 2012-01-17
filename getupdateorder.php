<?php
require('includes/inc.php');
require('includes/utility/db_helper.php');
require("includes/utility/pricing.php");
require('includes/classes/cartitems_class.php');
$cartitem_obj=new CartItemsAdapter();
$price_obj=new PricingAdapter();
$dbhelper_obj=new DbHelperAdapter();

/*Query string Values */
//echo $_GET[q];
//echo "<br>";
$dtype=$_GET[T];
if($dtype!="")
{
		if($dtype=="1")
		$_SESSION['dType']=="sCover";
		if($dtype=="2")
		$_SESSION['dType']=="hCover";
}
	$opt_fields=$_GET[q];
	$current_item_id=$_GET[itemid];

	$opt_array=explode(",",$opt_fields);
	for($i=0;$i<count($opt_array)-1;$i++)
	{
	$opt2_array=explode(":",$opt_array[$i]);
	$new_opt_array[$opt2_array[0]]=$opt2_array[1];
	}

/* Pricing */
	 $query="select * from cart_items where cart_item_id='$current_item_id'";
	$cartItemsList=$cartitem_obj->getSingleRecord($query);
		/*print "<br/>";
		print_r($cartItemsList);
		print "<br/>";*/
	 $current_product_id=$cartItemsList['productid'];
	 $current_cart_id=$cartItemsList['cartid'];
	 $new_opt_array;
	
	$price_array=$price_obj->getPrice($current_product_id,$new_opt_array);
	$total_price=$price_array['price'];
	$total_weight=$price_array['weight'];
	/* End of Pricing */
	$cur_qty=$new_opt_array['mypr_qty'];
	
 	 $up_qry="update cart_items set quantity='$cur_qty',price='$total_price',weight='$total_weight',opt_fields='$opt_fields' where cart_item_id='$current_item_id'";
	$dbhelper_obj->executeQuery($up_qry);
	
	$cart_price=$dbhelper_obj->recordCount("select sum(price) from cart_items where cart_id='$current_cart_id'");
	$cart_weight=$dbhelper_obj->recordCount("select sum(weight) from cart_items where cart_id='$current_cart_id'");
	
	  $up_qry="update cart set total_price='$cart_price',total_weight='$cart_weight',final_price='$cart_price' where cart_id='$current_cart_id'";
	$dbhelper_obj->executeQuery($up_qry);
	$sttr="<span class='WebRupee' style='padding:0; margin:0;'>Rs. </span>".$total_price;
	 $total_price=$price_array['price'];


	echo $sttr;
?>
