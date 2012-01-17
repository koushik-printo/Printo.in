<?php
require('includes/inc.php');
require('includes/utility/triggers_utility.php'); 

$namepop=$_GET['namepop'];
$emailpop=$_GET['emailpop'];
$phonepop=$_GET['phonepop'];
$pageUrl=$_GET['pageurl'];

if($namepop!="" || $emailpop!="" || $phonepop!="")
{
	 $sql="insert into userTrack(name,mobile,email,pageUrl) values('$namepop','$emailpop','$phonepop','$pageUrl')";	
	mysql_query($sql);
	$triggers_obj=new TriggersUtilityAdapter(); 
	$subject="User Need Help";
		//$email_verify_email="http://www.printo.in/email_verify.php?id=".$current_user_id;
		$message="<p><strong>Dear Team,</strong><br/>
    
  A user from website need help, His details are as below...<br/></p>
  
  <p> User Name : ".$namepop."</p>
  <p> email Id : ".$emailpop."</p>
  <p> Phone Number : ".$phonepop."</p> 
  <p> Page Url : ".$pageUrl."</p>
  
  Thanks,<br/>
  Online
  
  
 ";

	$triggers_obj->send_email("Printo Website","admin@printo.in","sumeet.a@printo.in",$subject,$message);
}



?>