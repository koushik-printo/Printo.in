{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >
				
					<div class="breadcrumb" >
        <ul>
          <li class="first" ><a href="index.php" >Home</a></li>
          <li>Corporate Account</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">Corporate <span class="style8 style8">Account<br />
            </span></h2>
            <div class="sub_cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td class="boarder_one_pix"><table width="100%" border="0" align="left" cellpadding="1" cellspacing="1" bgcolor="#ffffff">
                    <tr>
                      <td width="600" class="login_text_h1">Send us an Enquiry </td>
                    </tr>
                    <tr>
                      <td align="left" bgcolor="#FFFFFF"><table width="600" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td width="217">&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">First Name</span></td>
                            <td>&nbsp;</td>
                            <td><input name="in[email]" id="register_110" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">Last Name</span></td>
                            <td>&nbsp;</td>
                            <td><input name="in[passwd]" id="register_120" value="" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">Contact Number</span></td>
                            <td>&nbsp;</td>
                            <td><input name="in[passwd_check]" id="register_130" value="" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>

                          <tr>
                            <td align="right"><span class="label required">Designation</span></td>
                            <td>&nbsp;</td>
                            <td><input name="in[firstname]" id="register_210" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">City </span></td>
                            <td>&nbsp;</td>
                            <td><input name="in[lastname]" id="register_220" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">Email address</span></td>
                            <td>&nbsp;</td>
                            <td><input name="register_" id="register_" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">Company Name</span></td>
                            <td>&nbsp;</td>
                            <td><input name="register_" id="register_" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">No of employees</span></td>
                            <td>&nbsp;</td>
                            <td><input name="register_" id="register_" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">Annual turnover</span></td>
                            <td>&nbsp;</td>
                            <td><input name="register_" id="register_" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><span class="label required">Annual Print Budget</span></td>
                            <td>&nbsp;</td>
                            <td><input name="register_" id="register_" type="text" size="30" /></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right" valign="top"><span class="label required">Requirements</span></td>
                            <td>&nbsp;</td>
                            <td valign="top"><textarea name="register_" cols="30" id="register_"></textarea></td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><a href="#"><img src="images/submit_bt.jpg" width="73" height="26" border="0" /></a></td>
                          </tr>
                          <tr>
                            <td width="213" align="right">&nbsp;</td>
                            <td width="20">&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>
            </div>
          </div>
        </div>
      </div>
			</div>
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
