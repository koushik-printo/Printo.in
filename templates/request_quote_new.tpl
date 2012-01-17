{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo} 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script> 
<script type="text/javascript" src="js/date.js"></script> 
<script type="text/javascript" src="js/jquery.datePicker.js"></script>
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
{literal} 
<script type="text/javascript">
 Date.format = 'dd/mm/yyyy'; 
$(function(){ 

$('input.date-pick').datePicker({startDate:'01/01/2011'}); 

eval(function(p,a,c,k,e,r){e=String;if(!''.replace(/^/,String)){while(c--)r[c]=k[c]||c;k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('$(\'#3\').0(1(){$(\'#4\').2()});$(\'#5\').0(1(){$(\'#6\').2()});',7,7,'click|function|slideToggle|specification|specificationArea|fullfilment|fullfilmentArea'.split('|'),0,{}))

}); 
</script> 

{/literal}
<div id="base_frame" >
  <div id="header_frame" > {include file="top.tpl"} </div>
  <div id="content_frame" >
    <div class="content-box-main" >
      <div class="breadcrumb" >
        <ul>
          <li class="first" ><a href="index.php" >Home</a></li>
          <li>Request a Quote</li>
        </ul>
      </div>
      <div class="content-box-l" > {include file="left_nav.tpl"} </div>
      <div class="float_left" style="width:722px; padding-left:11px; padding-top:5px;">
        <div class=" box-style-light-gray" >
          <h2>Request <span>A Quote</span></h2>
          <form action="" method="post" name="form1" enctype="multipart/form-data">
            <table width="100%" border="0" cellspacing="0" cellpadding="15">
              <tr>
              <td>
                <table width="95%" border="0" cellpadding="0" cellspacing="2px" bgcolor="#FFFFFF">
                  {if $err_msg ne ''}
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  {/if}
                  <tr>
                    <td height="30" bgcolor="#2F7190"><h3 style="color:#FFFFFF;">&nbsp;&nbsp;&nbsp;Your Contact Information</h3></td>
                  </tr>
                  <tr>
                  <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellspacing="2px" cellpadding="5px">
                      <tr>
                        <td width="16%" align="right" valign="top" bgcolor="#FFFFFF" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Name</td>
                        <td width="29%" valign="top" bgcolor="#FFFFFF"><label>
                            <input type="text" maxlength="30" name="req_name" id="req_name" value="{$req_name}" />
                          </label>
                          <br />
                          <span class="red"> {if $err_userName ne ''} {$err_userName} {/if}</span></td>
                        <td width="19%" align="right" valign="top" bgcolor="#FFFFFF" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Company Name</td>
                        <td width="36%" valign="top" bgcolor="#FFFFFF"><label>
                            <input type="text" name="req_cname" id="req_cname" value="{$req_cname}" /><br /><span class="red">{if $err_companyName ne ''} {$err_companyName} {/if}</span> </label></td>
                      </tr>
                      <tr>
                        <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Email</td>
                          <td valign="top" bgcolor="#FFFFFF">
                          <label><input type="text" name="req_email" id="req_email" value="{$req_email}" /><br /><span class="red">{if $err_userEmail ne ''} {$err_userEmail} {elseif $err_invalidEmail ne ''} {$err_invalidEmail} {/if}  </span></label></td>
                        <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF">Designation</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><input type="text" name="req_designation" id="req_designation" value="{$req_designation}" /></label></td>
                      </tr>
                      <tr>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Phone</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><input type="text" name="req_phone" id="req_phone" value="{$req_phone}" /><br /><span class="red">{if $err_phoneNumber ne ''} {$err_phoneNumber} {/if}</span> </label></td>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF">Address</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><textarea name="req_address"  id="req_address" cols="17" rows="3" >{$req_address}</textarea></label></td>
                      </tr>
                       <tr>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Country</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><select name="req_country"><option value="India">India</option>
<option value="International">International</option></select></label></td>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF">State</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><input id="req_state" name="req_state" value="" /></label></td>
                      </tr>
                      <tr>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Which store would like to be served by?</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><select name="req_servedAt">
                          <option value="TON" selected="selected">Online/Email/Telephone</option>
                          <option value="KR1">Kormangala 6th Block</option>
                          <option value="KR2">Kormangala NGV</option>
                          <option value="EC1">Electronic city</option>
                          <option value="INFY">Infosys</option>
                          <option value="WHF">Whitefield</option>
                          <option value="BEL">BEL Road</option>
                          <option value="BRG">Brigade Road</option>
                          <option value="HSR">HSR Layout</option>
                          <option value="INR">Indiranagar</option>
                          <option value="ODI">Indiranagar Office Dpt.</option>
                          <option value="APR">Old. Airport Rd.</option>
                          <option value="JN1">Jayanagar 9th Block</option>
                          <option value="JN2">Jayanagar South End</option>
                          <option value="ODJ">Jayanagar 4th Block</option>
                          <option value="MLM">Malleshwaram</option>
                          <option value="ODM">Mantri Square Mall</option>
                        </select></label></td>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF">Payment Option</td>
                        <td valign="top" bgcolor="#FFFFFF"><label><select name="req_paymentOption">
                          <option value="Cash" selected="selected">Cash</option>
                          <option value="CC" >Credit Card</option>
                          <option value="DC" >Debit Card</option>
                          <option value="VC" >Value Card</option>
                          <option value="NEFT" >Bank Transfer/NEFT</option>
                          <option value="Cheque" >Cheque</option>
                          </select>
                          </label></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                  <td height="30" bgcolor="#2F7190"><h3 style="color:#FFFFFF;">&nbsp;&nbsp;&nbsp;Job Information</h3></td>
                  </tr>
                  <tr>
                    <td>
                    <table width="100%" border="0" cellspacing="3" cellpadding="2">
                        <tr>
                          <td width="16%" align="right" valign="top" bgcolor="#FFFFFF" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Type of job</td>
                          <td width="37%" valign="top" bgcolor="#FFFFFF"><label><span class="required">
                              <select name="req_job">
                              <option selected="selected" value="0">Select type of job</option>
                                  <option value="Business Cards">Business Cards</option>
                                  <option value="Letterheads">Letterheads</option>
                                  <option value="Calendars">Calendars</option>
                                  <option value="PIPS Calendars">PIPS Calendars</option>
                                  <option value="Diaries">Diaries/Notebooks</option>
                                  <option value="Envelopes">Envelopes</option>
                                  <option value="Brochures">Brochures</option>
                                  <option value="Flyers">Flyers</option>
                                  <option value="Booklets">Booklets</option>
                                  <option value="Posters">Posters</option>
                                  <option value="Banners">Banners</option>
                                  <option value="Standees">Standees</option>
                                  <option value="Invitations">Invitations</option>
                                  <option value="ID Cards">ID Cards</option>
                                  <option value="T Shirts">Personalised T Shirts</option>
                                  <option value="Mugs">Personalised Mugs</option>
                                  <option value="Fotoart">Fotoart/Canvas Print</option>
                                  <option value="Framease">Photo frame/Framease</option>
                                  <option value="Greeting Card">Greeting Card</option>
                                  <option value="Photo print">Photo print</option>
                                  <option value="Photo print">Custom/other job</option>
                                </select>
                              <br />
                              <span class="red">{if $err_selectJobType ne ''} {$err_selectJobType} {/if}</span> </span></label></td>
                          <td width="22%" align="right" valign="top" bgcolor="#FFFFFF" class="pad-top-3px">If other, specify</td>
                          <td width="25%" valign="top" bgcolor="#FFFFFF"><label><input type="text" name="req_specify" id="req_specify" value="{$req_specify}" /></label></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Quantity</td>
                          <td valign="top" bgcolor="#FFFFFF"><input type="text" name="req_qty" id="req_qty" value="{$req_qty}" /><br /><span class="red">{if $err_enterQuality ne ''} {$err_enterQuality} {/if}</span></td>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> No. of designs/pages</td>
                          <td valign="top" bgcolor="#FFFFFF"><label><input type="text" name="req_pages" id="req_pages" value="{$req_pages}" /><br /><span class="red">{if $err_enterPages ne ''} {$err_enterPages} {/if}</span></label></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Variable Data<br />printing</td>
                          <td height="40" colspan="3" valign="top" bgcolor="#FFFFFF"><label class="float_left"><input type="radio" name="req_variable_data" value="Yes" id="req_variable_data" />Yes</label><label class="float_left">&nbsp;&nbsp;&nbsp;<input name="req_variable_data" type="radio" id="req_variable_data" value="No" checked="checked" />No</label><label class="float_left small_italic">&nbsp;&nbsp;&nbsp;(names of players behind T-Shirts or Invitations carrying the name of the invitee)</label>
                            <div style="clear:both"></div>
                            <span class="red">{if $err_variableData ne ''} {$err_variableData} {/if}</span></td>
                        </tr>
                        <tr>
                          <td align="right" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Describe your<br />requirement</td>
                          <td colspan="3" bgcolor="#FFFFFF"><span class="label required"><textarea id="req_describe" class="field" cols="60" rows="8" name="req_describe">{$req_describe}</textarea><br /><span class="red">{if $err_enterDescription ne ''} {$err_enterDescription} {/if}</span> </span></td>
                        </tr>
                        {if $cur_file_id eq ''}
                        <tr>
                          <td height="30" align="right">Attach artwork</td>
                          <td colspan="3"><label><input type="file" name="req_file" id="req_file" /></label></td>
                        </tr>
                        {else}
                        <tr>
                          <td height="30" align="right"></td>
                          <td height="30" colspan="3"><label>
                              <input type="hidden" name="cur_user" id="cur_user" value="{$cur_user}" />
                              <input type="hidden" name="cur_file_id" id="cur_file_id" value="{$cur_file_id}" />
                            </label></td>
                        </tr>
                        {/if}
                      </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                  <td>
                  <div id="Collapsable Panel">
                  <table width="100%" border="0" cellspacing="3" cellpadding="2">
  <tr>
                    <td height="30" bgcolor="#2F7190" id="specification" style="cursor:pointer;"><h3 style="color:#FFFFFF;"><strong>&nbsp;&nbsp;&nbsp;Job Specification</strong></h3></td>
                  </tr>
                  <tr>
                    <td id="specificationArea" style="display:none;">
                    <table width="100%" border="0" cellpadding="2" cellspacing="3">
                        <tr>
                          <td align="right" valign="top" class="pad-top-3px">Open size</td>
                          <td width="43%" valign="top">
                          <table width="100%" border="0" cellspacing="1" cellpadding="1">
                              <tr>
                                <td><input type="text" name="req_opensize" id="req_opensize" value="{$req_opensize}" /></td>
                              </tr>
                              <tr>
                                <td><label><input type="radio" name="req_opensize_option" value="in" id="req_opensize_option" />Inch</label><label> &nbsp;<input type="radio" name="req_opensize_option" value="mm" id="req_opensize_option" />MM</label></td>
                              </tr>
                            </table></td>
                          <td align="right" valign="top" class="pad-top-3px">Closed Size</td>
                          <td width="25%" valign="top">
                          <table width="100%" border="0" cellspacing="1" cellpadding="1">
                              <tr>
                                <td><input type="text" name="req_closedsize" id="req_closedsize" value="{$req_closedsize}" /></td>
                              </tr>
                              <tr>
                                <td><label><input type="radio" name="req_closedsize_option" value="in" id="req_closedsize_option" />Inch</label><label> &nbsp;<input type="radio" name="req_closedsize_option" value="mm" id="req_closedsize_option" />MM</label></td>
                              </tr>
                            </table>
                            </td>
                        </tr>
                        <tr>
                          <td width="17%" align="right" valign="top" class="pad-top-3px">Paper type<br /><span style="font-size:x-small;">for covers</span></td>
                          <td valign="top"><label><input type="text" name="req_papercovers" id="req_papercovers" value="{$req_papercovers}" /></label></td>
                          <td width="15%" align="right" valign="top" class="pad-top-3px">Paper type<br />
                            <span style="font-size:x-small;">for inside pages</span></td>
                          <td valign="top"><label><input type="text" name="req_insidepages" id="req_insidepages" value="{$req_insidepages}" /></label></td>
                        </tr>
                        <tr>
                          <td align="right" valign="top" class="pad-top-3px">Type of  binding</td>
                          <td valign="top">
                          <label>
                            <select name="req_binding">
             <option selected="selected" value="No Binding">No binding</option>
             <option value="Spiral Binding">Spiral Binding</option>
             <option value="Wire-o/twin loop wire bind">Wire-o-Binding</option>
             <option value="Center stapling">Center stapling (Brochures)</option>
             <option value="Case binding">Case binding </option>
             <option value="Perfect Binding">Perfect Binding</option>
                              </select></label></td>
                          <td align="right" valign="top" class="pad-top-3px">Type of fold</td>
                          <td valign="top"><label><select name="req_fold" style="width:140px;"><option selected="selected" value="No Fold">No Fold</option><option value="Single fold" >Single fold</option><option value="2 fold" >2 fold </option><option value="3 fold" >3 fold</option>
                              </select>
                           </label></td>
                        </tr>
                        
                        <tr>
                    <td colspan="4">
                    <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                        <tr>
                          <td width="26%" height="40" bgcolor="#FFFFFF"><strong>&nbsp;&nbsp;&nbsp;&nbsp;Additional finishing</strong></td>
                          <td width="74%" height="40" bgcolor="#FFFFFF"><label><input type="radio" name="req_add_finishing" value="Aqueous coating" id="req_add_finishing" />Aqueous coating</label>
                          <label>&nbsp;&nbsp;
                              <input type="radio" name="req_add_finishing" value="UV Coating" id="req_add_finishing" />
                              UV Coating</label>
                              <label>&nbsp;&nbsp;
                              <input type="radio" name="req_add_finishing" value="Matte Lamination" id="req_add_finishing" />
                              Lamination</label>
                              <label>&nbsp;&nbsp;
                              <input type="radio" name="req_add_finishing" value="Glossy Lamination" id="req_add_finishing" />
                              Lamination</label>
                              <label>&nbsp;&nbsp;
                              <input type="radio" name="req_add_finishing" value="None" id="req_add_finishing" checked="checked" />
                              None</label></td>
                        </tr>
                      </table>
                      
                      </td>
                  </tr>
                        
                      </table>
                     </td>
                  </tr>
<!--                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td>&nbsp;</td>
                  </tr>-->
                  <tr>
                    <td height="30" bgcolor="#2F7190" id="fullfilment" style="cursor:pointer;"><h3 style="color:#FFFFFF"><strong>&nbsp;&nbsp;&nbsp;Packaging &amp; Fullfilment</strong></h3></td>
                  </tr>
                  <tr>
                    <td id="fullfilmentArea" style="display:none;">
                    <table width="100%" border="0" cellspacing="3" cellpadding="2">
                        <tr>
                          <td class="pad-top-3px" width="16%" height="30" align="right" valign="top">Packaging</td>
                          <td class="pad-top-3px" colspan="3" valign="top">
                          <table width="100%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="19%" valign="top"><label>
                                    <input type="radio" name="req_packaging" value="Standard" id="req_packaging" />Standard</label></td>
                                <td width="35%" valign="top"><label>
                                    <input type="radio" name="req_packaging" value="Individual packs" id="req_packaging" />Individual packs<br />
                                    <span class="small_italic">(like a catalogue in an envelope)</span></label></td>
                                <td width="34%" valign="top"><label>
                                    <input type="radio" name="req_packaging" value="Shrink-wrapped/bundles" id="req_packaging" />Shrink-wrapped/bundles</label></td>
                                <td width="12%" valign="top"><label>
                                    <input name="req_packaging" type="radio" id="req_packaging" value="None" checked="checked" />None</label></td>
                              </tr>
                            </table>
                            </td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" height="30" align="right" valign="top">Fullfillment</td>
                          <td valign="top"><label>
                              <input type="radio" name="req_fullfillment" value="Bar-coded" id="req_fullfillment" />Bar-coding</label>&nbsp;<label>
                              <input type="radio" name="req_fullfillment" value="Addressed for mailing list" id="req_fullfillment" />Addressed for mailing list</label>&nbsp;<label>
                              <input name="req_fullfillment" type="radio" id="req_fullfillment" value="None" checked="checked" />None</label></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" height="30" align="right" valign="top">Required by</td>
                          <td height="30" valign="top"><div>
                              <input type="text" name="req_required_by" value="{$req_required_by}" class="date-pick" readonly="readonly" />&nbsp;dd/mm/yyyy )</div>
                            <div style="clear:both;"></div>
                            </td>
                        </tr>
                        <tr>
                          <td height="30" align="right">Additional Informartion</td>
                          <td>
                            <textarea id="entry.20.single" class="field" cols="60" rows="4" name="entry.20.single"></textarea></td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                         </tr>
                      </table>
                     </td>
                  </tr>
                  
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td>
                      <table width="100%" border="0" cellspacing="3" cellpadding="2" align="center">

                        <tr>
                          <td><div style="width: 430px; float: right; height: 90px;"> <img id="siimage" align="left" style="border:solid 1px #666; margin-right:10px;" src="securimage_show.php?sid=<?php echo md5(time()) ?>" />
                            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="19" height="19" id="SecurImage_as3" align="middle">
                              <param name="allowScriptAccess" value="sameDomain" />
                              <param name="allowFullScreen" value="false" />
                              <param name="movie" value="securimage_play.swf?audio=securimage_play.php&bgColor1=#777&bgColor2=#fff&iconColor=#000&roundedCorner=5" />
                              <param name="quality" value="high" />
                              <param name="bgcolor" value="#ffffff" />
                              <embed src="securimage_play.swf?audio=securimage_play.php&bgColor1=#777&bgColor2=#fff&iconColor=#000&roundedCorner=5" quality="high" bgcolor="#ffffff" width="19" height="19" name="SecurImage_as3" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
                              </object>
                            <br />
                            <!-- pass a session id to the query string of the script to prevent ie caching --> 
                            <a tabindex="-1" style="border-style: none" href="#" title="Refresh Image" onClick="document.getElementById('siimage').src = 'securimage_show.php?sid=' + Math.random(); return false"><img src="images/refresh.gif" alt="Reload Image" border="0" onClick="this.blur()" align="bottom" /></a> </div>
                            <div style="clear: both"></div>
                            <div style="width: 390px; float: right; height: 40px;">
                              Code:<br />
                              
                              <!-- NOTE: the "name" attribute is "code" so that $img->check($_POST['code']) will check the submitted form field -->
                              
                              <input type="text" name="code" />
                              <br />
                              <span class="red">{if $err_code ne ''} {$err_code} {/if}</span><br /></div></td>
                          </tr>
                        <tr>
                          <td height="30" align="right"><div style="width: 360px; float: right; height: 40px; margin-top:20px;"><input type="image" name="ReqSubmit" id="ReqSubmit" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " /></div></td>
                          </tr>
                      </table>
                    </td>
                  </tr>
                  
</table> </div>
                  </td>
                  </tr>
                  
                </table>
                </td>
              </tr>
            </table>
          </form>
          <div class="clear_both"></div>
          <!--- end sub_cont ---> 
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" > {include file="bottom.tpl"} </div>
</div>
{include file="footer.tpl"} 