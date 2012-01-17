<?php

session_start();

require('includes/inc.php');
$file=session_id();




if(!isset($_GET['true']))

{
	$true=$_GET['true'];
	
}
else
{
 $true=$_GET['true'];
}

 $smarty->display('preview.tpl');
 
?>

