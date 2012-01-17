{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<script type="text/javascript" src="js/jquery-plus-jquery-ui.js"></script>
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

<script type="text/javascript" src="js/highslide/highslide.js"></script>
<link rel="stylesheet" type="text/css" href="js/highslide/highslide.css" />
{literal}
<script type="text/javascript">
//<![CDATA[
hs.registerOverlay({
	html: '<div class="closebutton" onclick="return hs.close(this)" title="Close"></div>',
	position: 'top right',
	fade: 2 // fading the semi-transparent overlay looks bad in IE
});


hs.graphicsDir = 'js/highslide/graphics/';
hs.wrapperClassName = 'borderless';
//]]>
</script>
{/literal}
<!--<META HTTP-EQUIV="refresh" CONTENT="1"> -->
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
                           
                       <div id="image-holder">
                       {if $preId=="N"}
                      
                       <img src="images/NO-PREVIEW-AVAILABLE.jpg" id="noPreview" />
                       {else}
                      
                        <a href="{$imgpath}/{$previewimage}" id="mylink"  target="_blank" class="highslide" onclick="return hs.expand(this)" ><img src="phpthumbaikya/phpThumb.php?src=../{$imgpath}/{$previewimage}&amp;w={$p_width}&amp;h={$p_height}" id="mypreview" /></a>
                       {/if}
                     <!--  <img src="images/NO-PREVIEW-AVAILABLE.jpg" id="noPreview" />-->
                       </div>
                       <div class="ga-thumb-holder">
                       	<ul>
                        {if $imgcount gt 1}
          
                        {foreach from=$parray key=k item=foo}
                       	  <li><a href="#" id="phpthumbaikya/phpThumb.php?src=../{$imgpath}/{$foo}.png&amp;w={$p_width}&amp;h={$p_height}" name="{$imgpath}/{$foo}.png"><img src="phpthumbaikya/phpThumb.php?src=../{$imgpath}/{$foo}.png&amp;w=90&amp;h=95" border="0"/></a>
                            <br />Page {$k}
                          </li>
                         {/foreach}
                          {/if}
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
                              <td width="66%" height="20" bgcolor="#FFFFFF">{if $originalname != ""} {$originalname} {/if}</td>
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
                                  <td> {if $preId!="N"} {$combo}   {/if}</td>
                                  <td align="right"><!--<img src="images/img_correct.jpg" width="19" height="17" />--></td>
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
                         {elseif $current_product_id eq '6'}
                        <div style="text-align:center"> <img src="images/flyer.jpg" alt=""  /> </div>
                        {elseif $current_product_id eq '14'}
                         <div style="text-align:center">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td align="center"><form id="form1" name="form1" method="post" action="">
                                <table border="0" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td id="doc_img-hldr"><img src="images/doc_l1.jpg" name="target" width="267" height="190" id="target" /></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BCBCBC">
                                        <tr>
                                          <td><img src="images/doc_s1.jpg" width="91" height="82" style="cursor:pointer;" onclick="MM_swapImage('target','','images/doc_l1.jpg',1)" /></td>
                                          <td><img src="images/doc_s1.jpg" width="91" height="82" style="cursor:pointer;" onclick="MM_swapImage('target','','images/doc_l2.jpg',1)"  /></td>
                                          <td><img src="images/doc_s3.jpg" width="81" height="82" style="cursor:pointer;"  onclick="MM_swapImage('target','','images/doc_l3.jpg',1)"  /></td>
                                        </tr>
                                        <tr>
                                          <td height="25" align="center" bgcolor="#F7F7F7">Spiral binding</td>
                                          <td align="center" bgcolor="#F7F7F7">Wired binding</td>
                                          <td align="center" bgcolor="#F7F7F7">Center Pining</td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                </table>
                                                            </form>
                              </td>
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
                <a href="cart_user_files_confirm.php?itemid={$current_item_id}&preId=" class="btn-blue" ><span><span>
              <!--  {if $preId=="N"}Order Now{else}Order as it is{/if}-->Order Now</span></span></a>	<!--<a href="step-2.html" class="btn-gray prev" ><span><span>Give me a Solution</span></span></a> -->
        {/if}
                    <a href="cart_user_files.php?pid={$current_product_id}&itemid={$current_item_id}&act=rm" class="btn-gray span" ><span><span>Change file</span></span></a>				</div>

			</div>
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>
{literal}
<script type="text/javascript" src="js/jquery.js"></script>						
<script type="text/javascript">
			$(function(){
				$("select").selectbox();
			});	
		</script>
<script type="text/javascript">

	/* ------ Code generated by IxEdit (ixedit.com). ------ */
	if(window.ixedit){ixedit.deployed = true};
	if(window.jQuery){jQuery(function(){
		(function(){ jQuery('div.ga-thumb-holder a').bind('click', function(event, ui){var target = jQuery('div.ga-thumb-holder a.active'); target.removeClass('active'); var target = jQuery(event.currentTarget); target.addClass('active'); 
var target = jQuery('img#mypreview').attr('src',this.id);
		 var target = jQuery('a#mylink').attr("href", this.name); event.preventDefault()});})();
	})};
</script>
<script type="text/javascript">
 $(document).ready(function() {
 	var session_bc_t = 
	jQuery("a#"+session_bc_t).addclass("active");
	//jQuery('img#mypreview').attr('src',"images/"+ session_bc_t +".jpg");
 });
</script>
{/literal}
{include file="footer.tpl"}
