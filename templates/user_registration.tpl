{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<form name="form1" method="post" action="" class="label-horizontal" >
			  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><img src="images/regi_banner.jpg" width="909" height="143" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="47%" align="left" valign="top">
                      <div class="upper-shadow">
                      	<div class="lower-shadow">
                      	  <table width="425" border="0" align="left" cellpadding="1" cellspacing="1" bgcolor="#ffffff" style="margin-top:15px;">
                            <tr>
                              <td width="600" class="login_text_h1">Login Information</td>
                            </tr>
                            <tr>
                              <td align="left" bgcolor="#FFFFFF"><table width="421" border="0" cellspacing="0" cellpadding="0">
                               {if $err_msg ne ''}
                               <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td width="217">{$err_msg}</td>
                                  </tr>
                                  {/if}
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td width="217">&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right"><span class="label required">Email Address  *</span></td>
                                    <td>&nbsp;</td>
                                    <td><input name="user_email" id="user_email" type="text" value="{$cur_user_email}" /></td>
                                  </tr>
                                  <tr>
                                    <td align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right"><span class="label required">Password  *</span></td>
                                    <td>&nbsp;</td>
                                    <td><input  name="user_password" value="{$cur_user_password}" id="user_password" type="password" /></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right"><span class="label required">Password (again)  *</span></td>
                                    <td>&nbsp;</td>
                                    <td><input name="confirm_password" value="{$cur_confirm_password}" id="confirm_password" type="password" /></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td colspan="3" class="login_text_h1">Contact Information [ Optional ]</td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right"><span class="label required">First Name</span></td>
                                    <td>&nbsp;</td>
                                    <td><input name="first_name" id="first_name" type="text" value="{$cur_first_name}" /></td>
                                  </tr>
                                  <tr>

                                    <td align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right"><span class="label required">Last Name </span></td>
                                    <td>&nbsp;</td>
                                    <td><input name="last_name" id="last_name" type="text" value="{$cur_last_name}" /></td>
                                  </tr>
                                  <tr>
                                    <td align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right"><span class="label required">Mobile</span></td>
                                    <td>&nbsp;</td>
                                    <td><input name="mobile" id="mobile" type="text" value="{$cur_mobile}" /></td>
                                  </tr>
                                  <tr>
                                    <td align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td align="right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                    <input name="Submit" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " />
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="213" align="right">&nbsp;</td>
                                    <td width="20">&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table>
                         
                          <div class="clear_both"></div>
                      	</div><div class="clear_both"></div>
                      </div><div class="clear_both"></div>                      </td>
                      <td width="2%">&nbsp;</td>
                      <td width="51%" valign="top">
                      <div class="upper-shadow">
                      	<div class="lower-shadow">
                      	 
                         
                          <table width="425" border="0" align="left" cellpadding="1" cellspacing="1" bgcolor="#ffffff" style="margin-top:15px;">
                            <tr>
                              <td width="600" class="login_text_h1">Why Register </td>
                            </tr>
                            <tr>
                              <td align="left" valign="top" bgcolor="#FFFFFF"><table width="400" border="0" cellspacing="0" cellpadding="0" style="margin-left:5px;">
                                  <tr>
                                    <td width="18">&nbsp;</td>
                                    <td width="11">&nbsp;</td>
                                    <td width="371">&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td colspan="3" style="padding-left:8px;">Having a printo.in account allows you to : </td>
                                  </tr>
                                  <tr>
                                    <td colspan="3"></td>
                                  </tr>
                                  <tr>
                                    <td colspan="3" style="padding:8px;"><ul>
                                        <li class="upload_document_two">Get 50% off on your first order!</li>
                                      <li class="upload_document_two">Upload and manage your artwork/design files online</li>
                                      <li class="upload_document_two">Get free access to tips &amp; tricks from experts</li>
                                    </ul></td>
                                  </tr>
                                  <tr>
                                    <td height="16" colspan="3"></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td class="login_link">&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table>
                          <div class="clear_both"></div>
                      	</div><div class="clear_both"></div>
                      </div><div class="clear_both"></div>                      </td>
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
