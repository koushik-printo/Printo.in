<?php 
include("includes/svgtoarray.php");
//include("includes/xmltoarray.php");?>

<?php

//===========================================to read from the saved  xml then reading from it================================= 


	$cardfile="includes/VCIT038.svg";
	$contents = file_get_contents($cardfile);

	$obj = new xml2array($contents);
	$OUT = $obj->getResult();
	
	//$OUT = xml2array($contents);
	//$inner=$OUT['svg']['g']['g']['text'];
	//$innerElem=$inner['0_attr']['x'];
	
		
	$inner=$OUT['svg'][1]['g']['g']['text'];


	echo "<pre>";		
	print_r($inner);
	echo "</pre>";	


	die();

	

?>

