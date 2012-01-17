{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

 {literal}
 <script language="javascript">
$.post("/printo.in/v1_2/getsession.asp");
</script>

<script type="text/javascript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
        </script>
        
{/literal}


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
  if(xmlhttp.readyState==4 && xmlhttp.status==200)
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
        
        <div class="breadcrumb">
					<ul>
						<li class="first" ><a href="index.php" >Home</a></li>
						<li>Products</li>
						<li class="last">Flex Banners</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
        
        
        <div class="app-box-main" >
        <div class="title-box">
          <h2>Flex <span>Banners</span></h2>
          <ul class="steps" >
            <li  >
              <label>Step</label>
              <span><span>1</span>
              <label>Pick a template</label>
            </span></li>
            <li class="active" >
              <label>Step</label>
              <span><span>2</span>
              <label>Add content</label>
            </span></li>
            <li  >
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
            <div class="bcard-confirm-box" >
              <div class="glow-bg" >
                <div class="cards" style="margin-right:20px;" >
                 <form action="" method="post" enctype="multipart/form-data">
                 <table width="100%" border="0" cellpadding="0" cellspacing="0" style="text-align:left;">
                  <tr>
                    <td width="50%" valign="top"><h4>Customise your Order</h4>
                     <table width="100%" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                         <td><table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#efefef">
                           <tr>
                             <td width="51%">Paper Type</td>
                             <td>Additional Finishing</td>
                            </tr>
                           <tr>
                             <td><select name="paperType" id="paperType" style="width:100%">
                             		<option value="advice_Me">Advice Me</option>
                               		<option value="100 GSM">100 GSM</option>
                               		<option value="Eco-Friendly Paper">Eco-Friendly Paper</option>
                               		<option value="Recycled 100 GSM">Recycled 100 GSM</option>
                             	</select></td>
                             <td><select name="additionalFinishing" id="additionalFinishing" style="width:100%">
                               <option value="None">None</option>
                               <option value="Pads of 100">Pads of 100</option>
                             </select></td>
                            </tr>
                         </table></td>
                         <td width="30">&nbsp;</td>
                       </tr>
                       <tr>
                         <td height="30">&nbsp;</td>
                         <td>&nbsp;</td>
                       </tr>
                       <tr>
                         <td><h4>Browse your File</h4></td>
                         <td>&nbsp;</td>
                       </tr>
                       <tr>
                         <td><table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#efefef">
                           <tr>
                             <td width="49%">
                              <input type="file" name="uploadfile" id="uploadfile" style="background: none repeat scroll 0 0 #FFFFFF;
    border: 0 solid #EEEEEE; width: auto;" /></td>
                           </tr>
                         </table>
                         </td>
                         <td>&nbsp;</td>
                       </tr>
                     </table></td>
                    <td width="50%" valign="top"><h4>My details</h4>
                      <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><table width="100%" border="0" cellpadding="0" cellspacing="10" bgcolor="#efefef">
                          <tr>
                            <td width="25%" align="right">Name</td>
                            <td width="75%"><label for="textfield"></label>
                              <input type="text" name="name" id="name" style="width:80%" />
                             {if $err_userName != ''}  <div style="color:#F00">{$err_userName}</div> {/if}</td>
                          </tr>
                          <tr>
                            <td align="right">Email</td>
                            <td><input type="text" name="email" id="email" style="width:80%"/>
                            {if $err_emailBlank != ''}  <div style="color:#F00">{$err_emailBlank}</div> {elseif $err_invalidEmail != ''} <div style="color:#F00"> {$err_invalidEmail}</div> {/if}</td>
                          </tr>
                          <tr>
                            <td width="25%" align="right">Phone No</td>
                            <td><input type="text" name="phone" id="phone" style="width:80%"/>
                            {if $err_phoneNumber != ''} <div style="color:#F00">{$err_phoneNumber}</div> {/if}</td>
                          </tr>
                          <tr>
                            <td align="right">Description</td>
                            <td><textarea name="description" rows="5" id="description" style="width:80%"></textarea>
                            {if $err_userdesc != ''} <div style="color:#F00">{$err_userdesc} </div>{/if}</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="40"><div class="float-left"><img src="images/icon-artwork-speci.jpg" width="20" height="20" /></div>
                          <div class="float-left"><a href="#" style="float:none; margin:0; padding-left:8px;" onclick="MM_openBrWindow('{$artfilename}','{$Name1}{$Name2}','scrollbars=yes,width=650,height=500')" >Artwork Specification</a></div>
                          
                          <div class="float-right">
                            <input type="image" style="background: none repeat scroll 0% 0% transparent; border: medium none; padding: 0pt;" src="images/btn_submit.jpg" id="ReqSubmit" name="ReqSubmit"></div>
                          
                          <div class="clear-both"></div>
                          
                          </td>
                      </tr>
                      <tr>
                        <td height="40"> Not what you are looking for? <a href="request_quote.php"><strong>send us a detailed enquiry.</strong></a></td>
                      </tr>
                    </table></td>
                  </tr>
                </table>

                 </form>
                 
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