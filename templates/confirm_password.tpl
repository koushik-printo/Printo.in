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
                  <td><h2>Create <span>Your Password</span></h2></td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center"><table border="0" cellpadding="0" cellspacing="0" style="margin-left:5px;">
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
                      <td colspan="2" align="left"><h3 style="color:#1ba5c9; font-size:14pt;"><strong>your new password</strong></h3></td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><input name="user_password" size="20" type="password" style="width:300px; height:30px;" value="{$cur_user_password}" /></td>
                    </tr>
                    <tr>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><h3 style="color:#1ba5c9; font-size:14pt;"><strong>confirm new password</strong></h3></td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left"><input name="confirm_password" size="20" type="password" style="width:300px; height:30px;" value="{$cur_confirm_password}" /></td>
                    </tr>
                    <tr>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td><input name="ConfirmPassword" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " />
                      <input type="hidden" name="current_user_id" id="current_user_id" value="{$current_user_id}" /></td>
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
