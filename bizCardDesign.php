<?php
/*
Filename : bizCardDesign.php
Author : Printo - Indra
Table Name : Nil
Functionality : Dynamic page - bizCardDesign
*/


require('includes/inc.php');
require("includes/svgtoarray.php");
require('includes/utility/db_helper.php');
require('includes/utility/pricing.php');
require('includes/utility/cart.php');
require('includes/classes/cart_class.php');
require('includes/classes/templates_class.php');
require('includes/classes/products_class.php');
require('includes/classes/cartitems_class.php');
require('validations/cart_design_validation.php');

$editname=$_REQUEST['name'];
$cardfile="indra_test/demo_xml/".$editname.".svg";
$contents = file_get_contents($cardfile);
$obj = new xml2array($contents);
$OUT = $obj->getResult();

$inner=$OUT['svg'][1]['g']['text'];

/*echo "<pre>";		
print_r($OUT['svg']);
echo "</pre>";*/

/*echo "<pre>";		
print_r($inner);
echo "</pre>";*/	

$j=0;

foreach($inner as $arr1)
{	
	$i=1;
	foreach($arr1 as $arr2)
	{	
			if($i==2){$arr2=($arr2/1200)*690 + 15;}
			if($i==3){$arr2=($arr2/685.714)*397 + 40;}
			if($i==7){$arr2=($arr2/685.714)*397;}
			$smarty->assign("t".$j.$i,$arr2);
			$i++;
	}
	$j++;
	
}

	//die();
		$t="t";
		$text=1;
		$x=2;
		$y=3;
		$id=4;
		$color=5;
		$weight=6;
		$size=7;
		$family=8;
	
	
	
	$pre1="<pre>";
	$pre2="</pre>";
	
	$smarty->assign("x",$x);
	$smarty->assign("y",$y);
	$smarty->assign("text",$text);
	$smarty->assign("id",$id);
	$smarty->assign("color",$color);
	$smarty->assign("weight",$weight);
	$smarty->assign("size",$size);
	$smarty->assign("family",$family);
	
	
	$smarty->assign("pre1",$pre1);
	$smarty->assign("pre2",$pre2);
	$smarty->assign("t",$t);
	$smarty->assign("editname",$editname);
	$smarty->assign("inner",$inner);
	$smarty->display('bizCardDesign.tpl');


?>
