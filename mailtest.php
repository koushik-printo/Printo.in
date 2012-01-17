<?php
/*
Filename : triggers_utility.php
Author : Printo - Koushik
Table Name : ALL User Tables
Utility Name : TriggersUtilityAdapter
*/
	ini_set('SMTP','localhost'); 
	ini_set('sendmail_from', 'vinay.s@printo.in'); 


//   $to_email="ganeshn0309@gmail.com";
$to_email="vinay898@gmail.com";

   $subject="PLEASE CALL VINAY !!! Printo !!! One stop printing";
   $textmessage="Welcome to printo !!! Welcome to printo !!! Welcome to printo !!! Welcome to printo !!! Welcome to printo !!! ";
   $from_name="Printo";
   $from_email="sudeep@printo.in";

	$headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
    $headers .= "X-Priority: 3\n";
    $headers .= "X-MSMail-Priority: Normal\n";
    $headers .= "X-Mailer: php\n";
    $headers .= "From: $from_name <$from_email>\r\n";
	
	echo "Mail start";
	
	//echo $to_email." <br><br> ".$subject." <br><br> ".$textmessage." <br><br> ".$headers;
    mail($to_email,$subject,$textmessage,$headers);
	//exit;
    echo "Mail Sent";
	
?>
