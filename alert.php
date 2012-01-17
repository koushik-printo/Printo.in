<?php 
/*
Filename : user_login.php
Author : Printo - Koushik
Table Name : user_profiles
Functionality : User Login form
*/
require('includes/inc.php');  // main settings like smarty, database,....

/* Query string values */
$current_order_id=$_GET[order_id];
$cur_act=$_GET[act];
$request_id=$_GET[rqid];

if($current_order_id!="")
{
$smarty->assign('actionmessage','Your Order Id is: <strong>'.$current_order_id.'</strong>. <p>We confirm your payment has gone through successfully and would like to thank you for the purchase. Our team will send you an email shortly.');
$smarty->assign('googletext','<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1011242239;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "mJ35CPm8sQIQ_6mZ4gM";
var google_conversion_value = 0;
if (1) {
 google_conversion_value = 1;
}
/* ]]> */
</script>
<script type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1011242239/?value=1&amp;label=mJ35CPm8sQIQ_6mZ4gM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>');
}
if($request_id!="")
{
$smarty->assign('actionmessage','Your Quote Request No. is '.$request_id.'. <p>Thank you for your interest in Printo products!  Your information has been received and our team will respond to you within 24 working hours. </p>');
$smarty->assign('googletext','<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 961295951;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "AX7NCImh9gIQz-ywygM";
var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/961295951/?label=AX7NCImh9gIQz-ywygM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>');
}
if($cur_act=="reg")
$smarty->assign('actionmessage','Thank you for registering! A verification mail has been sent to your email address, along with a link. Clicking on the link will complete verification and bring you back to our site.  ');

if($cur_act=="em")
$smarty->assign('actionmessage','Your email has been verified!');

if($cur_act=="fp")
$smarty->assign('actionmessage','A link to change your password has been sent to your email address.');

if($cur_act=="trackerr")
$smarty->assign('actionmessage','Sorry. It seems you have entered an invalid Tracking Code.');

if($cur_act=="newsletter_reg")
$smarty->assign('actionmessage','Thank you for signing up for our newsletter. Please check your email and click on the confirmation link, to confirm your newsletter subscription. You can also follow us on Twitter, become a fan on Facebook or follow our blog for new offers, contests and much more!');

if($cur_act=="newsletter_confirm")
$smarty->assign('actionmessage','Your email address has been confirmed for newsletter subscription in printo.');

if($cur_act=="newsletter_exist")
$smarty->assign('actionmessage','You email address is already in the newsletter subscription list. Thanks for adding your name. In case you are not receiving a newletter, please send us a message from the Feedback form. ');

$smarty->display('alert.tpl');
?>
