{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<style type="text/css">    
	.pg-normal {
		color: black;
		font-weight: normal;
		text-decoration: none;    
		cursor: pointer;    
	}
	.pg-selected {
		color: black;
		font-weight: bold;        
		text-decoration: underline;
		cursor: pointer;
	}
</style>

                                                                                                                 
    
    
<script language="javascript" type="text/javascript">
	function tabSwitch(onLink,offLink1,offLink2,onTab,offTab1,offTab2)
	{
		document.getElementById(onLink).className="active";
		document.getElementById(offLink1).className="";
		document.getElementById(offLink2).className="";
		
		document.getElementById(onTab).style.display="block";
		document.getElementById(offTab1).style.display="none";
		document.getElementById(offTab2).style.display="none";
	}
	
	function mycall(){
	
	var a = document.getElementById('listing').value;
	if(a==2)
		{
		document.getElementById('banglore-display').style.display='none';
		document.getElementById('hyderabad-display').style.display='block';
		}else{
		document.getElementById('banglore-display').style.display='block';
		document.getElementById('hyderabad-display').style.display='none';
		}
		
	}
</script>
{/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >
				
					<div class="breadcrumb" >
        <ul>
          <li class="first" ><a href="index.php" >Home</a></li>
          <li>Locations</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px; float:left;">Store Locator<br /><span style="font-size:14px;color:#f79321;">We ship across India.</span></h2>
            <h2 class="float_right" style="padding-right:30px; color:#f79321;">Help desk No. <span style="color:#804cb8;">+91 (80) 400 10 200</span></h2>
            <div class="clear_both"></div>
            <div class="sub_cont">
              <select name="select" id="listing" onchange="mycall();">
                <option value="1">Bangalore</option>
                <option value="2">Hyderabad</option>
              </select>
              <br />
              <br />
              <div id="banglore-display">
                <table width="690" align="center" cellpadding="4">
                  <tr>
                    <td width="230" align="center" class="purple"><div align="left"><a href="locations.php#ele_info" class="purple">Electronic City - Infosys</a></div></td>
                    <td width="230" align="center" class="purple"><div align="left"><a href="locations.php#wht" class="purple">Whitefield</a></div></td>
                    <td width="230" align="center" class="purple"><div align="left"><a href="locations.php#wht" class="purple">BEL Road</a></div></td>
                  </tr>
                  <tr>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#brigade" class="purple">Brigade Road</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#ele" class="purple">Electronic City</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#hsr" class="purple">HSR Layout</a></div></td>
                  </tr>
                  <tr>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#ind01" class="purple">Indiranagar</a><a href="locations.php#ind02" class="purple"> - 100 ft. Rd.</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#ind02" class="purple">Indiranagar </a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#air" class="purple">Old Airport Road</a></div></td>
                  </tr>
                  <tr>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#jay01" class="purple">Jayanagar - 9th Block</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#jay02" class="purple">Jayanagar- South End Circle</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#kor" class="purple">Koramangala - 6th Block</a></div></td>
                  </tr>
                  <tr>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#kor02" class="purple">Koramangala - Indoor Stadium</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#mall" class="purple">Malleshwaram</a></div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#mantri" class="purple">Mantri Square Mall</a></div></td>
                    
                    
                  </tr>
                  <tr>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#odj" class="purple">Jayanagar - 4th Block</a> </div></td>
                    <td align="center" class="purple"><div align="left"><a href="locations.php#Basaveshwara" class="purple">Basaveshwara Nagar</a></div></td>
                    <td align="center" class="purple"><div align="left">&nbsp;</div></td>
                    
                    
                  </tr>
                  
                  
                </table>
                <p>&nbsp;</p>
                <table width="600" border="0" id="results"  align="left" cellpadding="8" cellspacing="0" bordercolor="#d5d5d5" style="margin-left:5px">
                  <tbody>
                    <tr>
                      <td width="50%" valign="top"><a name="ele_info" id="ele_info"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Electronic City - Infosys </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>Gate #6, No.47, Terminal Building, <br />
                              Infosys Technologies Ltd. <br />
                              #44, Electronic City, <br />
                              Hosur Road, <br />
                              Bangalore - 560100 <br />
                              <b> (Inside Infy campus; only for Infoscions) </b> </span> <br />
                              <br />
                              <span>E-mail:  infy.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Fri :  9:30 AM to 5:30 PM </span> <br />
                              <span>Sat, Sun &amp; Govt. Holidays : <b>Closed </b></span></td>
                          </tr>
                      </table></td>
                      <td width="50%" valign="top"><a name="wht" id="wht"> </a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Whitefield </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>#30A, Dodanekkundi Industrial Area, <br />
                              Hoodi Road, <br />
                              Bangalore - 560048 </span> <br />
                              <br />
                              <span>E-mail:  whf.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 7:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : <b>Closed</b></span></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top" class="left_cell"><a name="bel" id="bel"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">BEL Road </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><p><span>No. 19, New BEL Road, <br />
                              ITI Layout, <br />
                              RMV 2nd Stage, <br />
                              Bangalore - 560094 </span> <br />
                              </p>
                                <p><span>E-mail:  bel.blr@printo.in </span> <br />
                                    <br />
                                    <span>Mon - Sat :  10:00 AM to 8:30 PM </span> <br />
                                    <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM </span> </p></td>
                          </tr>
                      </table></td>
                      <td valign="top"><a name="brigade" id="brigade"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Brigade Road </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No.76, Brigade Road, <br />
                              Ashok Nagar, <br />
                              Bangalore - 560025 </span> <br />
                              <br />
                              <span>E-mail:  brg.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:00 AM to 8:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM </span></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="ele" id="ele"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Electronic City </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><p><span>Opp. Lords Plaza Hotel,  <br />
                              Electronic City Phase-I, Near Infosys Gate No.1, </span><span>Bangalore - 560100 </span> <br />
                                <br />
                                <span>E-mail:  ec1.blr@printo.in </span> <br />
                                <br />
                                <span>Mon - Sat :  10:00 AM to 7:00 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : <b>Closed </b> </span></p>
                              <p> <strong>The EC1 store is not operation Currently. Please await for the status update </strong></p></td>
                          </tr>
                      </table></td>
                      <td valign="top"><a name="hsr" id="hsr"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">HSR Layout </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No. 822, 27th Main, <br />
                              HSR Layout, <br />
                              Sector-1, Bangalore - 560102 </span> <br />
                              <br />
                              <span>E-mail:  hsr.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 8:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM </span></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="ind01" id="ind01"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Indiranagar </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No.1, Double Road <br />
Indiranagar 2nd Phase, <br />
Bangalore - 560038 </span> <br />
<br />
<span>E-mail:   inr.blr@printo.in </span> <br />
<br />
<span>Mon - Sat :  10:30 AM to 8:00 PM</span> <br />
<span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM</span></td>
                          </tr>
                      </table></td>
                      <td valign="top"><a name="ind02" id="ind02"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Indiranagar (inside Office Depot)</span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><p><span>Reliance Office Depot, #2012, Shreyas Plaza, <br />
HAL 2nd Stage, <br />
100 ft road, Bangalore - 560038 </span> <br />
<br />
<span>E-mail:  odi.blr@printo.in </span> <br />
<br />
<span>Mon - Sat :  10:00 AM to 8:30 PM </span> <br />
<span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM </span></p></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="air" id="air"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Old Airport Road </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><p><span>No.127/6, G1, Near HP Petrol Pump / Wind Tunnel Road Jn.,<br />
                              </span><span>Old Airport Road, <br />
                                Bangalore - 560017 </span> <br />
                                <br />
                                <span>E-mail:  apr.blr@printo.in </span> <br />
                                <br />
                                <span>Mon - Sat :  10:30 AM to 8:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : <b>Closed </b></span></p></td>
                          </tr>
                        </table>
                          <p> <br />
                        </p></td>
                      <td valign="top"><a name="jay01" id="jay01"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Jayanagar</span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No. 470, 39th  Cross <br />
                              East End Main Road <br />
                              9th Block, Jayanagar <br />
                              Bangalore - 560069. </span> <br />
                              <br />
                              <span>E-mail:  jn1.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  9:30 AM to 8:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM </span></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="jay02" id="jay02"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Jayanagar </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No. 14/1, Anand Chambers, <br />
                              Elephant Rock Road, South End Circle,<br />
                              3rd Block, Jayanagar, <br />
                              Bangalore - 560011. </span> <br />
                              <br />
                              <span>E-mail:  jn2.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 7:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : <b>Closed</b> </span> </td>
                          </tr>
                        </table>
                          <p> </p></td>
                      <td valign="top"><a name="kor" id="kor"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Koramangala </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No. 17, 60 Feet Road <br />
                              (Canara Bank Road), Opp. Nilgiris,<br />
                              5th Cross, 6th Block, <br />
                              Koramangala, <br />
                              Bangalore - 560095. </span> <br />
                              <br />
                              <span>E-mail:  kr1.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  9:30 AM to 8:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM</span></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="kor02" id="kor02"> </a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Koramangala </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>No. 861, 80 ft Peripheral Road, Opp. Indoor Stadium, <br />
                              Koramangala, <br />
                              Bangalore - 560095 </span> <br />
                              <br />
                              <span>E-mail:  kr2.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 8:00 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : <b>Closed</b></span></td>
                          </tr>
                      </table></td>
                      <td valign="top"><a name="mall" id="mall"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Malleshwaram </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>Agarwal Bhavan, Opp. 18th Cross Bus Stand, <br />
                              18th Cross, Malleswaram, <br />
                              Bangalore - 560055. </span> <br />
                              <br />
                              <span>E-mail:  mlm.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 8:30 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM </span> </td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="mantri" id="mantri"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Mantri Square Mall </span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span>Inside Reliance Office Depot, 1st Floor, <br />
                              Mantri Square, <br />
                              Sampige Road, Malleshwaram, <br />
                              Bangalore - 560055 </span> <br />
                              <br />
                              <span>E-mail:  odm.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 8:00 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM</span></td>
                          </tr>
                      </table></td>
                      <td valign="top"><a name="odj" id="odj"></a><table width="250" border="0" cellpadding="4" cellspacing="0">
                        <tr>
                          <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt"> Jayanagar - Inside Office Depot</span></td>
                        </tr>
                        <tr>
                          <td height="10"></td>
                        </tr>
                        <tr>
                          <td height="220" valign="top" style="border:2px solid #229ed8"><span>Reliance Office Depot,  <br />
                            29 Cross, 4th Block <br />
                            Jayanagar <br />
                            Bangalore - 560011 </span> <br />
                            <br />
                            <span>E-mail:    odj.blr@printo.in</span> <br />
                            <br />
                            <span>Mon - Sat :  10:30 AM to 8:00 PM </span> <br />
                            <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM</span></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top"><a name="Basaveshwara" id="Basaveshwara"></a>
                        <table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Basaveshwara Nagar</span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"><span># 1,Shreyas Complex, 1st Main Road,<br />KHB Colony, 2nd Stage,<br />Basaveshwara Nagar ,<br />Bangalore 560 079</span> <br />
                              <br />
                              <span>E-mail:  odb.blr@printo.in </span> <br />
                              <br />
                              <span>Mon - Sat :  10:30 AM to 8:00 PM </span> <br />
                              <span>Sun &amp; Govt. Holidays : 12:30 PM to 8:00 PM</span></td>
                          </tr>
                        </table></td>
                      <td valign="top"><a name="odj" id="odj2"></a></td>
                    </tr>
                    <tr>
                      <td valign="top">&nbsp;</td>
                      <td valign="top">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
                
                
                <div class="clear_both"></div>
                
               
                
              </div>
              <!-- <div id="pageNavPosition"></div>-->
              
              <div id="hyderabad-display" style="display:none;">
                <table width="690" align="center" cellpadding="4">
                  <tr>
                    <td width="230" align="center" class="purple"><div align="left"><a href="#" class="purple">Somajiguda </a></div></td>
                    <td width="230" align="center" class="purple">&nbsp;</td>
                    <td width="230" align="center" class="purple">&nbsp;</td>
                  </tr>
                </table>
                <p>&nbsp;</p>
                <table width="600" border="0"  align="left" cellpadding="8" cellspacing="0" bordercolor="#d5d5d5" style="margin-left:5px">
                  <tbody>
                    <tr>
                      <td width="50%" valign="top"><table width="250" border="0" cellpadding="4" cellspacing="0">
                          <tr>
                            <td height="30" background="images/nav-bg-strip.gif"><span class="wht-txt">Somajiguda<a name="ele_info" id="ele_info2"></a></span></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr>
                            <td height="220" valign="top" style="border:2px solid #229ed8"> <p>No. 1-C and 1-E, Ground Floor, Amruthaville, Rajbhavan Road, Hyderabad - 500 082. <br />
                                <br />
                            Tel: +91-40-64570631 / 32 </p>
                            <p> E-mail: smj.hyd@printo.in    </p></td>
                          </tr>
                      </table></td>
                      <td width="50%" valign="top">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
                <div class="clear_both"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
			</div>
		</div>
        {literal}
<!--   <script type="text/javascript" src="js/paging.js"></script> 
    <script type="text/javascript"><!--
        var pager = new Pager('results', 1); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    </script> -->
    {/literal}    
        
        
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
