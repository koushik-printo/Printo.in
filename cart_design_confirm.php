<?php 
/*
Filename : cart_templates.php
Author : Printo - Koushik
Table Name : product table and template tables
Functionality : Selecting template based on product id
*/

require('includes/inc.php');
require('includes/utility/db_helper.php');
require("includes/utility/pricing.php");
require('includes/utility/cart.php');
require('includes/classes/cart_class.php');


$session_id = session_id();
$smarty->assign("cusr_sess_id",$session_id);


/* Query string values */
$current_product_id=$_GET[pid];
$current_tempalte_id=$_GET[tid];
$tempalte_category_id=$_GET[tcid];
$current_item_id=$_GET[itemid];

$smarty->assign("tempalte_category_id",$tempalte_category_id);
$smarty->assign("current_item_id",$current_item_id);
$smarty->assign("current_product_id",$current_product_id);
if($current_product_id=='17')
{
$current_product_type=$_GET['type'];
$current_product_folder=$_GET['fol'];
$smarty->assign("current_product_type",$current_product_type);
$smarty->assign("current_product_folder",$current_product_folder);
}


/* template Info */
require('includes/classes/templates_class.php');
$template_obj=new TemplatesAdapter();
$query="select * from templates where template_id='$current_tempalte_id'";
$tempaltesList=$template_obj->getSingleRecord($query);
$smarty->assign("tempalteDetails",$tempaltesList);

/* product Info */
require('includes/classes/products_class.php');
$product_obj=new ProductsAdapter();
$query="select * from products where product_id='$current_product_id'";
$productList=$product_obj->getSingleRecord($query);
$smarty->assign("productDetails",$productList);

$product_name_array=explode(" ",$productList['productname']);
$smarty->assign("Name1",$product_name_array[0]);
$smarty->assign("Name2",$product_name_array[1]);

/* if($productList['productid']==1)
$smarty->assign("selform","BC");
elseif($productList['productid']==2)
$smarty->assign("selform","LH");
elseif($productList['productid']==2)
$smarty->assign("selform","LH"); */

if($current_item_id!="")
{
/* template Info */
require('includes/classes/cartitems_class.php');
$cartitem_obj=new CartItemsAdapter();
$query="select * from cart_items where cart_item_id='$current_item_id'";
$cartItemsList=$cartitem_obj->getSingleRecord($query);
//print_r($cartItemsList);

if($current_product_id=='16')
{
		$cartItemsList['optfields'];
		$type=explode(',',$cartItemsList['optfields']);
		$typeT=explode(':',$type[1]);
		if($type[1]!="")
		{
			$finalType=$typeT[1];
			$smarty->assign('finalType', $typeT[1]);
		}
		else
		{
			$finalType='1';
			$smarty->assign('finalType','1');	
		}
}

$smarty->assign("cartItemsList",$cartItemsList);
//print_r($cartItemsList['optfields']);
if($cartItemsList['optfields']!="" && $current_product_id==1)
{
		$optFields=explode(',',$cartItemsList['optfields']);
		foreach($optFields as $opt)
		{
				if($opt!="")
				$optField=explode(':',$opt);
				//print_r($optField);
				//print $optField[0];
				if($optField[0]=="mypr_papertype" && $optField[1]!="" ) 
					$mypr_papertype=$optField[1];
				if($optField[0]=="mypr_Lamination"  && $optField[1]!="" )
					 $mypr_Lamination=$optField[1];
				if($optField[0]=="mypr_roundCorner" && $optField[1]!="" )
					$mypr_roundCorner=$optField[1];
				if($optField[0]=="mypr_uvSpot"  && $optField[1]!="" )
					$mypr_uvSpot=$optField[1];
				
			
			
			//mypr_papertype:300,mypr_qty:500,mypr_Lamination:Matte,mypr_roundCorner:Yes,mypr_uvSpot:Yes,
		}
}
if($cartItemsList['optfields']!="" && $current_product_id==17)
{
		$optFields=explode(',',$cartItemsList['optfields']);
		//print_r($optFields);
		foreach($optFields as $opt)
		{
				if($opt!="")
				{
				$optField=explode(':',$opt);
				//print_r($optField);
				//print $optField[0];
				if($optField[0]=="mypr_qty" && $optField[1]!="" ) 
					 	$mypr_qty=$optField[1];
				if($optField[0]=="mypr_type"  && $optField[1]!="" )
					  	$mypr_type=$optField[1];
				if($optField[0]=="mypr_fol" && $optField[1]!="" )
						$mypr_fol=$optField[1];
				}
			//mypr_papertype:300,mypr_qty:500,mypr_Lamination:Matte,mypr_roundCorner:Yes,mypr_uvSpot:Yes,
		}
		$current_product_type=$_GET['type'];
		$current_product_folder=$_GET['fol'];
		if($current_product_type=="")
			$current_product_type=$mypr_type;
		if($current_product_folder=="")
			$current_product_folder=$mypr_fol;
		$smarty->assign("current_product_type",$current_product_type);
		$smarty->assign("current_product_folder",$current_product_folder);
		
}

}
require('validations/cart_design_confirm_validation.php');

/* Form handling */
if($current_product_id==1) // Business cards 
{
$smarty->assign('myQtyOptions', array(
                                100 => '100',
                                200 => '200',
                                300 => '300',
								400 => '400',
								500 => '500',
								600 => '600',
								700 => '700',
								800 => '800',
								900 => '900',
								1000 => '1000'
								)
                                );
$smarty->assign('myQtySelect', $cartItemsList['quantity']);

		$smarty->assign('myPayerTypeOptions', array(
								'Executive_Digital_Ivory' => 'Executive Digital Ivory',
								'Executive_Matte' => 'Executive Matte',
								'Executive_Glossy' => 'Executive Glossy',
								'Recycled_Paper_cream' => 'Recycled Paper(Cream)',
								'Premium_Textured_White' => 'Premium (Textured - White)',
								'Premium_Textured_Silk' => 'Premium (Textured - Silk)',
								'Premium_Textured_Cream' => 'Premium (Textured - Cream)',
								'Premium_Textured_Pearl' => 'Premium (Textured - Pearl)',
								'Premium_Textured_half_gold' => 'Premium (Textured - Half-gold)',
								'Premium_Textured_gold' => 'Premium (Textured - Gold)')
                                );
	if($mypr_papertype=="")
		$smarty->assign('myPayperTypeSelect', 'Executive_Digital_Ivory');		
	else					
		$smarty->assign('myPayperTypeSelect', $mypr_papertype);
		
		$smarty->assign('myLaminationTypeOptions', array(
								'No' => 'No',
                                'Matte' => 'Matte Lamination',
								'Glossy' => 'Glossy Lamination')
                                );
	if($mypr_Lamination=="")			
		$smarty->assign('myLaminationTypeSelect', 'No');
	else
		$smarty->assign('myLaminationTypeSelect',$mypr_Lamination);	
		
		$smarty->assign('myRoundCornerTypeOptions', array(
								'No' => 'No',
                                'Yes' => 'Yes')
                                );		
	if($mypr_roundCorner=="")							
		$smarty->assign('myRoundCornerTypeSelect', 'No');	
	else
		$smarty->assign('myRoundCornerTypeSelect', $mypr_roundCorner);		
		
		$smarty->assign('myUVSpotTypeOptions', array(
								'No' => 'No',
                                'Yes' => 'Yes')
                                );	
	if($mypr_uvSpot=="")			
		$smarty->assign('myUVSpotTypeSelect', 'No');	
	else
		$smarty->assign('myUVSpotTypeSelect', $mypr_uvSpot);
						
} elseif($current_product_id==3) { // Letter heads 
$smarty->assign('myQtyOptions', array(
								100 => '100',
                                200 => '200',
                                500 => '500',
                                1000 => '1000',
                                2000 => '2000',
                                3000 => '3000',
								4000 => '4000')
								);
$smarty->assign('myQtySelect', $cartItemsList['quantity']);
}  elseif($current_product_id==10) { // Envelopes 
$smarty->assign('myQtyOptions', array(
                                500 => '500',
                                1000 => '1000',
                                2000 => '2000',
								3000 => '3000',
								5000 =>'5000')
								);
$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} elseif($current_product_id==11) { // 	Folded Brochures
$smarty->assign('myQtyOptions', array(
                                5 => '5',
                                10 => '10',
                                15 => '15',
								20 => '20',
								25 => '25',
								30 => '30',
								35 => '35',
								40 => '40',
								45 => '45',
								50 => '50')
								);
$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} elseif($current_product_id==12) { // 	Standees
$smarty->assign('myQtyOptions', array(
                                1 => '1',
                                2 => '2',
                                3 => '3',
								4 => '4',
								5 => '5')
								);
$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} elseif($current_product_id==13) { // A4 Flyers
$smarty->assign('myQtyOptions', array(
                                2000 => '2000',
								4000 => '4000')
								);
$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
elseif($current_product_id==16) { // Diary
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
								20 => '20',
								30 => '30',
								40 => '40',
								50 => '50',
								100=>'100',
								125=>'125',
								150=>'150',
								175=>'175',
								200=>'200')
								);
$smarty->assign('myTypeOptions', array(
                                 1 => 'Soft Cover',
                               2 => ' Hard Cover')
								);
$smarty->assign('mySizeOptions', array(
                                 	1 => 'A5',
                               		2 => 'B5')
								);
$smarty->assign('myQtySelect', $cartItemsList['quantity']);
$smarty->assign('myTypeSelect',$finalType);
} 
elseif($current_product_id==17) { // Calender
					$smarty->assign('myQtyOptions', array(
													1 => '1',
													2 => '2',
													3 => '3',
													4 => '4',
													5 => '5',
													10 => '10',
													50 => '50',
													100 => '100',
													200 => '200',
													250 => '250')
													);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
					$smarty->assign('myTypeOptions', array(
                                 "classic" => 'Classic',
                                 "Long" => 'Long',
								 "compact" =>'Compact')
								);
		$val=explode(",",$cartItemsList['optfields']);//print_r($val);
		$val=explode(":",$val[1]);
		
		$typ =$val[1];
		$smarty->assign('myTypeSelect', $current_product_type);
		$smarty->assign('disabled', "disabled");			
} 

$smarty->display('cart_design_confirm.tpl');

?>
