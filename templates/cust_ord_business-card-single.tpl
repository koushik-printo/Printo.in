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
						<li>Marketing</li>
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
        
        
        <div class="app-box-main" >
        <div class="title-box">
          <h2>Single sided <span>Business Cards</span></h2>
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
                             <td><select name="select" id="select" style="width:100%">
                               <option value="100 GSM">100 GSM</option>
                               <option value="Eco-Friendly Paper">Eco-Friendly Paper</option>
                               <option value="Recycled 100 GSM">Recycled 100 GSM</option>
                             </select></td>
                             <td><select name="select2" id="select2" style="width:100%">
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
                              <input type="file" name="fileField2" id="fileField2" style="background: none repeat scroll 0 0 #FFFFFF;
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
                              <input type="text" name="textfield" id="textfield" style="width:80%" /></td>
                          </tr>
                          <tr>
                            <td align="right">Email</td>
                            <td><input type="text" name="textfield2" id="textfield2" style="width:80%"/></td>
                          </tr>
                          <tr>
                            <td width="25%" align="right">Phone No</td>
                            <td><input type="text" name="textfield3" id="textfield3" style="width:80%"/></td>
                          </tr>
                          <tr>
                            <td align="right">Description</td>
                            <td><textarea name="textfield4" rows="5" id="textfield4" style="width:80%"></textarea></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="40"><div class="float-left"><img src="images/icon-artwork-speci.jpg" width="20" height="20" /></div>
                          <div class="float-left"><a href="#" style="float:none; margin:0; padding-left:8px;" onclick="MM_openBrWindow('{$artfilename}','{$Name1}{$Name2}','scrollbars=yes,width=650,height=500')" >Artwork Specification</a></div>
                          
                          <div class="float-right"><a class="btn-green float-left" href="business_cards.php"><span>Send Enquiry</span></a></div>
                          <div class="clear-both"></div>
                          
                          </td>
                      </tr>
                    </table></td>
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