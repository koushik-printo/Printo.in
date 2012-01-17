{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}

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




$(function(){
	
	if(!$.browser.msie) { 

	}
	else {
	$('.app-box-main').css('width','900px');
	$('#nextBtn').css('left','1035px');
	$('#prevBtn').css('left','255px').css('outline-color','white');
	$('#desc').css('left','255px');
	$('.title-box').find('h2').css('width','95%');
	$('.quantity-choosernew').css({
		
		'position':'relative',
		'margin-top':'-60px',
		'padding-left':'-40px'
	
	});
	}
	
	if($("#cal_img").length>0){
	var cal_img=$('#cal_img').val(),text='';
	var folderName= cal_img.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
	var folderTypePath= folderName.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
	var folderType=folderTypePath.replace(/\\/g,'/').replace( /.*\//, '' );
	if(folderType=="A5")
	text="Classic Calendar";
	if(folderType=="Long")
	text="Long Calendar";
	if(folderType=="Square")
	text="Compact Calendar";
	
	$('#front').html(text);
	
	}
	
	if($(".cards-diary").length>0){
	var elemLeft=$(".cards-diary").position().left;
	$(".cards-diary").prepend('<img src="images/da_spiral.png" style="position:absolute; width:806px; height:572px; left:'+elemLeft+'px;"/>');
	}

	
$("#addonTrigger").click(function (e) {
    if ($("#addonDiv").css('display') == "none") {
        $("#status").attr("src", "images/minus.png")
    } else $("#status").attr("src", "images/plus.png");
    $("#addonDiv").slideToggle()
});


});

function confirmCheck(){
	
	
	if(document.getElementById('confirm').checked==true){
	window.location="viewcart.php";}
	else
	{
	//if($('#confirmWrap').css('border')!='1px solid red')
	$('#confirmWrap').css('border','1px solid red');
	//else
	alert('Please Confirm By Checking the Checkbox!');
	}
	
	}



function getprice(str)
{
//alert(str);
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
			//alert(mystr);
			}
        } 
//alert(str);
//xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&pid="+prod_id+"&itemid="+item_id,true);
xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&itemid="+str,true);
xmlhttp.send();

}
function getpriceT(str,T)
{
//alert(T);
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
				//alert(mystr);
				}
			} 
	//alert(str);
	//xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&pid="+prod_id+"&itemid="+item_id,true);
	xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&itemid="+str+"&type"+T,true);
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
        {if $current_product_id neq '17'}
        <div class="breadcrumb">
					<ul>
						<li class="first" ><a href="index.php" >Home</a></li>
						<li>Marketing</li>
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
         {/if}
        
        
        <div class="app-box-main" >
        <div class="title-box">
          <h2>{$Name1} <span>{$Name2}</span></h2>
          <ul class="steps" >
            <li  >
              <label>Step</label>
              <span><span>1</span>
              <label>Pick a template</label>
            </span></li>
             {if $current_product_id eq '17'}
            <li  >
              <label>Step</label>
              <span><span>2</span>
              <label>Add logo</label>
            </span></li>
            {else}
            
             <li  >
              <label>Step</label>
              <span><span>2</span>
              <label>Add content</label>
            </span></li>
            {/if}
            <li class="active" >
              <label>Step</label>
              <span><span>3</span>
              <label>Confirm</label>
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
            
             <div class="actions" style="margin-right:10px;" ><a href="#" style="margin-right:15px;" class="btn-blue" onclick="confirmCheck()" ><span><span >Order Now</span></span></a>
              <!--<a href="viewcart.php" class="btn-gray cart" ><span><span>Add to cart</span></span></a> -->
              <a href="cart_design.php?pid={$productDetails.productid}&amp;tid={$tempalteDetails.templateid}&amp;itemid={$cartItemsList.cartitemid}&amp;folder={$current_product_folder}&amp;type={$current_product_type}" class="btn-gray span" ><span><span>Edit</span></span></a></div>
              <div class="clear-both"></div>
              
            
            <div class="bcard-confirm-box" >            
<div class="glow-bg" >
        <div class="cards" >
        {if $current_product_id eq '17'}
                  <h3 id="front"></h3>
                  {else}
                  <h3>Front</h3>
                  {/if}
                  {if $current_product_id neq '16'}
                  {if $current_product_id eq '17'}
                  <img src="images/calender/{$current_product_type}/{$current_product_folder}/Main_500.png"   /> 
                  <input type="hidden" name="cal_img" id="cal_img" value="images/calender/{$current_product_type}/{$current_product_folder}/Main_500.png"/>
                  {else}
                  <img src="uploads/cart_img/{$current_item_id}.jpg"  border="1" /> 
                  {/if}
                  {else}
                  <!--Diary Part-->
                  
                  <div class="cards-diary" >
				   
                   <img src="uploads/cart_img/{$current_item_id}.jpg"  style="padding:1px; border: 2px solid #EEEEEE; width:100%" />
                   </div>
                   {/if}
                   </div>
              </div>
            </div>
            <form action="" method="post" name="form1" id="form1">
            <div class="quantity" style="background:#efefef;  min-height:110px;">
            <div class="quantity-chooser" style="height:auto; width:350px;">
            
             
              {if $myPayerTypeOptions ne ''}
                <div class="fields" >
                  <label><strong>Paper Type</strong> <img src="images/help.png" id="help" width="12px" border="0" align="baseline" onclick="return popitup('paper.html');" style="cursor:pointer;"/></label>
                  {html_options name=mypr_papertype id=mypr_papertype options=$myPayerTypeOptions selected=$myPayperTypeSelect onchange="getprice({$current_item_id});"}
               
                </div>
                
                {/if}
                <div class="fields" >
                  <label><strong>Quantity</strong></label>
                  
                  <input type="hidden" name="item_id" id="item_id" value="{$current_item_id}" />
                  <input type="hidden" name="product_id" id="product_id" value="{$productDetails.productid}" />
                  <input type="hidden" name="cart_id" id="cart_id" value="{$cartItemsList.cartid}" />
                  <input type="hidden" name="template_id" id="template_id" value="{$tempalteDetails.templateid}" />
                  <!--<input name="ChangeQuantity" type="submit" value="Change Quantity" /> -->
                  {html_options name=mypr_qty options=$myQtyOptions selected=$myQtySelect onchange="getprice({$current_item_id});"}
                </div>
                {if $myTypeOptions ne ''}
                <div class="fields" >
                <label>Type</label>
                 {if $current_product_id neq '17'}
                  {html_options name=mypr_type options=$myTypeOptions selected=$myTypeSelect onchange="getprice({$current_item_id});"}
                  {else}
                  {html_options name=mypr_type options=$myTypeOptions selected=$myTypeSelect disabled=$disabled onchange="getprice({$current_item_id});"}
                  
                  <input type="hidden" name="mypr_fol" value="{$current_product_folder}">
                  {/if}
					</div>
                    {/if} 
                {if $mySizeOptions ne ''}
                <div class="fields" >
                   <label>Size</label>
                  {html_options name=mypr_size options=$mySizeOptions selected=$mySizeOptions onchange="getprice({$current_item_id});"}
                </div>{/if} 
                
                
                
                <div class="fields price" >
                  <label>Price</label>
                  <div id="txtHint"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartItemsList.price}</div> 
                  </div>
                  
                {if $current_product_id eq '1'}
               			 <div style="width:300px; height: 20px;">
                <div class="fields price">
                <br />
                  <label style="cursor:pointer;" id="addonTrigger" ><img src="images/plus.png" id="status" style="margin:0px 5px -3px 0px;" />Click here for more finishing options</label>
                 <div class="fields" id="addonDiv" style="display:none;"><br /><br />
                 <label>Lamination <img src="images/help.png" width="12px" align="baseline" /></label>
                  {html_options name=mypr_Lamination options=$myLaminationTypeOptions selected=$myLaminationTypeSelect onchange="getprice({$current_item_id});"}
                 <br /><br />
                 <label>Round Corner Punch <img src="images/help.png" width="12px" align="baseline" /></label>
                  {html_options name=mypr_roundCorner options=$myRoundCornerTypeOptions selected=$myRoundCornerTypeSelect onchange="getprice({$current_item_id});"}
                 <br /><br />
                <label>UV Spot Lamination <img src="images/help.png" width="12px" align="baseline" /></label> 
                  {html_options name=mypr_uvSpot options=$myUVSpotTypeOptions selected=$myUVSpotTypeSelect onchange="getprice({$current_item_id});"}              
                 </div>
                </div>
              </div>
               {/if}
              <div class="promo"><!-- <strong>You can even order</strong> : Card Holder --> </div>
            <div class="quantity-choosernew" style="height:auto;">
           
             <div style="width: auto; word-wrap: break-word;"><h5> By checking this box, I hereby give my approval to the above content (fonts, design layout & spellings). I fully understand and confirm that the image above is how my order will print and I accept that colour and resolution as I see on my screen will vary from that of the end printed product.</h5></div>
				 <div id="confirmWrap" style="width:13px; height:13px; margin-top:5px;"><input type="checkbox" name="confirm" id="confirm" style="cursor:pointer;"/></div>
                 <h5 style="position:absolute; margin:-13px 0px 0px 20px;"> I have read the statement above and approve.</h5>
              
            </div>
              
            </div>
             
           
             </div>
            
          
          </div>
              <div class="actions" ><a class="btn-blue" style="margin-right:15px;" onclick="confirmCheck()"><span><span>Order Now</span></span></a> <!--<a href="viewcart.php" class="btn-gray cart" ><span><span>Add to cart</span></span></a> --> <a href="cart_design.php?c={$change}&pid={$productDetails.productid}&tid={$tempalteDetails.templateid}&itemid={$cartItemsList.cartitemid}&amp;folder={$current_product_folder}&amp;type={$current_product_type}" class="btn-gray span" ><span><span>Edit</span></span></a> </div>
            </form>
            
          
                    
        </div>
      </div>
  
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}