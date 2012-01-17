{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>-->
<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/skin.css" />

{literal}
<script type="text/javascript">

jQuery(document).ready(function() {
	
    jQuery('#mycarousel').jcarousel();

eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('$("#d").9(a(e){b($("#1").6(\'7\')=="8"){$("#0").2("3","4/c.5")}f $("#0").2("3","4/g.5");$("#1").h()});',18,18,'status|addonDiv|attr|src|images|png|css|display|none|click|function|if|minus|addonTrigger||else|plus|slideToggle'.split('|'),0,{}))
	
	
});

</script>

<script language="javascript">

function popitup(url) {
	
	var val=document.getElementById('mypr_papertype').value;
	var addedVal='';
	if(val=="Executive_Digital_Ivory")
	addedVal='#PR300DI';
	if(val=="Executive_Matte")
	addedVal='#PR300MT';
	if(val=="Executive_Glossy")
	addedVal='#PR300GL';
	if(val=="Recycled_Paper_cream")
	addedVal='#PR216EC2';
	if(val=="Premium_Textured_White")
	addedVal='#PR250WH-T1';
	if(val=="Premium_Textured_Silk")
	addedVal='#PR250SK';
	if(val=="Premium_Textured_Cream")
	addedVal='#PR270CR-T1';
	if(val=="Premium_Textured_Pearl")
	addedVal='#PR280PL';
	if(val=="Premium_Textured_half_gold")
	addedVal='#PR280GL-H';
	if(val=="Premium_Textured_gold")
	addedVal='#PR280GL';
	
	newwindow=window.open(url+addedVal,'paperType','height=700,width=900,scrollbars=yes');
	if (window.focus) {newwindow.focus()}
	return false;
}


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
//alert(mystr);
	//xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&pid="+prod_id+"&itemid="+item_id,true);
	xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&itemid="+str,true);
	xmlhttp.send();
}
function confirmCheck()
{
			if(document.getElementById('confirm').checked==true)
			{
					window.location="viewcart.php";
			}
			else
			{
					//if($('#confirmWrap').css('border')!='1px solid red')
					$('#confirmWrap').css('border','1px solid red');
					//else
					alert('Please Confirm By Checking the Checkbox!');
			}
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
      <h2>{$Name1} </h2>
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
      </ul>
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
          {if $imgcount ge 10}
          {assign var=prefix value='0'}
          {else}
          {assign var=prefix value=''}
          {/if}
            
            <div id="wrap">
  <ul id="mycarousel" class="jcarousel-skin-tango">
  {foreach from=$parray key=k item=foo}
    <li style="text-align:center">Page {$k}<br />
    <img src="phpthumbaikya/phpThumb.php?src=../{$imgpath}/{$foo}.png&amp;w=300&amp;h=260" alt="" border="0"/></a></li>
   {/foreach}
  </ul><br />



             <h3 class="text-center padding_top padding_bottom">Page {$smarty.section.foo.index}</h3>
              <!--<img src="phpthumbaikya/phpThumb.php?src=../../{$imgpath}/{$imgname}_Page_{$smarty.section.foo.index}.png&amp;w=190&amp;h=280" border="0" hspace="5" vspace="5"/>-->
           </div> 
            
           {else}
            <div class=" float_left padding_bottom"  >
              <h3 class="text-center padding_top padding_bottom">Page 1</h3>
             
             {if $current_data != ""}
              <img src="phpthumbaikya/phpThumb.php?src={$imgpath}/{$previewimage}&amp;w=190&amp;h=280" border="0" hspace="5" vspace="5"/>			
              
              {else}
              	<img src="images/NO-PREVIEW-AVAILABLE.jpg"  />
              {/if}
             
              
            
              
              
           </div>
           {/if}
           <div class="clear_both">   
           </div>

              
          </div>
            
        </div>
        <form action="" method="post" name="form1" id="form1">
           <div class="quantity" style="background:#EFEFEF;height:auto;">
        <div class="quantity-chooser">
                    {if $myPayerTypeOptions ne ''}
                        <div class="fields" >
                    <label><strong>Paper Type</strong> <img src="images/help.png" id="help" width="12px" border="0" align="baseline" onclick="return popitup('paper.html');" style="cursor:pointer;"/></label>
                    {html_options name=mypr_papertype id=mypr_papertype options=$myPayerTypeOptions selected=$myPayperTypeSelect onchange="getprice({$current_item_id});"}
                    </div>
                    {/if}
        
                    {if $myBindingOptions ne ''}
                    		<div class="fields" >
                    {if $current_product_id eq '15'} <label>Type</label> {else} <label>Binding Type</label>{/if}
                    {html_options name=mypr_binding options=$myBindingOptions selected=$myBindingSelect onchange="getprice({$current_item_id});"}
                    </div>
                    {/if}
                    {if $myTypeOptions ne ''}
                   			<div class="fields" >
                    {if $myTypeOptions ne ''} <label>Type</label>{/if}
                    {html_options name=mypr_type options=$myTypeOptions selected=$myTypeOptions onchange="getprice({$current_item_id});"}
                    </div>
                    		<div class="fields" >
                    {if $mySizeOptions ne ''} <label>Size</label>
                    {html_options name=mypr_size options=$mySizeOptions selected=$mySizeOptions onchange="getprice({$current_item_id});"}{/if}
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
                        <div id="txtHint"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartItemsList.price}</div></div>
        
                    {if $current_product_id eq '1' || $current_product_id eq '2'}
                   		<div style="width:300px; height: 20px;">
                    <div class="fields price">
                    <br />
                    <label style="cursor:pointer;" id="addonTrigger" ><img src="images/plus.png" id="status" style="margin:0px 5px -3px 0px;" />Click here for more finishing options</label>
                    <div class="fields" id="addonDiv" style="display:none;"><br /><br />
                    <label>Lamination <img src="images/help.png" width="15px" align="baseline" /></label>
                    {html_options name=mypr_Lamination options=$myLaminationTypeOptions selected=$myLaminationTypeSelect onchange="getprice({$current_item_id});"}
                    <br /><br />
                    <label>Round Corner Punch <img src="images/help.png" width="15px" align="baseline" /></label>
                    {html_options name=mypr_roundCorner options=$myRoundCornerTypeOptions selected=$myRoundCornerTypeSelect onchange="getprice({$current_item_id});"}
                    <br /><br />
                    <label>UV Spot Lamination <img src="images/help.png" width="15px" align="baseline" /></label> 
                    {html_options name=mypr_uvSpot options=$myUVSpotTypeOptions selected=$myUVSpotTypeSelect onchange="getprice({$current_item_id});"}              
                    </div>
                    </div>
                    </div>
                    {/if}
        </div><!--  {if $current_product_id eq '14'}
        <div style="text-align:center">
        <iframe src="dp.html" width="550" height="200" scrolling="no" frameborder="0" align="right"></iframe>
        </div>
        {/if}-->
        <div class="quantity-choosernew" style="height:auto;">
        <div style="width: auto; word-wrap: break-word;"><h5> By checking this box, I hereby give my approval to the above content (fonts, design layout & spellings). I fully understand and confirm that the image above is how my order will print and I accept that colour and resolution as I see on my screen will vary from that of the end printed product.</h5></div>
        <div id="confirmWrap" style="width:13px; height:13px; margin-top:5px;"><input type="checkbox" name="confirm" id="confirm" style="cursor:pointer;"/></div>
        <h5 style="position:absolute; margin:-13px 0px 0px 20px;"> I have read the statement above and approve.</h5>
        
        </div>
        </div>
        </form>
      </div>
      <div class="actions" ><a class="btn-blue"  onclick="confirmCheck()" ><span><span>Order Now</span></span></a>
      <a href="cart_user_files.php?pid={$current_product_id}&itemid={$current_item_id}&act=rm" class="btn-gray span" ><span><span>Change file</span></span></a>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
