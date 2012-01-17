{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{literal}

<!-- <script type="text/javascript" src="js/main/jquery.min.js"></script>-->
 <script type="text/javascript" src="js/custom/general/jquery.main.userinfo.js"></script>

{/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
      <div class="content-box-r" >
        <form name="form1" id="form1" method="post" action="" class="label-horizontal" onsubmit="return checkData();">
        <div class="form_frame">
                    <div class="upper-shadow">
                        <div class="lower-shadow">
  <table width="670" border="0" class="form">
            {if $uselast eq 'Yes'}
            <tr>
            <td height="30" colspan="4"><a href="cart_userinfo.php?use=1">Use my last ordered address</a>&nbsp; </td>
            </tr>
            {/if}
            <tr>
            <span class="red">{$err_msg}</span>
            <td height="30" colspan="4" bgcolor="#229ed8" class="section"><strong class="section">Billing Address</strong><input type="hidden" name="billing_email" id="billing_email" value="{$cur_billing_email}" /></td>
            </tr>
            <tr>
            <td   class="pad-top-3px"  width="241" align="right" valign="top"><label for="label"><span class="red">*</span>First Name :</label></td>
            <td width="209" valign="top"><input type="text" name="billing_fname" id="billing_fname" value="{$cur_billing_fname}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_fname ne ''} {$err_billing_fname} {/if}</span></td>
            <td   class="pad-top-3px" width="241" align="right" valign="top"><span class="red">*</span>Last Name :</td>
            <td width="229" valign="top"><input type="text" class="big" name="billing_lname" id="billing_lname" value="{$cur_billing_lname}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_lname ne ''} {$err_billing_lname} {/if}</span></td>
            </tr>
            <tr>
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>Address 1 :</td>
            <td valign="top"><input type="text" name="billing_address1" id="billing_address1" value="{$cur_billing_address1}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_address1 ne ''} {$err_billing_address1} {/if}</span></td>
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>Address 2 :</td>
            <td valign="top"><input type="text" name="billing_address2" id="billing_address2" value="{$cur_billing_address2}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_address2 ne ''} {$err_billing_address2} {/if}</span></td>
            </tr>
            <tr>
            <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Address 3 :</td>
            <td valign="top"><div id="txtHint"><input type="text" name="billing_area" id="billing_area" value="{$cur_billing_area}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_area ne ''} {$err_billing_area} {/if}</span></div></td>
            
            <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Postal Code :<span class="red"></span></td>
            <td valign="top"><input type="text" name="billing_pincode" id="billing_pincode" value="{$cur_billing_pincode}" /> <!--onchange="getbillingarea(this.value);"-->
            <br />
            <span class="red">{if $err_billing_pincode ne ''} {$err_billing_pincode} {/if}</span></td>

            </tr>
            <tr>
            <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>City :</td>
            <td valign="top"><input type="text" name="billing_city" id="billing_city" value="{$cur_billing_city}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_city ne ''} {$err_billing_city} {/if}</span></td>
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>State :</td>
            <td valign="top"><select name="billing_state" id="billing_state" onchange="myformchange();">
                                            <option value="0">Select State</option>
                                            
                                        {section name=nr loop=$stateList}
                                        
                                            <option value="{$stateList[nr].stateid}" {if $cur_billing_state eq $stateList[nr].stateid} selected {/if}>{$stateList[nr].statename}</option>
                                            
                                        {/section}
                                        
                                          </select>
            <br />
            <span class="red">{if $err_billing_state ne ''} {$err_billing_state} {/if}</span></td>
            </tr>
            <tr>
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>Country :</td>
            <td valign="top">
            <input type="radio" name="billing_country" id="billing_country_1" value="India" checked="checked" />India&nbsp;
            <input type="radio" name="billing_country" id="billing_country_2" value="International" onclick="countryOther()"/>International</td>
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>Mobile :</td>
            <td valign="top"><input type="text" name="billing_phone" id="billing_phone" value="{$cur_billing_phone}" onchange="myformchange();" />
            <br />
            <span class="red">{if $err_billing_phone ne ''} {$err_billing_phone} {/if}</span></td>
            </tr>
  </table>
  
  </div>
 					</div>
  		<div class="clear_both"></div>
  
  
  
  			<br />
  <div class="upper-shadow">
  <div class="lower-shadow">
 		 <table width="670" border="0" class="form">
    <tr>
      <td height="30" colspan="4" bgcolor="#229ed8" class="section"><strong class="section">Shipping Address</strong></td>
    </tr>
    
    <tr>
      <td height="30" colspan="4" class="pad-top-3px" valign="top" bgcolor="#FFFFFF" ><input type="radio" name="choise" class="choise" value="1"/>&nbsp;Pick up from Printo store &nbsp; &nbsp; <input type="radio" name="choise" class="choise" value="2" checked="checked"/>&nbsp;My Address</td>
    </tr>
    
    
    
    <tr>
      <td colspan="2" align="left">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr style="display:none;" id="delivDrop">
      		
        	<td width="215" style="border-top:none"  colspan="2" bgcolor="#FFFFFF" >{html_options name=req_servedAt id=req_servedAt options=$myServeOptions selected=$myServeSelect}</td>
                          
    </tr>
        <tr id="delivCheck">
          <td  style="border-top:none;" colspan="2">
            <label>
               <input type="checkbox" name="ship" id="ship" value="1" style="margin-top:2px;" onchange="myformchange();" {if $ship eq '1'} checked {/if}  />
              
              Same as Billing Address</label><input type="hidden" name="shipping_email" value="{$cur_shipping_email}" /></td>
         
        </tr>
      </table></td>
     
      </tr>
    <tr>
      <td class="pad-top-3px" width="241" align="left" valign="top"><label for="label"><span class="red">*</span>First Name :</label></td>
      <td width="209" valign="top"><input type="text" id="shipping_fname" name="shipping_fname" value="{$cur_shipping_fname}" />
        <br />
        <span class="red">{if $err_shipping_fname ne ''} {$err_shipping_fname} {/if}</span></td>
      <td class="pad-top-3px" width="241" align="left" valign="top"><span class="red">*</span>Last Name :</td>
      <td width="229" valign="top"><input type="text" class="big" id="shipping_lname" name="shipping_lname" value="{$cur_shipping_lname}" />
        <br />
        <span class="red">{if $err_shipping_lname ne ''} {$err_shipping_lname} {/if}</span></td>
    </tr>
    <tr>
      <td  class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Address 1 :</td>
      <td valign="top"><input type="text" name="shipping_address1" id="shipping_address1" value="{$cur_shipping_address1}" />
        <br />
        <span class="red">{if $err_shipping_address1 ne ''} {$err_shipping_address1} {/if}</span></td>
      <td  class="pad-top-3px"  align="left" valign="top"><span class="red">*</span>Address 2 :</td>
      <td valign="top"><input type="text" name="shipping_address2" id="shipping_address2" value="{$cur_shipping_address2}" />
        <br />
        <span class="red">{if $err_shipping_address2 ne ''} {$err_shipping_address2} {/if}</span></td>
    </tr>
    <tr>
    
     <td  class="pad-top-3px"  align="left" valign="top"><span class="red">*</span>Address 3 :</td>
      <td valign="top"><div id="txtHintShip"><input type="text" name="shipping_area" id="shipping_area" value="{$cur_shipping_area}" />
        <br />
        <span class="red">{if $err_shipping_area ne ''} {$err_shipping_area} {/if}</span></div></td>
        
      <td  class="pad-top-3px"  align="left" valign="top"><span class="red">*</span>Postal Code :<span class="red"></span></td>
      <td valign="top"><input type="text" name="shipping_pincode" id="shipping_pincode" value="{$cur_shipping_pincode}" /> <!--onchange="getshippingarea(this.value);"-->
        <br />
        <span class="red">{if $err_shipping_pincode ne ''} {$err_shipping_pincode} {/if}</span></td>
     
    </tr>
    <tr>
      <td   class="pad-top-3px"  align="left" valign="top"><span class="red">*</span>City :</td>
      <td valign="top"><input type="text" name="shipping_city" id="shipping_city" value="{$cur_shipping_city}" />
        <br />
        <span class="red">{if $err_shipping_city ne ''} {$err_shipping_city} {/if}</span></td>
      <td   class="pad-top-3px" align="left" valign="top"><span class="red">*</span>State :</td>
      <td valign="top"><select name="shipping_state_" id="shipping_state_" >
                    <option value="0">Select State</option>
											    
                                            {section name=nr loop=$stateList}
                                            
											    <option value="{$stateList[nr].stateid}" {if $cur_shipping_state eq $stateList[nr].stateid} selected {/if}>{$stateList[nr].statename}</option>
											    
                                            {/section}
                                            
										      </select>
                                              <input type="hidden" name="shipping_state" id="shipping_state" value="17"/>
        <br />
        <span class="red">{if $err_shipping_state ne ''} {$err_shipping_state} {/if}</span></td>
    </tr>
    
    <tr>
      <td   class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Country :</td>
      <td valign="top">India<input type="hidden" name="shipping_country" value="India" /></td>
      <td  class="pad-top-3px"  align="left" valign="top"><span class="red">*</span>Mobile :</td>
      <td valign="top"><input type="text" name="shipping_phone" id="shipping_phone" value="{$cur_shipping_phone}" />
        <br />
        <span class="red">{if $err_shipping_phone ne ''} {$err_shipping_phone} {/if}</span></td>
    </tr>
     
    <tr>
      <td colspan="4"><table width="150" border="0" align="right">
          <tr>
            <td style="border-top-style:none"><input name="Submit" id="Submit" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " /></td>
          </tr>
      </table></td>
    </tr>
  </table>
  
  

  
  </div>
  </div>
  <div class="clear_both"></div>
  
  
  
  <p>&nbsp;</p>
			</div>
        </form>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
