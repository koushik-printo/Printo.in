<?php
/*
Filename : email_verify.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Email Verification
*/

require('includes/inc.php');
require('includes/utility/form_validation.php'); 
require('includes/utility/db_helper.php'); 
require('includes/utility/users.php'); 
require('includes/classes/userprofiles_class.php'); 
require('includes/utility/triggers_utility.php'); 

/* Query string values */
$get_link_id=$_GET[id];

$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility
$recCount=$dbhelper_obj->recordCount("select count(*) from user_profiles where email_verify='$get_link_id'");
if($recCount<=0)
{
header("location:alert.php?act=fcancel");
} else {
$userprofile_obj=new UserProfilesAdapter(); // Create object for user's profile calss
$userDetails=$userprofile_obj->getSingleRecord("select * from user_profiles where email_verify='$get_link_id'");
$userid=$userDetails['userid'];

$users_obj=new UsersAdapter(); // Create object for users utility
$triggers_obj=new TriggersUtilityAdapter(); // Create object for users utility

$users_obj->verifyEmail($userid);



/* Send email */
$subject="Welcome to Printo.in";
$message="<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<title>Printo</title>
</head>

<body leftmargin='0' rightmargin='0' topmargin='0' bottommargin='0' marginheight='100' marginwidth='100'>



<table width='100%'  border='0' cellpadding='0' cellspacing='0' style='min-width:770px;'>
  <tr>
    <td><table width='100%' border='0' cellspacing='20' cellpadding='0'>
      <tr>
        <td><table width='100%' border='0' cellspacing='0' cellpadding='0'>
          <tr>
            <td><img src='http://www.printo.in/images/logo-email-order.jpg' width='125' height='49' /></td>
            <td align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:18px; font-weight:bold; color:#229ed8;'>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td style='border-top:solid 1px #ccc; padding-top:20px; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'><p style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#229ed8; padding:0 0 14px 0; margin:0;'>Dear Customer, </p>
          <p style='padding:0 0 14px 0; margin:0;'> Welcome to <a href='http://www.printo.in/' target='_blank'>www.printo.in</a> India's first &amp; largest professional print provider. </p>
          <p style='padding:0 0 0 0; margin:0;'> We are trying to make printing easy through great quality, quick turn-around time and unbelievable prices! All your printing needs are now a few mouse clicks away. Customise a print product from our designs or upload your own artwork (PDF, CDR, AI). Be it your marketing collateral, financial reports, presentations, banners &amp; signage or simply business cards; you can order everything through our simple online interface. </p></td>
      </tr>
     
      <tr>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'> We would like to confirm that your registered email is: ".$userDetails['useremail']."</td>
      </tr>
      
      
      <tr>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'> Making your <a href='http://www.printo.in/' target='_blank'>Printo.in</a> experience delightful is top priority for us. We are in our early days so please do let us know if there is anything we can do to make it better! Please email your suggestions, concerns or feedback to <a href='mailto:online@printo.in' target='_blank'>online@printo.in</a> or call us on <strong>+91 (80) 400 10 200.</strong></td>
      </tr>
	  <tr>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'> For your reference, the 'Terms of Use' can be found at : <a href='http://www.printo.in/terms_of_use.php' target='_blank'>http://www.printo.in/terms_of_use.php</a></td>
      </tr>
      <tr>
        <td ><table width='100%' border='0' cellspacing='0' cellpadding='0'>
          <tr>
            <td style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#229ed8; padding-bottom:10px;'><strong>Got a question?</strong></td>
            </tr>
          <tr>
            <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'> Call us on +91 990278 0000 between 9.30am and 7pm, Monday to Saturday, and we will be happy to answer any queries you may have. You may also email us at <a href='mailto:onlineorders@printo.in' target='_blank'>online@printo.in</a> and we will get back to you within 24 working hours, if not earlier.</td>
            </tr>
			<tr>
			<td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333;'><p>Thanks again, for registering!<br/>
                <span style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#fff;'>The Printo.in team</span></p></td>
			</tr>
			
			
          </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor='#229ED8'><table width='100%' border='0' cellspacing='0' cellpadding='20'>
      <tr>
        <td><table width='100%' border='0' cellspacing='0' cellpadding='0'>
            <tr>
            <td style='border-top:solid 1px #91cfec; font-family:Arial, Helvetica, sans-serif; font-size:12px;  color:#fff; padding:10px 0 0 0;'><br />
              <em>Please do not reply to this message. This e-mail message has been sent from an unmonitored e-mail address. We will be unable to respond to any messages sent to this e-mail address.</em></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>";

$triggers_obj->send_email("Printo","admin@printo.in",$userDetails['useremail'],$subject,$message);
/* End of sending email */

$validation_obj=new ValidationAdapter(); // Create object for form validation
$en_value=$validation_obj->getuuid();
$up_qry="update user_profiles set reset_link='$en_value',reset_generated_date=now() where user_id='$userid'";
$dbhelper_obj->executeQuery($up_qry);

header("location:confirm_password.php?id=$en_value");

}
?>
