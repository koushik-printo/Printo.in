{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>
<script language="JavaScript" type="text/javascript">
/*<![CDATA[*/
function changemode(rad)
{
	 var rads=document.getElementsByName(rad.name);
	 if(rads[1].checked)
	 {
	
	$('#loginDiv').css('height','400px');
	$('#headerDiv').html("<span>log in</span> /  Register");
	
	// document.getElementById('ulogin').style.display= 'block';
	 $('#ulogin').slideDown();
	 //document.getElementById('uregister').style.display = 'none';
	 $('#uregister').hide('slow');
	 document.getElementById('user_password').disabled = false;
	 }
	if(rads[0].checked)
	 {
	$('#loginDiv').css('height','200px');
	$('#headerDiv').html("log in /  <span>Register</span>");
	 //document.getElementById('ulogin').style.display = 'none'; 
	 $('#ulogin').slideUp();
	 //document.getElementById('uregister').style.display= 'block';
	 $('#uregister').show('slow');
	 document.getElementById('user_password').disabled = true;
	 }
 } 
function validation()
{
	 if(rads[0].checked)
	 {
			if(document.getElementById('user_email').value=="")
			{
				alert("Enter the mail address");
				return false;
			}
		 	else if(document.getElementById('user_password').value="")
			{
				alert("Enter Your Password Please");
				return false
			}
			else 
			{
				return true;
			}
	 }
	if(rads[1].checked)
	 {
	 		if(document.getElementById('user_email').value=="")
			{
				alert("Enter the mail address");
				return false;
			}
			else 
			{
				return true;
			}
	 }
}

/*]>*/
</script>
{/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<form name="form1" action="" method="post" onsubmit="return validation();">
			  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                
                
                
                  <td style="background:url(images/proTabBgAct1.jpg) 0 0 repeat; height:25px; border-bottom:1px solid #CCC;" colspan="2"><h2 style="height:25px; " id="headerDiv"><span>log in</span> /  Register</h2></td>
                </tr>
              
                <tr>
                  <td align="left" width="400" id="loginDiv"><table border="0" cellpadding="0" cellspacing="0" style="margin-left:5px;">
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    {if $err_msg ne ''}
                    <tr>
                      <td>&nbsp;</td>
                      <td>{$err_msg}</td>
                    </tr>
                    {/if}
                    <tr>
                      <td colspan="2" align="left"><h3 style="color:#1ba5c9; font-size:14pt;"><strong>Your e-mail address</strong></h3></td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><p>
                        <input name="user_email" size="20" type="text" style="width:320px; height:30px;" value="{$cur_user_email}" />
                        
                       	<div >
                        <font color="#F79321" size="2">
                        
                        <strong>
                        {if $err_user_email ne ''} {$err_user_email} {/if}
                        {if $err_invalid_email ne ''} {$err_invalid_email} {/if}
                        {if $err_Email_Password ne ''} {$err_Email_Password} {/if}
                        {if $err_emailExist ne ''} {$err_emailExist} </br> Click here if 
		  you <a class="login_link" href="forgot_password.php"> Forgot your password</a>. {/if}
                        </strong>
                        </font>
                        </div>
                      </p></td>
                    </tr>
                    <!--<tr>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>-->
                     <tr>
                      <td height="30" align="left" style="font-family: Tahoma, Geneva, sans-serif;"><input name="user_mode" type="radio" class="radio"  style="cursor:pointer;" value="uregister" onclick="changemode(this);" {if $in_registration ne ''} checked="checked" {/if} />
                        &nbsp;&nbsp;Create an account now  </td>
                      <td style="font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp;&nbsp;<input name="user_mode" type="radio" class="radio"  style="cursor:pointer;"  value="ulogin" {if $in_registration eq ''} checked="checked" {/if} onclick="changemode(this);" />
                        &nbsp;&nbsp;Login to my account</td>
                    </tr>
                    
                    </table>
                    <div id="ulogin" {if $in_registration ne ''} style="display:none;" {/if}>
                   			<table border="0" cellpadding="0" cellspacing="0" style="margin-left:5px;">
                           
                     <tr>
                      <td colspan="2" align="left">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><h3 style="color:#1ba5c9; font-size:14pt;"><strong>Enter your password</strong></h3></td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><input type="password" name="user_password" id="user_password" style="width:320px; height:30px;" value="{$cur_user_password}" />
                        <br /><br />
                      <span class="red"> {if $err_user_password ne ''} {$err_user_password} {/if}</span>	</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="23" colspan="2" style="font-family: Tahoma, Geneva, sans-serif;"><label>
                        <input type="checkbox" name="remember" id="remember" value="1" style="cursor:pointer; position:relative;" />
                        Remember me on this computer</label>
                        &nbsp;&nbsp;|&nbsp;&nbsp; <a href="forgot_password.php" class="login_link"> Forgot password?</a></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2"></td>
                    </tr>
                    <tr>
                      <td><input name="Login" type="image" src="images/btn_login-ico.jpg" style="background:none; border:none; padding:0;"/><input name="actionmessage" type="hidden" value="{$actionmessage}" /></td>
                     
                    </tr>
                    </table>
                    </div>
                    <div id="uregister" {if $in_registration eq ''} style="display:none;" {else} style="display:block;" {/if} >
                   	<table border="0" cellpadding="0" cellspacing="0" style="margin-left:5px;">
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2"></td>
                    </tr>
                    
                    <tr>
                      <td>&nbsp;</td>
                      <td align="right"><input name="Register" type="image" src="images/btn_register_ico.jpg" style="background:none; border:none; padding:0; " /></td>
                    </tr>
                    <tr>
                      <td height="88" align="left">
                        &nbsp;&nbsp;</td>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    
                    </table>
                    </div>
                  </td>
                  <td height="450">
                  <div><img src="images/home-slider-business-card.gif" width="400"/></div>
                  <div><img src="images/home-slider-bw.gif" width=400""/></div>
                  
                  
                  
                  </td>
                </tr>
                
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                
              </table>
		  </form>
            
	  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
