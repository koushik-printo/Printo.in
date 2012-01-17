<?php 
require('includes/inc.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/triggers_utility.php'); 

$dbhelper_obj=new DbHelperAdapter();
$ID=$_POST['id'];
$val=$_POST['val'];
$i=0;
if($val != ""  && $i==0)
{
	
	$to= "feedback@printo.in";
	$subject="Error Corel engine Stop ".$feedbackFor." - ".$RadioGroup1;
	$message="Dear Team, <p>";
	$message.="It seems  Corel engine stop please check or inform Koushik(9008301306)";
	$message.="Thanks,<br/> ";
	$message.="Online Team";
	$message.="<br/> <br/>";
	print $message;


	
	// mail ( string $to , string $subject , string $message [, string $additional_headers [, string $additional_parameters ]] );
	$triggers_obj=new TriggersUtilityAdapter(); // Create object for Trigger utility
	$triggers_obj->send_email("Printo","admin@printo.in","feedback@printo.in",$subject,$message);
	$i++;
}



?>