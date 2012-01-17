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
if($topdescription != "" && $topTitle != "")
{
	$insert_sql="insert into printo_feedback(feedback_type,topTitle,topdescription,storeName,feedbackFor,cusName,cusEmail,cusMobile)    values('$RadioGroup1','$topTitle','$topdescription','$storename','$feedbackFor','$topName','$topEmail','$topMobile')";
	$req_id=$dbhelper_obj->executeInsertQuery($insert_sql);
	$to= "feedback@printo.in";
	$subject="Feedback through ".$feedbackFor." - ".$RadioGroup1 ." - Thank you";
	$message="Hi, <br/>";
	$message.="We Got a feed back from Customer. The details are as below: <br/>";
	$message.="Costomer Name : ".$topName."<br/>";
	$message.="Customer Email Address: ".$topEmail."<br/>";
	$message.="Customer Mobile Number: ".$topMobile."<br/>";
	$message.="Feedback Subject: ".$topTitle."<br/>";
	$message.="Feedback Description: ".$topdescription ."<br/>";
	$message.="<br/> <br/>";
	// mail ( string $to , string $subject , string $message [, string $additional_headers [, string $additional_parameters ]] );
	$triggers_obj=new TriggersUtilityAdapter(); // Create object for Trigger utility
	$triggers_obj->send_email("Printo","admin@printo.in","feedback@printo.in",$subject,$message);
}


echo "<script type='text/javascript'> window.history.back(); </script>";
?>
