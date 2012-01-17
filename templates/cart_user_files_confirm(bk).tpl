{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script language="javascript">
function getprice(str)
{

var xmlhttp;
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
  
 var mystr = '';
 var elem = document.getElementById('form1').elements;
        for(var i = 0; i < elem.length; i++)
        {
		if (elem[i].name.indexOf("mypr_")!=-1)
        {
            mystr += elem[i].name +":"+ elem[i].value;
            mystr += ",";
			}
        } 

//xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&pid="+prod_id+"&itemid="+item_id,true);
xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&itemid="+str,true);
xmlhttp.send();
}
</script>
{/literal}
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
        <li  >
          <label>Step</label>
          <span><span>1</span>
            <label>Upload Your File</label>
          </span></li>
        <li  >
          <label>Step</label>
          <span><span>2</span>
            <label>Review Your File</label>
          </span></li>
        <li class="active" >
          <label>Step</label>
          <span><span>3</span>
            <label>Confirm Order</label>
          </span></li>
          <div class="clear-both"></div>
      </ul>
      </div>
      <div class="content-adding box-style-light-gray " >
        <!--<div class="app-breadcrumb" >
          <h3>Now add content</h3>
          <ul>
            <li>Double Sided</li>
            <li>Architecture</li>
            <li>Modern <span>BC 21421</span></li>
          </ul>
        </div> -->
        <div class="bcard-confirm-box" >
          <div class="glow-bg" >
          {if $imgcount gt 1}
          {section name=foo start=1 loop=$imgcount+1 step=1}
            <div class=" float_left padding_bottom"  >
              <h3 class="text-center padding_top padding_bottom">Page {$smarty.section.foo.index}</h3>
              <img src="phpthumbaikya/phpThumb.php?src=../../{$imgpath}/{$imgname}_Page_{$smarty.section.foo.index}.png&amp;w=190&amp;h=280" border="0" hspace="5" vspace="5"/>
           </div>
            {/section}
           {else}
            <div class=" float_left padding_bottom"  >
              <h3 class="text-center padding_top padding_bottom">Page 1</h3>
              <img src="phpthumbaikya/phpThumb.php?src=../../{$imgpath}/{$previewimage}&amp;w=190&amp;h=280" border="0" hspace="5" vspace="5"/>
           </div>
           {/if}
           <div class="clear_both">   
           </div>

              
          </div>
            
        </div>
        <form action="" method="post" name="form1" id="form1">
            <div class="quantity">
              <div class="quantity-chooser">
              {if $myPayerTypeOptions ne ''}
                <div class="fields" >
                  <label>Paper Type</label>
                  {html_options name=mypr_papertype options=$myPayerTypeOptions selected=$myPayperTypeSelect onchange="getprice({$current_item_id});"}
                </div>
                {/if}
                
                 {if $myBindingOptions ne ''}
                <div class="fields" >
                  <label>Binding Type</label>
                  {html_options name=mypr_binding options=$myBindingOptions selected=$myBindingSelect onchange="getprice({$current_item_id});"}
                </div>
                {/if}
                
                <div class="fields" >
                  <label>Quantity</label>
                  
                  <input type="hidden" name="item_id" id="item_id" value="{$current_item_id}" />
                  <input type="hidden" name="product_id" id="product_id" value="{$current_product_id}" />
                  <input type="hidden" name="cart_id" id="cart_id" value="{$cartItemsList.cartid}" />
                  <!--<input name="ChangeQuantity" type="submit" value="Change Quantity" /> -->
                  {html_options name=mypr_qty options=$myQtyOptions selected=$myQtySelect onchange="getprice({$current_item_id});"}
                </div>
                <div class="fields price" >
                  <label>Price</label>
                  <div id="txtHint"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartItemsList.price}</div> </div>
              </div>
              <div class="promo"><!-- <strong>You can even order</strong> : Card Holder  -->
              {if $current_product_id eq '14'}
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
                        <div style="text-align:center">
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
              </div>
            </div>
            </form>
      </div>
      <div class="actions" ><a href="viewcart.php" class="btn-blue" ><span><span>Order Now</span></span></a>
      <a href="cart_user_files.php?pid={$current_product_id}&itemid={$current_item_id}&act=rm" class="btn-gray prev" ><span><span>Upload another file</span></span></a>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
