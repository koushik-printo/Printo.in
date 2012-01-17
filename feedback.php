<?php


require('includes/inc.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/triggers_utility.php'); 

$dbhelper_obj=new DbHelperAdapter();
$RadioGroup1=$_POST['feedbackType'];
$topTitle=$_POST['topTitle'];
$topdescription=$_POST['topdescription'];
$topName=$_POST['topName'];
$topEmail=$_POST['topEmail'];
$storename=$_POST['storeName'];
$topMobile=$_POST['topMobile'];
$feedbackFor=$_GET['t'];
if($topdescription != "" && $topTitle != "" && $RadioGroup1 !="" )
{
	$insert_sql="insert into printo_feedback(feedback_type,topTitle,topdescription,storeName,feedbackFor,cusName,cusEmail,cusMobile)    values('$RadioGroup1','$topTitle','$topdescription','$storename','$feedbackFor','$topName','$topEmail','$topMobile')";
	$req_id=$dbhelper_obj->executeInsertQuery($insert_sql);
	$to= "feedback@printo.in";
	$subject="Feedback for our ".$feedbackFor." - ".$RadioGroup1;
	$message="Dear Team, <p>";
	$message.="We have received feedback through our website: <p>";
	$message.="Customer Name : ".$topName."<p>";
	$message.="Customer Email Address: ".$topEmail."<p>";
	$message.="Customer Mobile Number: ".$topMobile."<p>";
	$message.="Subject: ".$topTitle."<p>";
     if($storename!="") {
		 $message.="Store: ".$storename."<p>";
	 }
	$message.="Feedback Description: ".$topdescription."<p>";
	$message.="<br/> <br/>";
	print $message;
	die();
	
	// mail ( string $to , string $subject , string $message [, string $additional_headers [, string $additional_parameters ]] );
	//$triggers_obj=new TriggersUtilityAdapter(); // Create object for Trigger utility
	//$triggers_obj->send_email("Printo","admin@printo.in","feedback@printo.in",$subject,$message);
}


echo "<script type='text/javascript'> window.history.back(); </script>";
?>
