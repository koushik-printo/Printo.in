{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<form name="form1" action="" method="post">
			  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                 <td style="background:url(images/proTabBgAct1.jpg) 0 0 repeat; height:25px; border-bottom:1px solid #CCC;" colspan="2"><h2 style="height:25px; "><span>Forgot</span> your password?</h2></td>
                 
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" width="400"><table border="0" cellpadding="0" cellspacing="0" style="margin-left:5px;">
                    <tr>
                      <td  style=" font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Please enter the e-mail address for your account.
                       A verification token will be sent to you.
                       Once you have received the token
                       , you will be able to choose a new password for your account.</td>
                      <td>&nbsp;</td>
                    </tr>
                    <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    {if $err_msg ne ''}
                    <tr>
                      <td style="color:#F79321; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">{$err_msg}</td>
                      <td>&nbsp;</td>
                    </tr>
                    {/if}
                    </tr>
                    <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><h3 style="color:#1ba5c9; font-size:14pt;"><strong>Please enter your email address</strong></h3></td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><input name="user_email" size="20" type="text" style="width:300px; height:30px;" value="{$cur_user_email}" /></td>
                    </tr>
                    <tr>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                      <td colspan="2"></td>
                    </tr>
                    <tr>
                      <td><input name="ForgotPassword" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " /></td>
                      <td>&nbsp;</td>
                    
                    </tr>
                    <tr>
                      <td height="5" colspan="2"></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  </table></td>
                  <td width="400">
                  <div><img src="images/CalendarSlider.jpg" width="400"/></div>
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
