<?php
/*
Filename : cart_user_files_confirm.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Cart User Upload file Confirm
*/

require('includes/inc.php');
require('includes/utility/db_helper.php'); 
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

require('includes/utility/cart.php');

/* Query string values */
 $current_item_id=$_GET[itemid];

/* 
require('includes/utility/pricing.php');
$current_ufile=$_GET[ufile];
$session_id=session_id();
if($current_ufile!="")
{
$cur_product_id=$_GET[pid];

$cartutility_obj=new CartutilityAdapter();
$current_item_id=$cartutility_obj->addcartitem_without_template($session_id,$cur_product_id,$current_ufile);
} */

$smarty->assign("current_item_id",$current_item_id);

/* item Info */
require('includes/classes/cartitems_class.php');
$cartitem_obj=new CartItemsAdapter();
$query="select * from cart_items where cart_item_id='$current_item_id'";
$cartItemsList=$cartitem_obj->getSingleRecord($query);
//print_r($cartItemsList);
$smarty->assign("cartItemsList",$cartItemsList);


/* product Info */
$cartutility_obj=new CartutilityAdapter();
$query="select * from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) where t1.cart_item_id='$current_item_id'";
$cartitemsList=$cartutility_obj->getcartitems($query);



$product_name_array=explode(" ",$cartitemsList[0]['productname']);
$smarty->assign("Name1",$cartitemsList[0]['productname']);
//$smarty->assign("Name2",$product_name_array[1]);
$current_product_id=$cartitemsList[0]['productid'];
$smarty->assign("current_product_id",$cartitemsList[0]['productid']);

$current_data=$cartitemsList[0]['formfields'];

$smarty->assign("current_data",$current_data);

$dt_array=explode(" | ",$current_data);
$image_name_array=explode(" : ",$dt_array[1]);
$image_array=explode(".",$image_name_array[1]);

$page_count_array=explode(" : ",$dt_array[2]);


$up_query="update cart_items set form_fields='$current_data' where cart_item_id='$current_item_id'";
$dbhelper_obj->executeQuery($up_query);

$smarty->assign("imgpath","/printo.in/cude/tempUploads/out");
$smarty->assign("imgcount",$page_count_array[1]);
$smarty->assign("imgname",$image_array[0]);

// Landing Preview image //
if($page_count_array[1]==1)
$pimage=$image_array[0].".png";
elseif($page_count_array[1]<=9)
$pimage=$image_array[0]."_Page_1.png";
else
$pimage=$image_array[0]."_Page_01.png";


$smarty->assign("previewimage",$pimage);

// All other images display start //
$pcount=$page_count_array[1];
for($i=1;$i<=$pcount;$i++)
{
	if($pcount>=10 && $i<=9)
	$pname=$image_array[0]."_Page_0".$i;
	else
	$pname=$image_array[0]."_Page_".$i;
	$parray[$i]=$pname;
}
if($cartItemsList['optfields']!="" && $current_product_id==1 || $current_product_id==2)
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
$smarty->assign("parray",$parray);
// All other images display End //

//echo print_r($cartItemsList);
/* Form handling */
if($current_product_id==1) {// Business cards 
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
																	
								
} 
	elseif($current_product_id==2) { // Business cards  2 Sided
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
						1000 => '1000')
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

	
} 
	elseif($current_product_id==3) { // Letter heads 
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
}  
	elseif($current_product_id==4) { // ID Cards
					$smarty->assign('myQtyOptions', array(
													10 => '10',
													20 => '20',
													30 => '30',
													50 => '50',
													100 => '100')
													);
					$smarty->assign('myTypeOptions', array(
													 1 => 'Single Side',
												   2 => 'Double Side')
													);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
}  
	elseif($current_product_id==5) { // 3 Panel Brochures 
					$smarty->assign('myQtyOptions', array(
												1 => '1',
												25 => '25',
												50 => '50',
												75 => '75',
												100 => '100',
												500 => '500',
												1000 => '1000',
												2000 => '2000',
												3000=> '3000',
												5000 => '5000')
												);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==6) {  // A5 Flyer 
					$smarty->assign('myQtyOptions', array(
													  1000 => '1000',
													2000 => '2000',
													4000 => '4000',
													6000 => '6000',
													8000 => '8000',
													10000 => '10000',
													20000 => '20000')
													);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==7) {  // Mounted Prints
					$smarty->assign('myQtyOptions', array(
												  10 => '10',
												20 => '20',
												30 => '30',
												40 => '40',
												50 => '50')
												);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==8) { // Poster A4
					$smarty->assign('myQtyOptions', array(
												  1 => '1',
												25 => '25',
												50 => '50',
												100 => '100',
												200 => '200',
												250 => '250',
												500 => '500')
												);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
					$smarty->assign('myPayerTypeOptions', array(
													130 => '130 GSM',
													170 => '170 GSM',
													220 => '220 GSM',
													280 => '280 GSM')
													);
					$smarty->assign('myPayperTypeSelect', '130');
	
					/*$smarty->assign('myTappingOptions', array(
												'No' => 'No',
												'Yes' => 'Yes')
												);
					if($mypr_Tapping=="")			
					$smarty->assign('myTappingTypeSelect', 'No');
					else
					$smarty->assign('myLaminationTypeSelect',$mypr_Tapping);	*/
	
} 
	elseif($current_product_id==9) {  // Rack Cards
					$smarty->assign('myQtyOptions', array(
												  10 => '10',
												20 => '20',
												30 => '30',
												40 => '40',
												50 => '50')
												);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==10){ // Envelopes 
					$smarty->assign('myQtyOptions', array(
												  500 => '500',
												1000 => '1000',
												2000 => '2000',
												3000 => '3000',
												5000 => '5000')
												);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==11) {// 	Folded Brochures
					$smarty->assign('myQtyOptions', array(
													1=> '1',
													25 => '25',
													50 => '50',
													100 => '100',
													500 => '500',
													1000 => '1000',
													2000 => '2000',
													3000 => '3000',
													5000 => '5000')
													);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==12) {// 	Standees
					$smarty->assign('myQtyOptions', array(
													1 => '1',
													2 => '2',
													3 => '3',
													4 => '4',
													5 => '5')
													);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
}
	elseif($current_product_id==13) {// A4 Flyers
					$smarty->assign('myQtyOptions', array(
													1000 => '1000',
													2000 => '2000',
													4000 => '4000',
													6000 => '6000',
													8000 => '8000',
													10000 => '10000',
													20000 => '20000')
													);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
} 
	elseif($current_product_id==14) {// Documents Printing
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
												10 => '10')
												);
					$smarty->assign('myQtySelect', $cartItemsList['quantity']);
					
					$smarty->assign('myBindingOptions', array(
												'Spiral Binding' => 'Spiral Binding',
												'Wired binding' => 'Wired binding',
												'Center Pining' => 'Center Pining')
												);
					$smarty->assign('myBindingSelect', 'Spiral Binding');
} 
	elseif($current_product_id==15) { // Standee Outdoor
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
												10 => '10')
												);
					$smarty->assign('myBindingOptions', array(
												 1 => 'Roll-up standee (2 ft x 5 ft)',
											   2 => 'Roll-up standee (3 ft x 6.5 ft)'));
					$smarty->assign('myBindingSelect', '1');	
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
							   		"compact"=> 'Compact')
								);
					
} 
//echo "sads: ".$current_item_id;
//echo "sada: ".$current_product_id;
$smarty->assign('current_product_id',$current_product_id);


$smarty->display('cart_user_files_confirm.tpl');

?>