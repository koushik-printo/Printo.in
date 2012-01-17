<?php
/*
Filename : newsletter.php
Author : Printo - Koushik
Table Name : nil
Functionality : Newsletter 
*/

require('includes/inc.php');
require('includes/utility/triggers_utility.php');
$triggers_obj=new TriggersUtilityAdapter(); // Create object for email trigger

/* post string values */
$cur_email=$_POST[newsletter_email];

/* Send email */
$subject="Newsletter Subscription Confirmation";
$url="http://www.printo.in/printo_v2/newsletter_confirm.php?em=".$cur_email;
$email_array=explode("@",$cur_email);

$message="<p>Dear  ".$email_array[0].",<br>
    <br>
  Thank your for your newsletter subscription on <a href=http://www.printo.in>www.printo.in</a>.<br>
  To complete your subscription, please click on the link below  or copy and paste it in a browser. </p>
<p><a href=".$url.">".$url."</a><br>
  Thank you!<br>
  The printo.in team<br>
  PS : <em>Please do not reply to this message. This e-mail  message has been sent from an unmonitored e-mail address. We will be unable to  respond to any messages sent to this e-mail address.</em></p>
<table border=1 cellspacing=0 cellpadding=0>
  <tr>
    <td width=616 valign=top><br>
      Having problems with registration or got a question for us? Call us on 1866 400 10 200 or <a href=mailto:onlinesupport@printo.in>onlinesupport@printo.in</a> </td>
  </tr>
</table>";
$triggers_obj->send_email("Printo","admin@printo.in",$cur_email,$subject,$message);
/* End of sending email */


header("location:alert.php?act=newsletter_reg");

?>