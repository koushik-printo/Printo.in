<?php
/*
Filename : letter_heads.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Coprorate PIPS calander page
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
require("includes/utility/pricing.php");
require('includes/utility/cart.php');
require('includes/classes/cart_class.php');
require('includes/utility/form_validation.php');
require('validations/pipsValidation.php');

/*print_r($_SESSION);


echo "<br/>";

print_r($_POST);

echo "<br/>";

print_r($_GET);*/
$current_product_id=$_GET[pid];

$form_fields=$_POST['imageID'];

$smarty->assign("tempalte_category_id",$tempalte_category_id);

$smarty->assign("current_product_id",$current_product_id);
$cartutility_obj=new CartutilityAdapter();
//addcartitem_with_template($session_id,$product_id,$template_id,$tempalte_category_id,$form_fields,$opt_fields)
if(isset($_POST['imageID']))
	{	
	
		$get_query="select count(*) from cart where session_id='$ses_id'";
		$cartcount=mysql_fetch_row(mysql_query($get_query));
		
		if(isset($_GET['c'])==false)
		{
			
				$current_item_id=$cartutility_obj->addcartitem_with_template($ses_id,$current_product_id,$template_id,$tempalte_category_id,$form_fields,$opt_fields);
				$_SESSION['current_item_id']=$current_item_id;
			//print "if part current itemId ".$current_item_id;
		}
		else
		{
			$current_item_id=$_SESSION['current_item_id'];
			//print "else part current itemId ".$current_item_id;
		}
	}
$current_item_id=$_SESSION['current_item_id'];
if($_GET['c']=="t")
{
		$current_item_id=$_GET['itemid'];
		$_SESSION['current_item_id']=$current_item_id;
}
$smarty->assign("current_item_id",$current_item_id);
/* product Info */
require('includes/classes/products_class.php');
$product_obj=new ProductsAdapter();
$query="select * from products where product_id='$current_product_id'";
$productList=$product_obj->getSingleRecord($query);
$smarty->assign("productDetails",$productList);

$product_name_array=explode(" ",$productList['productname']);
$smarty->assign("Name1",$product_name_array[0]);
$smarty->assign("Name2",$product_name_array[1]);

if($current_item_id!="")
{
	/* template Info */
	require('includes/classes/cartitems_class.php');
	$cartitem_obj=new CartItemsAdapter();
	$query="select * from cart_items where cart_item_id='$current_item_id'";
	$cartItemsList=$cartitem_obj->getSingleRecord($query);
}

$query="select * from cart_items where cart_item_id='$current_item_id'";
$cartItemsList=$cartitem_obj->getSingleRecord($query);
$smarty->assign("current_item_id",$current_item_id);


$smarty->assign("cartItemsList",$cartItemsList);
if($current_product_id==18) // PIPS
{
			$smarty->assign('myQtyOptions', array(
										1 => '1',
										2 => '2',
										3 => '3',
										4 => '4',
										5 => '5',
										6 => '6',
										7 => '7',
										8 => '8',
										9 => '9',
										10 => '10',
										15 => '15',
										25 => '25',
										26 => '26',
										27 => '27',
										28 => '28',
										29 => '29',
										30 => '30',
										50 => '50',
										55 => '55',
										75 =>'75',
										100 => '100',
										115 => '115',
										150 => '150',
										200 => '200',
										250 => '250')
										);
			$smarty->assign('myQtySelect', $cartItemsList['quantity']);
						
}

$smarty->display('corpo_calendarsbasic.tpl');

?>
