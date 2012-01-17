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
          <h2>A4 <span>Brochure</span></h2>
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
                             <td width="49%">No of Pages</td>
                             <td width="49%">Paper Type(Cover)</td>
                            </tr>
                           <tr>
                             <td>
                               <select name="select" id="select" style="width:100%">
                                 <option value="4">4</option>
                                 <option value="8">8</option>
                                 <option value="12">12</option>
                                 <option value="16">16</option>
                                 <option value="20">20</option>
                                 <option value="24">24</option>
                                 <option value="28">28</option>
                                 <option value="32">32</option>
                                 <option value="36">36</option>
                                 <option value="40">40</option>
                                 <option value="44">44</option>
                                 <option value="48">48</option>
                                 <option value="52">52</option>
                                 <option value="56">56</option>
                                 <option value="60">60</option>
                                 <option value="64">64</option>
                                 <option value="68">68</option>
                                 <option value="72">72</option>
                                 <option value="76">76</option>
                                 <option value="80">80</option>
                                 <option value="84">84</option>
                                 <option value="88">88</option>
                                 <option value="92">92</option>
                                 <option value="96">96</option>
                                 <option value="100">100</option>
                               </select></td>
                             <td>
                               <select name="select" id="select" style="width:100%">
                                 <option value="300 GSM Glossy">300 GSM Glossy</option>
                                 <option value="300 GSM Matte">300 GSM Matte</option>
                                 <option value="220 GSM Glossy">220 GSM Glossy</option>
                                 <option value="220 GSM Matte">220 GSM Matte</option>
                               </select></td>
                            </tr>
                           <tr>
                             <td width="51%">Paper Type(Inner Pages)</td>
                             <td>Additional Finishing</td>
                            </tr>
                           <tr>
                             <td><select name="select2" id="select2" style="width:100%">
                               <option value="100 GSM">100 GSM</option>
                               <option value="90 GSM">90 GSM</option>
                             </select></td>
                             <td><select name="select2" id="select2" style="width:100%">
                               <option value="Matte Lamination">Matte Lamination</option>
                               <option value="Glossy Lamination">Glossy Lamination</option>
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
                         <td><h4>Binding / Folding options</h4></td>
                         <td>&nbsp;</td>
                       </tr>
                       <tr>
                         <td>
                         <div class="float-left" style="text-align:center; margin-right:1px">
                         	<div  class="zoomin"><img src="images/option-brochure-1.jpg" width="87" height="87" title="Wire O Binding" />
                            	<div class="zoom"><img src="images/doc_l1.jpg" width="267" height="190" title="Wire O Binding" /></div></div>
                            <div><input type="radio" name="RadioGroup1" value="radio" id="RadioGroup1_1" /></div>
                         </div>
                         
                         <div class="float-left" style="text-align:center;  margin-right:1px">
                         	<div  class="zoomin"><img src="images/option-brochure-2.jpg" width="87" height="87"  title="Spiral O Binding" />
                            	<div class="zoom"><img src="images/doc_l2.jpg" width="267" height="190" title="Spiral O Binding" /></div></div>
                            <div><input type="radio" name="RadioGroup1" value="radio" id="RadioGroup1_2" /></div>
                         </div>
                         
                         <div class="float-left" style="text-align:center; margin-right:1px">
                         	<div  class="zoomin"><img src="images/option-brochure-3.jpg" width="87" height="87"  title="Center Steplink" />
                            	<div class="zoom"><img src="images/doc_l3.jpg" width="267" height="190"  title="Center Steplink"/></div></div>
                            <div><input type="radio" name="RadioGroup1" value="radio" id="RadioGroup1_3" /></div>
                         </div>
                         
                         <div class="float-left" style="text-align:center;">
            <div ><img src="images/option-brochure-6.jpg" width="87" height="87" />
                            	</div>
                            <div><input type="radio" name="RadioGroup1" value="radio" id="RadioGroup1_4" /></div>
                         </div>
                         
                         
                    </td>
                         <td>&nbsp;</td>
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
                    <td width="50%" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><div class="float-left"><img src="images/icon-artwork-speci.jpg" width="20" height="20" /></div><div class="float-left"><a href="#" style="float:none; margin:0; padding-left:8px;" onclick="MM_openBrWindow('{$artfilename}','{$Name1}{$Name2}','scrollbars=yes,width=650,height=500')" >Artwork Specification</a></div></td>
                      </tr>
                      <tr>
                        <td height="30">&nbsp;</td>
                      </tr>
                      <tr>
                        <td><h4>My details</h4></td>
                      </tr>
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
                          <tr>
                            <td height="40" align="right">&nbsp;</td>
                            <td><a class="btn-green float-left" href="business_cards.php"><span>Send Enquiry</span></a></td>
                          </tr>
                        </table></td>
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