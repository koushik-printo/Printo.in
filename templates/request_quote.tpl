{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo} 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script> 
<script type="text/javascript" src="js/date.js"></script> 
<script type="text/javascript" src="js/jquery.datePicker.js"></script>
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
{literal} 
<script type="text/javascript">
 Date.format = 'dd/mm/yyyy'; 
$(function(){ $('input.date-pick').datePicker({startDate:'01/01/2011'}); }); 
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
                <table width="95%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                  {if $err_msg ne ''}
                  <tr>
                    <td></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  {/if}
                  <tr>
                    <td height="30" bgcolor="#F2F2F2"><h3>&nbsp;&nbsp;&nbsp;Your Contact Information</h3></td>
                  </tr>
                  <tr>
                      <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellspacing="3" cellpadding="0">
                      <tr>
                        <td align="right" valign="top" bgcolor="#FFFFFF" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Name</td>
                        <td valign="top" bgcolor="#FFFFFF"><label>
                            <input type="text" maxlength="30" name="req_name" id="req_name" value="{$req_name}" />
                          </label>
                          <br />
                          <span class="red"> {if $err_userName ne ''} {$err_userName} {/if}</span></td>
                        <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                        <span class="red">{if $err_userEmail ne ''} {$err_userEmail} {/if}</span>
                          </label>
                        </td>
                      
                      
                        <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Company Name</td>
                        <td valign="top" bgcolor="#FFFFFF"><label>
                            <input type="text" name="req_cname" id="req_cname" value="{$req_cname}" />
                            <br />
                            <span class="red">{if $err_companyName ne ''} {$err_companyName} {/if}</span> </label></td>
                      </tr>
                      <tr>
                        <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Email</td>
                          <td valign="top" bgcolor="#FFFFFF">
                          <label>
                        <input type="text" name="req_email" id="req_email" value="{$req_email}" />
                        <br />
                          <td valign="top" bgcolor="#FFFFFF">
                        &nbsp;
                          </td>
                        <td align="right" valign="top" bgcolor="#FFFFFF">Designation</td>
                        <td valign="top" bgcolor="#FFFFFF"><label>
                            <input type="text" name="req_designation" id="req_designation" value="{$req_designation}" />
                          </label></td>
                      </tr>
                      <tr>
                        <td align="right" class="pad-top-3px" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Phone</td>
                        <td valign="top" bgcolor="#FFFFFF"><label>
                            <input type="text" name="req_phone" id="req_phone" value="{$req_phone}" />
                            <br />
                            <span class="red">{if $err_phoneNumber ne ''} {$err_phoneNumber} {/if}</span> </label></td>
                        <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                        <td align="right" valign="top" bgcolor="#FFFFFF">Address</td>
                        <td valign="top" bgcolor="#FFFFFF"><label>
                            <textarea name="req_address"  id="req_address" cols="15" rows="3" >{$req_address}</textarea>
                          </label></td>
                      </tr>
                    </table>
                      </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" bgcolor="#F2F2F2"><h3>&nbsp;&nbsp;&nbsp;Job Information</h3></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                        <tr>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Type of job</td>
                          <td valign="top" bgcolor="#FFFFFF"><label><span class="required">
                              <select name="req_job">
                                <option selected="selected" value="0">select</option>
                                <option value="Flyers" {if $req_job eq 'Flyers'} selected {/if}>Flyers</option>
                                <option value="Brochures" {if $req_job eq 'Brochures'} selected {/if}>Brochures</option>
                                <option value="Booklets" {if $req_job eq 'Booklets'} selected {/if}>Booklets</option>
                                <option value="Business Cards" {if $req_job eq 'Business Cards'} selected {/if}>Business Cards</option>
                                <option value="Letterheads" {if $req_job eq 'Letterheads'} selected {/if}>Letterheads</option>
                                <option value="Posters" {if $req_job eq 'Posters'} selected {/if}>Posters</option>
                                <option value="Banners" {if $req_job eq 'Banners'} selected {/if}>Banners</option>
                                <option value="T Shirts" {if $req_job eq 'T Shirts'} selected {/if}>T Shirts</option>
                                <option value="Mugs" {if $req_job eq 'Mugs'} selected {/if}>Mugs</option>
                                <option value="Calendars" {if $req_job eq 'Calendars'} selected {/if}>Calendars</option>
                                <option value="Diaries/Notebooks" {if $req_job eq 'Diaries/Notebooks'} selected {/if}>Diaries/Notebooks</option>
                                <option value="Invitations" {if $req_job eq 'Invitations'} selected {/if}>Invitations</option>
                                <option value="ID Cards" {if $req_job eq 'ID Cards'} selected {/if}>ID Cards</option>
                              </select>
                              <br />
                              <span class="red">{if $err_selectJobType ne ''} {$err_selectJobType} {/if}</span> </span></label></td>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF">Specify</td>
                          <td valign="top" bgcolor="#FFFFFF"><label>
                              <input type="text" name="req_specify" id="req_specify" value="{$req_specify}" />
                            </label></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Quantity</td>
                          <td valign="top" bgcolor="#FFFFFF"><input type="text" name="req_qty" id="req_qty" value="{$req_qty}" />
                            <br />
                            <span class="red">{if $err_enterQuality ne ''} {$err_enterQuality} {/if}</span></td>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> No of designs/pages</td>
                          <td valign="top" bgcolor="#FFFFFF"><label>
                              <input type="text" name="req_pages" id="req_pages" value="{$req_pages}" />
                              <br />
                              <span class="red">{if $err_enterPages ne ''} {$err_enterPages} {/if}</span> </label></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" align="right" valign="top" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Variable Data</td>
                          <td height="40" colspan="3" valign="top" bgcolor="#FFFFFF"><label class="float_left">
                              <input type="radio" name="req_variable_data" value="Y" id="req_variable_data" {if $req_variable_data eq 'Y'} checked {/if} />
                              Yes</label>
                            <label class="float_left"> &nbsp;&nbsp;&nbsp;
                              <input type="radio" name="req_variable_data" value="N" id="req_variable_data" {if $req_variable_data eq 'N'} checked {/if} />
                              No</label>
                            <label class="float_left small_italic">&nbsp;&nbsp;&nbsp;(names of players behind T Shirts or Invitations carrying the name of the invitee)</label>
                            <div style="clear:both"></div>
                            <span class="red">{if $err_variableData ne ''} {$err_variableData} {/if}</span></td>
                        </tr>
                        <tr>
                          <td align="right" bgcolor="#FFFFFF"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Describe your requirement</td>
                          <td colspan="3" bgcolor="#FFFFFF"><span class="label required">
                            <textarea id="req_describe" class="field" cols="55" rows="8" name="req_describe">{$req_describe}</textarea>
                            <br />
                            <span class="red">{if $err_enterDescription ne ''} {$err_enterDescription} {/if}</span> </span></td>
                        </tr>
                      </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" bgcolor="#F2F2F2"><h3><strong>&nbsp;&nbsp;&nbsp;Job Specification</strong></h3></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellpadding="0" cellspacing="3">
                        <tr>
                          <td align="right" valign="top" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Open size</td>
                          <td valign="top"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                              <tr>
                                <td width="22%"><input type="text" name="req_opensize" id="req_opensize" style="width:100px;" value="{$req_opensize}" /></td>
                                <td width="78%"><label> &nbsp;&nbsp;</label>
                                  <br /></td>
                              </tr>
                              <tr>
                                <td colspan="2"><label>
                                    <input type="radio" name="req_opensize_option" value="in" id="req_opensize_option" {if $req_opensize_option eq 'in'} checked {/if} />
                                    Inch</label>
                                  <label> &nbsp;
                                    <input type="radio" name="req_opensize_option" value="mm" id="req_opensize_option" {if $req_opensize_option eq 'mm'} checked {/if} />
                                    MM<br />
                                    <span class="red">{if $err_openSize ne ''} {$err_openSize} {/if}</span></label></td>
                              </tr>
                            </table></td>
                          <td align="right" valign="top" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Closed Size</td>
                          <td valign="top"><table width="100%" border="0" cellspacing="1" cellpadding="1">
                              <tr>
                                <td width="21%"><input type="text" name="req_closedsize" id="req_closedsize" style="width:100px;" value="{$req_closedsize}" /></td>
                                <td width="79%"><label></label>
                                  <br /></td>
                              </tr>
                              <tr>
                                <td colspan="2"><label>
                                    <input type="radio" name="req_closedsize_option" value="in" id="req_closedsize_option" {if $req_closedsize_option eq 'in'} checked {/if} />
                                    Inch</label>
                                  <label> &nbsp;
                                    <input type="radio" name="req_closedsize_option" value="mm" id="req_closedsize_option" {if $req_closedsize_option eq 'mm'} checked {/if} />
                                    MM<br />
                                    <span class="red">{if $err_closeSize ne ''} {$err_closeSize} {/if}</span></label></td>
                              </tr>
                            </table></td>
                        </tr>
                        <tr>
                          <td width="26%" align="right" valign="top" class="pad-top-3px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> <strong>Paper type </strong></td>
                                <td align="right"> for covers</td>
                              </tr>
                            </table></td>
                          <td width="31%" valign="top"><label>
                              <input type="text" name="req_papercovers" id="req_papercovers" value="{$req_papercovers}" />
                              <br />
                              <span class="red">{if $err_paperCover ne ''} {$err_paperCover} {/if}</span> </label></td>
                          <td width="17%" align="right" valign="top" class="pad-top-3px">for inside pages</td>
                          <td width="26%" valign="top"><label>
                              <input type="text" name="req_insidepages" id="req_insidepages" value="{$req_insidepages}" />
                            </label></td>
                        </tr>
                        <tr>
                          <td align="right" valign="top" class="pad-top-3px">Special requirement</td>
                          <td valign="top"><label>
                              <input type="text" name="req_specialreq" id="req_specialreq" value="{$req_specialreq}" />
                            </label></td>
                          <td align="right" valign="top">&nbsp;</td>
                          <td valign="top">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="right" valign="top" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Type of  binding</td>
                          <td valign="top"><label><span class="required">
                              <select name="req_binding">
                                <option selected="selected" value="0">select</option>
                                <option value="Case binding" {if $req_binding eq 'Case binding'} selected {/if}>Case binding </option>
                                <option value="Spiral Binding" {if $req_binding eq 'Spiral Binding'} selected {/if}>Spiral Binding</option>
                                <option value="Wire-o/twin loop wire bind" {if $req_binding eq 'Wire-o/twin loop wire bind'} selected {/if}>Wire-o/twin loop wire bind</option>
                                <option value="Center stapling" {if $req_binding eq 'Center stapling'} selected {/if}>Center stapling</option>
                                <option value="Perfect Binding" {if $req_binding eq 'Perfect Binding'} selected {/if}>Perfect Binding</option>
                              </select>
                              <br />
                              <span class="red">{if $err_typeBinding ne ''} {$err_typeBinding} {/if}</span> </span></label></td>
                          <td align="right" valign="top" class="pad-top-3px"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Type of fold</td>
                          <td valign="top"><label><span class="required">
                              <select name="req_fold" style="width:140px;">
                                <option selected="selected" value="0">select</option>
                                <option value="Single fold" {if $req_fold eq 'Single fold'} selected {/if}>Single fold</option>
                                <option value="2 fold" {if $req_fold eq '2 fold'} selected {/if}>2 fold </option>
                                <option value="3 fold" {if $req_fold eq '3 fold'} selected {/if}>3 fold</option>
                              </select>
                              <br />
                              <span class="red">{if $err_foldType ne ''} {$err_foldType} {/if}</span> </span></label></td>
                        </tr>
                      </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                        <tr>
                          <td width="26%" height="40" bgcolor="#FFFFFF"><strong>&nbsp;&nbsp;&nbsp;&nbsp;Additional finishing</strong></td>
                          <td width="74%" height="40" bgcolor="#FFFFFF"><label> &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="radio" name="req_add_finishing" value="Aqueous coating" id="req_add_finishing" {if $req_add_finishing eq 'Aqueous coating'} checked {/if} />
                              Aqueous coating</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <label>
                              <input type="radio" name="req_add_finishing" value="UV Coating" id="req_add_finishing" {if $req_add_finishing eq 'UV Coating'} checked {/if} />
                              UV Coating</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <label>
                              <input type="radio" name="req_add_finishing" value="Lamination" id="req_add_finishing" {if $req_add_finishing eq 'Lamination'} checked {/if} />
                              Lamination</label>
                            &nbsp;&nbsp;&nbsp;
                            <label>
                              <input type="radio" name="req_add_finishing" value="None" id="req_add_finishing" {if $req_add_finishing eq 'None'} checked {/if} />
                              None</label></td>
                        </tr>
                      </table></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" bgcolor="#F2F2F2"><h3><strong>&nbsp;&nbsp;&nbsp;Packaging &amp; Fullfilment</strong></h3></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                        <tr>
                          <td class="pad-top-3px" width="21%" height="30" align="right" valign="top"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> <strong>Packaging&nbsp;</strong></td>
                          <td class="pad-top-3px" width="79%" height="30" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td valign="top"><label>
                                    <input type="radio" name="req_packaging" value="Standard" id="req_packaging" {if $req_packaging eq 'Standard'} checked {/if} />
                                    Standard</label></td>
                                <td valign="top"><label>
                                    <input type="radio" name="req_packaging" value="Individual packs" id="req_packaging" {if $req_packaging eq 'Individual packs'} checked {/if} />
                                    Individual packs<br />
                                    <span class="small_italic">(like a catalogue in an envelope)</span></label></td>
                                <td valign="top"><label>
                                    <input type="radio" name="req_packaging" value="Shrink-wrapped/bundles" id="req_packaging" {if $req_packaging eq 'Shrink-wrapped/bundles'} checked {/if} />
                                    Shrink-wrapped/bundles</label></td>
                                <td valign="top"><label>
                                    <input type="radio" name="req_packaging" value="None" id="req_packaging" {if $req_packaging eq 'None'} checked {/if} />
                                    None</label></td>
                              </tr>
                            </table>
                            <span class="red">{if $err_packaging ne ''} {$err_packaging} {/if}</span></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" height="30" align="right" valign="top"><strong>Fullfillment&nbsp;</strong></td>
                          <td height="30" valign="top"><label>
                              <input type="radio" name="req_fullfillment" value="Bar-coded" id="req_fullfillment" {if $req_fullfillment eq 'Bar-coded'} checked {/if} />
                              Bar-coding</label>
                            &nbsp;
                            <label>
                              <input type="radio" name="req_fullfillment" value="Addressed for mailing list" id="req_fullfillment" {if $req_fullfillment eq 'Addressed for mailing list'} checked {/if} />
                              Addressed for mailing list</label></td>
                        </tr>
                        <tr>
                          <td class="pad-top-3px" height="30" align="right" valign="top"><span style="color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:14px;">*</span> Required by&nbsp;</td>
                          <td height="30" valign="top"><div>
                              <input type="text" name="req_required_by" value="{$req_required_by}" class="date-pick" readonly="readonly" />
                              ( dd/mm/yyyy )</div>
                            <div style="clear:both;"></div>
                            <span class="red">{if $err_requiredType ne ''} {$err_requiredType} {/if}</span></td>
                        </tr>
                        <tr>
                          <td height="30" align="right">Additional Informartion&nbsp;</td>
                          <td height="30"><span class="label required">
                            <textarea id="entry.20.single2" class="field" cols="55" rows="4" name="entry.20.single"></textarea>
                            </span></td>
                        </tr>
                        {if $cur_file_id eq ''}
                        <tr>
                          <td height="30" align="right">Attach artwork&nbsp;</td>
                          <td height="30"><label>
                              <input type="file" name="req_file" id="req_file" />
                            </label></td>
                        </tr>
                        {else}
                        <tr>
                          <td height="30" align="right"></td>
                          <td height="30"><label>
                              <input type="hidden" name="cur_user" id="cur_user" value="{$cur_user}" />
                              <input type="hidden" name="cur_file_id" id="cur_file_id" value="{$cur_file_id}" />
                            </label></td>
                        </tr>
                        {/if}
                        <tr>
                          <td>&nbsp;</td>
                          <td><div style="width: 430px; float: left; height: 90px;"> <img id="siimage" align="left" style="border:solid 1px #666; margin-right:10px;" src="securimage_show.php?sid=<?php echo md5(time()) ?>" />
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
                            Code:<br />
                            
                            <!-- NOTE: the "name" attribute is "code" so that $img->check($_POST['code']) will check the submitted form field -->
                            
                            <input type="text" name="code" size="12" />
                            <br />
                            <span class="red">{if $err_code ne ''} {$err_code} {/if}</span><br /></td>
                        </tr>
                        <tr>
                          <td height="30" align="right">&nbsp;</td>
                          <td height="30"><input type="image" name="ReqSubmit" id="ReqSubmit" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " /></td>
                        </tr>
                      </table></td>
                  </tr>
                  <tr>
                    <td><label></label></td>
                  </tr>
                </table>
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