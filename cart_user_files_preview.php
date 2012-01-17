<?php
/*
Filename : cart_user_files_preview.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Cart User Upload file Preview
*/

require('includes/inc.php');
require('includes/utility/db_helper.php'); 

error_reporting(0);
$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility

/* Query string values */


$current_data=$_GET[dt];


$current_item_id=$_GET[itemid];
$smarty->assign("current_item_id",$current_item_id);

$dt_array=explode(" | ",$current_data);
$image_name_array=explode(" : ",$dt_array[1]);
$image_array=explode(".",$image_name_array[1]);

$page_count_array=explode(" : ",$dt_array[2]);
$width_array=explode(" : ",$dt_array[3]);
$height_array=explode(" : ",$dt_array[4]);

$up_query="update cart_items set form_fields='$current_data' where cart_item_id='$current_item_id'";
$dbhelper_obj->executeQuery($up_query);




//print_r($page_count_array);
$smarty->assign("imgpath","/printo.in/cude/tempUploads/out");
$smarty->assign("imgcount",$page_count_array[1]);
$smarty->assign("imgname",$image_array[0]);

$width_format = number_format($width_array[1], 2, '.', '');
$height_format = number_format($height_array[1], 2, '.', '');

$smarty->assign("imgwidth",$width_format);
$smarty->assign("imgheight",$height_format);

$combo=$width_format . " X ". $height_format;
$smarty->assign("combo",$combo);
// Get original name //
require('includes/utility/cart_uploads_utility.php');
$cartuploadsutility_obj=new CartUploadsUtilityAdapter();
$original_name=$cartuploadsutility_obj->getOriginalName($current_item_id);
$smarty->assign("originalname",$original_name);
// End of Get original name //

// Landing Preview image //
//count($page_count_array);
//print_r($page_count_array);
if($page_count_array[1]==1)
$pimage=$image_array[0].".png";
elseif($page_count_array[1]<=9)
$pimage=$image_array[0]."_Page_1.png";
else
$pimage=$image_array[0]."_Page_01.png";

$smarty->assign("previewimage",$pimage);

$source_folder="./printo.in/cude/tempUploads/out/".$pimage;
$destination_folder="uploads/cart_img/".$current_item_id.".png";
copy($source_folder,$destination_folder);

// End of Landing Preview image //

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
$smarty->assign("parray",$parray);
// All other images display End //
/* product Info */
require('includes/utility/cart.php');
$cartutility_obj=new CartutilityAdapter();
$query="select * from cart_items as t1 left join products as t2 on (t1.product_id=t2.product_id) where t1.cart_item_id='$current_item_id'";
$cartitemsList=$cartutility_obj->getcartitems($query);
$product_name_array=explode(" ",$cartitemsList[0]['productname']);
$smarty->assign("Name1",$product_name_array[0]);
if($product_name_array[2]!="")
$smarty->assign("Name2",$product_name_array[1]." ".$product_name_array[2]);
else
$smarty->assign("Name2",$product_name_array[1]);
$smarty->assign("current_product_id",$cartitemsList[0]['productid']);

$page_size=$width_format." x ".$height_format;

$up_query="update cart_uploads set no_of_pages='$page_count_array[1]',page_size='$page_size' where cart_item_id='$current_item_id'";
$dbhelper_obj->executeQuery($up_query);

if($cartitemsList[0]['productid']==1) // Business cards 
{ $max_pages=1; $p_width=252; $p_height=145; $ew="3.5"; $eh="2.0"; }
if($cartitemsList[0]['productid']==2) // Business cards Double side
{ $max_pages=2; $p_width=252; $p_height=145; $ew="3.5"; $eh="2.0"; }
elseif($cartitemsList[0]['productid']==3) // Letter heads 
{ $max_pages=1; $p_width=200; $p_height=300; $ew="8.26"; $eh="11.69"; }
elseif($cartitemsList[0]['productid']==4) // Letter heads 
{ $max_pages=1; $p_width=''; $p_height=200; $ew="8.26"; $eh="11.69"; }
elseif($cartitemsList[0]['productid']==6) // A5 Flyer
{ $max_pages=1; $p_width='300'; $p_height=0; $ew="8.27"; $eh="5.83"; } 
elseif($cartitemsList[0]['productid']==8) // Letter heads 
{ $max_pages=1; $p_width=200; $p_height=145; $ew="8.26"; $eh="11.69"; }
elseif($cartitemsList[0]['productid']==10) // Envelopes 
{ $max_pages=1; $p_width=595; $p_height=842; $ew="8.26"; $eh="11.69"; }
elseif($cartitemsList[0]['productid']==11) // 	Folded Brochures
{ $max_pages=4; $p_width=595; $p_height=842; $ew="8.26"; $eh="11.69"; }
elseif($cartitemsList[0]['productid']==12)  // 	Standees
{ $max_pages=1; $p_width=252; $p_height=145; $ew="3.5"; $eh="2.0"; }
elseif($cartitemsList[0]['productid']==13) // A4 Flyers
{ $max_pages=2; $p_width=252; $p_height=145; $ew="3.5"; $eh="2.0"; }
elseif($cartitemsList[0]['productid']==14) // Documents
{ $max_pages=10; $p_width=683; $p_height=145; $ew="8.26"; $eh="11.69"; }
elseif($cartitemsList[0]['productid']==16) // Diary
{ $max_pages=1; $p_width=''; $p_height=200; $ew="8.26"; $eh="11.69"; }

$smarty->assign("p_width",$p_width);
$smarty->assign("p_height",$p_height);

/* start Page Validation */
if($page_count_array[1]>$max_pages)
{
$smarty->assign("PageError","Please upload your file with width ".$ew." x height ".$eh." having ".$max_pages." Page(s)");
$smarty->assign("Proceed","No");
} elseif($page_count_array[1]<$max_pages)
{
$smarty->assign("PageError","");
$smarty->assign("PageError","");
$smarty->assign("Proceed","Yes");
} else
$smarty->assign("Proceed","Yes");

if($cartitemsList[0]['productid']==14)
{
$smarty->assign("Proceed","Yes");
$smarty->assign("PageError","");
}
$smarty->assign("Proceed","Yes");
/* End Page Validation */

/* start size Validation */
$cw=$width_format;
$ch=$height_format;


/*if(($ch>=($eh * 0.9) && $ch<=($eh * 1.1)) and ($cw>=($ew * 0.9) && $cw<=($ew * 1.1)))
{
	$smarty->assign("Proceed","Yes");
} else {
	$smarty->assign("PageError","Please upload your file with width ".$ew." x height ".$eh." having ".$max_pages." Page(s)");
	$smarty->assign("Proceed","No");
}*/

/* end size Validation */
if($_GET['pid'])
{
	$pid=$_GET['pid'];
	$smarty->assign("current_product_id",$pid);
	$preId=$_GET['preId'];
	$preId='N';
	$smarty->assign("preId",$preId);
}
$smarty->display('cart_user_files_preview.tpl');

?>