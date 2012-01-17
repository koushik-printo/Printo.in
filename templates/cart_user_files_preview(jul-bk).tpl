{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			<!--<div class="breadcrumb" ></div>-->
			<div class="app-box-main" >
				<div class="title-box">
				<h2>{$Name1} <span>{$Name2}</span></h2>
				<ul class="steps" >
					<li  ><label>Step</label><span><span>1</span><label>Upload Your File</label></span></li>
					<li class="active" ><label>Step</label><span><span>2</span><label>Review Your File</label></span></li>
				  <li><label>Step</label><span><span>3</span><label>Confirm Order</label></span></li>
                  <div class="clear-both"></div>
				</ul>
                </div>
				
			  <div class="shipping-boxes" >
					
					<div class="address-form" >
					  <div class="address-form-wrapper box-style-light-gray" >
						<h3>Page 1, Click on image for full-page preview</h3>	
                           
                       <div id="image-holder"><a href="{$imgpath}/{$previewimage}" rel="lightbox[roadtrip]" target="_blank" ><img src="{$imgpath}/{$previewimage}" width="400" height="450" /></a></div>
                       <div id="thumb-holder">
                       	<ul>
                        {section name=foo start=1 loop=$imgcount+1 step=1}
                       	  <li>
                            <div><img src="phpthumb/phpThumb.php?src=../../{$imgpath}/{$imgname}_Page_{$smarty.section.foo.index}.png&amp;w=90&amp;h=95" onclick="myscript(1);" border="0"/></div>
                            <div>Page {$smarty.section.foo.index}</div>
                          </li>
                          {/section}
                        
                        <div class="clear_both"></div>
                        </ul>
                       
                       
                       
                       
                       </div>
                            
                            
                            
                            
                            
                            
                            						
					  
					  </div>
					  <div class="clear_both"></div>
				  </div>
					
				<div class="summary" >
					  <div class="box-style-light-gray" >
							<h3>File Summary</h3>
					    <div class="padding_left padding_right">
					      <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                            <tr>
                              <td width="34%" height="20" bgcolor="#f2f2f2">File Name</td>
                              <td width="66%" height="20" bgcolor="#FFFFFF">{$originalname}.pdf</td>
                            </tr>
                            <tr>
                              <td height="20" bgcolor="#f2f2f2">No. of Pages</td>
                              <td height="20" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>{$imgcount}</td>
                                    <td align="right">{if $PageError ne ''}<img src="images/img_warning.jpg" width="19" height="17" title="{$PageError}" />{/if}</td>
                                </tr>
                                </table></td>
                            </tr>
                            <tr>
                              <td height="20" bgcolor="#f2f2f2">Size of Page</td>
                              <td height="20" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td>{$imgwidth}&quot; X {$imgheight}&quot;</td>
                                  <td align="right"><img src="images/img_correct.jpg" width="19" height="17" /></td>
                                </tr>
                              </table></td>
                            </tr>
                          </table>
					    </div>{if $PageError ne ''}
                        <span style="font-size:11px; font-family:Arial, Helvetica, sans-serif; color:#FF0000; padding-left:15px; ">{$PageError}{if $Proceed eq 'No'}<br /><a href="cart_user_files.php?pid={$current_product_id}&itemid={$current_item_id}&act=rm" class="btn-gray prev" ><span><span>Upload another file</span></span></a>{/if}</span>
                        {/if}
   						<br/>
   						
                        <h3 class="bo">{$Name1} {$Name2} Layout<div class="border_bottom padding_top"></div></h3>
                        {if $current_product_id eq '1'}
                        <div style="text-align:center"> <img src="images/bus_card.jpg" alt=""  /> </div>
                        {elseif $current_product_id eq '3'}
                        <div style="text-align:center"> <img src="images/letterhead.jpg" alt=""  /> </div>
                        {elseif $current_product_id eq '10'}
                         <div style="text-align:center"> <img src="images/envelop.jpg" alt=""  /> </div>
                        {elseif $current_product_id eq '11'}
                         <div style="text-align:center"><img src="images/img_brochure_display.jpg"  /></div>
                        {elseif $current_product_id eq '12'}
                        <div style="text-align:center"> <img src="images/standee.jpg" alt=""  /> </div>
                        {elseif $current_product_id eq '13'}
                        <div style="text-align:center"> <img src="images/flyer.jpg" alt=""  /> </div>
                        {elseif $current_product_id eq '14'}
                        <div style="text-align:center">
                        {literal}
                        <script type="text/javascript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
{/literal}
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td colspan="3" id="doc_img-hldr"><img src="images/doc_l1.jpg" name="target" width="267" height="190" id="target" /></td>
                                </tr>
                                <tr>
                                  <td colspan="3">&nbsp;</td>
                                </tr>
                                <tr>
                                  <td><a href="#"><img src="images/doc_s1.jpg" width="91" height="82" onmouseover="MM_swapImage('target','','images/doc_l1.jpg',1)" onmouseout="MM_swapImgRestore()" /></a></td>
                                  <td><a href="#"><img src="images/doc_s1.jpg" width="91" height="82" onmouseover="MM_swapImage('target','','images/doc_l2.jpg',1)" onmouseout="MM_swapImgRestore()"  /></a></td>
                                  <td><a href="#"><img src="images/doc_s3.jpg" width="81" height="82" onmouseover="MM_swapImage('target','','images/doc_l3.jpg',1)" onmouseout="MM_swapImgRestore()"  /></a></td>
                                </tr>
                              </table></td>
                            </tr>
                          </table>
                        </div>
                        {/if}
                       
                        
                       
                        
                        
                        
                        
                        
<br />
<br />
<br />

                        
                        
                        
                        
					  </div>
					  <div class="clear_both"></div>
				</div>
					<div class="clear_both"></div>
					
			  </div>
				
				<div class="actions" >
                {if $Proceed eq 'Yes'}
                <a href="cart_user_files_confirm.php?itemid={$current_item_id}" class="btn-blue" ><span><span>Print as it</span></span></a>	<!--<a href="step-2.html" class="btn-gray prev" ><span><span>Give me a Solution</span></span></a> -->
        {/if}
                    <a href="cart_user_files.php?pid={$current_product_id}&itemid={$current_item_id}&act=rm" class="btn-gray prev" ><span><span>Upload another file</span></span></a>				</div>
			</div>
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
