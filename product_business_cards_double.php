<?php
/*
Filename : business_cards.php
Author : Printo - Koushik
Table Name : Nil
Functionality : Dispaly Business cards ( staic page)
*/

require('includes/inc.php');
require('includes/utility/db_helper.php'); 
require('includes/utility/form_validation.php');
require('includes/classes/userprofiles_class.php');
require('includes/classes/userfiles_class.php');
require('includes/utility/triggers_utility.php'); 




if(isset($_POST[ReqSubmit_x]))
	{
		
			$dbhelper_obj=new DbHelperAdapter(); // Create object for users utility
			$validation_obj=new ValidationAdapter(); // Create object for users utility
			$triggers_obj=new TriggersUtilityAdapter(); // Create object for Trigger utility
			
			
			$err_userName=$validation_obj->checkNull($_POST[name],"Enter User Name");
			$err_userdesc=$validation_obj->checkNull($_POST[description],"Enter Description");
			$err_phoneNumber=$validation_obj->checkNull($_POST[phone],"Enter Phone Number");
			$err_phoneNumber=$validation_obj->checkNumeric($_POST[phone],"Enter Phone Number");
			$err_emailBlank=$validation_obj->checkNull($_POST[email],"Enter Email Address");
			$err_invalidEmail=$validation_obj->checkEmail($_POST[email],"Invalid User Email");

			$smarty->assign('err_userName',$err_userName);
			$smarty->assign('err_userdesc',$err_userdesc);
			$smarty->assign('err_phoneNumber',$err_phoneNumber);
			$smarty->assign('err_emailBlank',$err_emailBlank);
			$smarty->assign('err_invalidEmail',$err_invalidEmail);
			
			$username=$_POST['name'];
			$userphone=$_POST['phone'];
			$useremail=$_POST['email'];
			$userdescription=$_POST['description'];
			$paperType=$_POST['paperType'];
			$additionalFinishing=$_POST['additionalFinishing'];
			
			if($err_userName=="" && $err_userdesc=="" && $err_phoneNumber=="" && $err_emailBlank=="" && $err_invalidEmail=="")
			{
					if(is_uploaded_file($_FILES[uploadfile][tmp_name]))
						{
							$screen_extn=$validation_obj->getFileExtension($_FILES[uploadfile][name]);
							if($screen_extn=="exe" || $screen_extn=="bat" || $screen_extn=="sh"  || $screen_extn=="js")
							{ 
								$err_msg="Invalid file upload";
								$smarty->assign('err_msg',$err_msg);
							} 
							else
							{
								$fn=uniqid("").".".$screen_extn;
								$up_folder="uploads/enquiry_files/".$fn;
								$click= "<strong><a href='". $up_folder ." '>Click here</a></strong> to download uploaded file ";
								move_uploaded_file($_FILES[uploadfile][tmp_name],$up_folder);
							}
						}   //End of file upload validation
					 $insert_sql="insert into printo_enqiry(name,phone,email,special_requirement,attach_artwork,enqiry_type,type_of_job,req_date) values('$_POST[name]','$_POST[phone]','$_POST[email]','$_POST[description]','$fn','e','double bz',now())";
			 
			 
					 $req_id=$dbhelper_obj->executeInsertQuery($insert_sql);
			
					/* Mail For the online Team  Start Here */
				
						if($click=="") 
							{ 
								$click = "&nbsp;click";
							}
						
				
							$today=date("M d, Y");
							$subject="New Enquiry : ".$req_id." on ".$today;
							$message="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<title>Printo</title>
</head>

<body leftmargin='0' rightmargin='0' topmargin='0' bottommargin='0'>
<table width='100%' border='0' cellpadding='0' cellspacing='10'>
  <tr>
    <td style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#333333;'>Hi, Online Team,</td>
  </tr>
  <tr>
    <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>We received below enquiry form online user. please take appropriate step to fullfil ths order</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor='#eeeeee'><table width='100%' border='0' cellpadding='0' cellspacing='5'>
      <tr>
        <td height='30' colspan='2' align='left' bgcolor='#333333' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#ffffff; padding-left:20px;'>Enquiry Detail</td>
        </tr>
      <tr>
        <td width='150' align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong>Enquiry Type</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>Business Cards Double Side</td>
      </tr>
      <tr>
        <td align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong>Paper Type</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>". $paperType."</td>
      </tr>
      <tr>
        <td align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong>Additional Finishing</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>".$additionalFinishing."</td>
      </tr>
      <tr>
        <td align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong> Desicription</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>".$userdescription."</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor='#eeeeee'><table width='100%' border='0' cellpadding='0' cellspacing='5'>
      <tr>
        <td height='30' colspan='2' align='left' bgcolor='#333333' style='font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; color:#ffffff; padding-left:20px;'>User Details</td>
      </tr>
      <tr>
        <td width='150' align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong>Name</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>".$username."</td>
      </tr>
      <tr>
        <td align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong>Emails</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>".$useremail."</td>
      </tr>
      <tr>
        <td align='right' style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'><strong>Phone No</strong></td>
        <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>".$userphone."</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style='font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;'>".$click."</td>
  </tr>
</table>
</body>
</html>";


						$triggers_obj->send_email("Printo","admin@printo.in","online@printo.in",$subject,$message);


					
					
					
					/* Mail For the online Team  Start Here */
			
			
					header("location:alert.php?rqid=$req_id");
			} 
		
	}
		
	

$smarty->display('product_busi_card_double.tpl');
?>
