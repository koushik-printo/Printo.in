{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{literal}

<script type="text/javascript" src="js/comp/general/jquery.main.userinfo.js"></script>


{/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
      <div class="content-box-r" >
        <form name="form1" id="form1" method="post" action="" class="label-horizontal" onsubmit="return checkDataUserInfo();">
        <div class="form_frame">
                    <div class="upper-shadow">
                        <div class="lower-shadow">
  <table width="670" border="0" class="form">
            {if $uselast eq 'Yes'}
            <tr>
            <td height="30" colspan="4"><a href="cart_userinfo.php?use=1">Use my last ordered address</a>&nbsp; </td>
            </tr>
            {/if}
            <tr>
            <span class="red">{$err_msg}</span>
            <td height="30" colspan="4" bgcolor="#229ed8" class="section"><strong class="section">Billing Address</strong><input type="hidden" name="billing_email" id="billing_email" value="{$cur_billing_email}" /></td>
            </tr>
            <tr>
            <td   class="pad-top-3px"  width="241" align="left" valign="top"><label for="label"><span class="red">*</span>First Name :</label></td>
            <td width="209" valign="top"><input type="text" tabindex="1" name="billing_fname" id="billing_fname" value="{$cur_billing_fname}" onchange="myformchange();" onkeyup="myformchange();" />
            <br />
            <span class="red">{if $err_billing_fname ne ''} {$err_billing_fname} {/if}</span></td>
            <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Locality / City :</td>
            <td valign="top"><div id="txtHint"><input type="text" name="billing_city" id="billing_city" value="{$cur_billing_area}" onchange="myformchange();" onkeyup="myformchange();" />
            <br />
            <span class="red">{if $err_billing_area ne ''} {$err_billing_area} {/if}</span></div></td>
            </tr>
            <tr>
            <td   class="pad-top-3px" width="241" align="left" valign="top"><span class="red">*</span>Last Name :</td>
            <td width="229" valign="top"><input type="text" class="big" name="billing_lname" id="billing_lname" value="{$cur_billing_lname}" onchange="myformchange();" onkeyup="myformchange();" />
            <br />
            <span class="red">{if $err_billing_lname ne ''} {$err_billing_lname} {/if}</span></td>
            
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>State :</td>
            <td valign="top">
            <input type="text" width="30" name="billing_state" id="billing_statetext"  onkeyup="myformchange();" onchange="myformchange();" onclick="myformchange();" style='display:none;' disabled="disabled"/>
            <select name="billing_state" id="billing_state" onchange="myformchange();" style="width:173px;">
            <option value="0">Select State</option>
            
            {section name=nr loop=$stateList}
            
            <option value="{$stateList[nr].stateid}" {if $cur_billing_state eq $stateList[nr].stateid} selected {/if}>{$stateList[nr].statename}</option>
            
            {/section}
            
            </select>
            <br />
            <span class="red" style="position:relative; top:10px;">{if $err_billing_state ne ''} {$err_billing_state} {/if}</span></td>
            </tr>
            <tr>
            <td   class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Address Line 1 :</td>
            <td valign="top"><input type="text" name="billing_address1" id="billing_address1" value="{$cur_billing_address1}" onchange="myformchange();" onkeyup="myformchange();" />
            <br />
            <span class="red">{if $err_billing_address1 ne ''} {$err_billing_address1} {/if}</span></td>
           <!-- -->
            
            <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Pin Code / Zip :<span class="red"></span></td>
            <td valign="top"><input type="text" name="billing_pincode" id="billing_pincode" value="{$cur_billing_pincode}" onchange="myformchange();" onkeyup="myformchange();"/> <!--onchange="getbillingarea(this.value);"-->
            <br />
            <span class="red">{if $err_billing_pincode ne ''} {$err_billing_pincode} {/if}</span></td>

            </tr>
            <tr>
                        
           <!---->
            
            <td   class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Address Line 2 :</td>
            <td valign="top"><input type="text" name="billing_address2" id="billing_address2" value="{$cur_billing_address2}" onchange="myformchange();" onkeyup="myformchange();" />
            <br />
            <span class="red">{if $err_billing_address2 ne ''} {$err_billing_address2} {/if}</span></td>
            
            
            <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>Mobile :</td>
            <td valign="top"><input type="text" name="billing_phone" id="billing_phone" value="{$cur_billing_phone}" onchange="myformchange();" onkeyup="myformchange();" />
            <br />
            <span class="red">{if $err_billing_phone ne ''} {$err_billing_phone} {/if}</span></td>
            
            </tr>
            <tr>
            <td   class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Country :</td>
            <td valign="top">
            <input type="radio" name="billing_country" id="billing_country_1" value="India" checked="checked" onclick="countryOther(this.id,this.value);myformchange();"/>India&nbsp;
            <input type="radio" name="billing_country" id="billing_country_2" value="International" onclick="countryOther(this.id,this.value); myformchange();"/>International</td>
            <td class="pad-top-3px"  width="241" align="right" valign="top">
            <label for="label" class="countryTr"  style="display:none;"><span class="red">*</span>Country Name :</label>
            </td>
            <td width="209" valign="top" >
            
      <select name="countryVal" id="countryVal" class="countryTr" style="display:none; width:173px;" onchange="myformchange();">
      <option value="Select Country" selected="">Select Country</option>
      <option value="ABW">Aruba</option>
      <option value="AFG">Afghanistan</option>
      <option value="AGO">Angola</option>
      <option value="AIA">Anguilla</option>
      <option value="ALA">Åland Islands</option>
      <option value="ALB">Albania</option>
      <option value="AND">Andorra</option>
      <option value="ANT">Netherlands Antilles</option>
      <option value="ARE">United Arab Emirates</option>
      <option value="ARG">Argentina</option>
      <option value="ARM">Armenia</option>
      <option value="ASM">American Samoa</option>
      <option value="ATA">Antarctica</option>
      <option value="ATF">French Southern Territories</option>
      <option value="ATG">Antigua and Barbuda</option>
      <option value="AUS">Australia</option>
      <option value="AUT">Austria</option>
      <option value="AZE">Azerbaijan</option>
      <option value="BDI">Burundi</option>
      <option value="BEL">Belgium</option>
      <option value="BEN">Benin</option>
      <option value="BFA">Burkina Faso</option>
      <option value="BGD">Bangladesh</option>
      <option value="BGR">Bulgaria</option>
      <option value="BHR">Bahrain</option>
      <option value="BHS">Bahamas</option>
      <option value="BIH">Bosnia and Herzegovina</option>
      <option value="BLM">Saint Barthélemy</option>
      <option value="BLR">Belarus</option>
      <option value="BLZ">Belize</option>
      <option value="BMU">Bermuda</option>
      <option value="BOL">Bolivia</option>
      <option value="BRA">Brazil</option>
      <option value="BRB">Barbados</option>
      <option value="BRN">Brunei Darussalam</option>
      <option value="BTN">Bhutan</option>
      <option value="BVT">Bouvet Island</option>
      <option value="BWA">Botswana</option>
      <option value="CAF">Central African Republic</option>
      <option value="CAN">Canada</option>
      <option value="CCK">Cocos (Keeling) Islands</option>
      <option value="CHE">Switzerland</option>
      <option value="CHL">Chile</option>
      <option value="CHN">China</option>
      <option value="CIV">Côte d`Ivoire</option>
      <option value="CMR">Cameroon</option>
      <option value="COD">Congo, the Democratic Republic of the</option>
      <option value="COG">Congo</option>
      <option value="COK">Cook Islands</option>
      <option value="COL">Colombia</option>
      <option value="COM">Comoros</option>
      <option value="CPV">Cape Verde</option>
      <option value="CRI">Costa Rica</option>
      <option value="CUB">Cuba</option>
      <option value="CXR">Christmas Island</option>
      <option value="CYM">Cayman Islands</option>
      <option value="CYP">Cyprus</option>
      <option value="CZE">Czech Republic</option>
      <option value="DEU">Germany</option>
      <option value="DJI">Djibouti</option>
      <option value="DMA">Dominica</option>
      <option value="DNK">Denmark</option>
      <option value="DOM">Dominican Republic</option>
      <option value="DZA">Algeria</option>
      <option value="ECU">Ecuador</option>
      <option value="EGY">Egypt</option>
      <option value="ERI">Eritrea</option>
      <option value="ESH">Western Sahara</option>
      <option value="ESP">Spain</option>
      <option value="EST">Estonia</option>
      <option value="ETH">Ethiopia</option>
      <option value="FIN">Finland</option>
      <option value="FJI">Fiji</option>
      <option value="FLK">Falkland Islands (Malvinas)</option>
      <option value="FRA">France</option>
      <option value="FRO">Faroe Islands</option>
      <option value="FSM">Micronesia, Federated States of</option>
      <option value="GAB">Gabon</option>
      <option value="GBR">United Kingdom</option>
      <option value="GEO">Georgia</option>
      <option value="GGY">Guernsey</option>
      <option value="GHA">Ghana</option>
      <option value="GIN">N Guinea</option>
      <option value="GIB">Gibraltar</option>
      <option value="GLP">Guadeloupe</option>
      <option value="GMB">Gambia</option>
      <option value="GNB">Guinea-Bissau</option>
      <option value="GNQ">Equatorial Guinea</option>
      <option value="GRC">Greece</option>
      <option value="GRD">Grenada</option>
      <option value="GRL">Greenland</option>
      <option value="GTM">Guatemala</option>
      <option value="GUF">French Guiana</option>
      <option value="GUM">Guam</option>
      <option value="GUY">Guyana</option>
      <option value="HKG">Hong Kong</option>
      <option value="HMD">Heard Island and McDonald Islands</option>
      <option value="HND">Honduras</option>
      <option value="HRV">Croatia</option>
      <option value="HTI">Haiti</option>
      <option value="HUN">Hungary</option>
      <option value="IDN">Indonesia</option>
      <option value="IMN">Isle of Man</option>
      <option value="IND">India</option>
      <option value="IOT">British Indian Ocean Territory</option>
      <option value="IRL">Ireland</option>
      <option value="IRN">Iran, Islamic Republic of</option>
      <option value="IRQ">Iraq</option>
      <option value="ISL">Iceland</option>
      <option value="ISR">Israel</option>
      <option value="ITA">Italy</option>
      <option value="JAM">Jamaica</option>
      <option value="JEY">Jersey</option>
      <option value="JOR">Jordan</option>
      <option value="JPN">Japan</option>
      <option value="KAZ">Kazakhstan</option>
      <option value="KEN">Kenya</option>
      <option value="KGZ">Kyrgyzstan</option>
      <option value="KHM">Cambodia</option>
      <option value="KIR">Kiribati</option>
      <option value="KNA">Saint Kitts and Nevis</option>
      <option value="KOR">Korea, Republic of</option>
      <option value="KWT">Kuwait</option>
      <option value="LAO">Lao People`s Democratic Republic</option>
      <option value="LBN">Lebanon</option>
      <option value="LBR">Liberia</option>
      <option value="LBY">Libyan Arab Jamahiriya</option>
      <option value="LCA">Saint Lucia</option>
      <option value="LIE">Liechtenstein</option>
      <option value="LKA">Sri Lanka</option>
      <option value="LSO">Lesotho</option>
      <option value="LTU">Lithuania</option>
      <option value="LUX">Luxembourg</option>
      <option value="LVA">Latvia</option>
      <option value="MAC">Macao</option>
      <option value="MAF">Saint Martin (French part)</option>
      <option value="MAR">Morocco</option>
      <option value="MCO">Monaco</option>
      <option value="MDA">Moldova</option>
      <option value="MDG">Madagascar</option>
      <option value="MDV">Maldives</option>
      <option value="MEX">Mexico</option>
      <option value="MHL">Marshall Islands</option>
      <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
      <option value="MLI">Mali</option>
      <option value="MLT">Malta</option>
      <option value="MMR">Myanmar</option>
      <option value="MNE">Montenegro</option>
      <option value="MNG">Mongolia</option>
      <option value="MNP">Northern Mariana Islands</option>
      <option value="MOZ">Mozambique</option>
      <option value="MRT">Mauritania</option>
      <option value="MSR">Montserrat</option>
      <option value="MTQ">Martinique</option>
      <option value="MUS">Mauritius</option>
      <option value="MWI">Malawi</option>
      <option value="MYS">Malaysia</option>
      <option value="MYT">Mayotte</option>
      <option value="NAM">Namibia</option>
      <option value="NCL">New Caledonia</option>
      <option value="NER">Niger</option>
      <option value="NFK">Norfolk Island</option>
      <option value="NGA">Nigeria</option>
      <option value="NIC">Nicaragua</option>
      <option value="NOR">R Norway</option>
      <option value="NIU">Niue</option>
      <option value="NLD">Netherlands</option>
      <option value="NPL">Nepal</option>
      <option value="NRU">Nauru</option>
      <option value="NZL">New Zealand</option>
      <option value="OMN">Oman</option>
      <option value="PAK">Pakistan</option>
      <option value="PAN">Panama</option>
      <option value="PCN">Pitcairn</option>
      <option value="PER">Peru</option>
      <option value="PHL">Philippines</option>
      <option value="PLW">Palau</option>
      <option value="PNG">Papua New Guinea</option>
      <option value="POL">Poland</option>
      <option value="PRI">Puerto Rico</option>
      <option value="PRK">Korea, Democratic People`s Republic of</option>
      <option value="PRT">Portugal</option>
      <option value="PRY">Paraguay</option>
      <option value="PSE">Palestinian Territory, Occupied</option>
      <option value="PYF">French Polynesia</option>
      <option value="QAT">Qatar</option>
      <option value="REU">Réunion</option>
      <option value="ROU">Romania</option>
      <option value="RUS">Russian Federation</option>
      <option value="RWA">Rwanda</option>
      <option value="SAU">Saudi Arabia</option>
      <option value="SDN">Sudan</option>
      <option value="SEN">Senegal</option>
      <option value="SGP">Singapore</option>
      <option value="SGS">South Georgia and the South Sandwich Islands</option>
      <option value="SHN">Saint Helena</option>
      <option value="SJM">Svalbard and Jan Mayen</option>
      <option value="SLB">Solomon Islands</option>
      <option value="SLE">Sierra Leone</option>
      <option value="SLV">El Salvador</option>
      <option value="SMR">San Marino</option>
      <option value="SOM">Somalia</option>
      <option value="SPM">Saint Pierre and Miquelon</option>
      <option value="SRB">Serbia</option>
      <option value="STP">Sao Tome and Principe</option>
      <option value="SUR">Suriname</option>
      <option value="SVK">Slovakia</option>
      <option value="SVN">Slovenia</option>
      <option value="SWE">Sweden</option>
      <option value="SWZ">Swaziland</option>
      <option value="SYC">Seychelles</option>
      <option value="SYR">Syrian Arab Republic</option>
      <option value="TCA">Turks and Caicos Islands</option>
      <option value="TCD">Chad</option>
      <option value="TGO">Togo</option>
      <option value="THA">Thailand</option>
      <option value="TJK">Tajikistan</option>
      <option value="TKL">Tokelau</option>
      <option value="TKM">Turkmenistan</option>
      <option value="TLS">Timor-Leste</option>
      <option value="TON">Tonga</option>
      <option value="TTO">Trinidad and Tobago</option>
      <option value="TUN">Tunisia</option>
      <option value="TUR">Turkey</option>
      <option value="TUV">Tuvalu</option>
      <option value="TWN">Taiwan, Province of China</option>
      <option value="TZA">Tanzania, United Republic of</option>
      <option value="UGA">Uganda</option>
      <option value="UKR">Ukraine</option>
      <option value="UMI">United States Minor Outlying Islands</option>
      <option value="URY">Uruguay</option>
      <option value="USA">United States</option>
      <option value="UZB">Uzbekistan</option>
      <option value="VAT">Holy See (Vatican City State)</option>
      <option value="VCT">Saint Vincent and the Grenadines</option>
      <option value="VEN">Venezuela</option>
      <option value="VGB">Virgin Islands, British</option>
      <option value="VIR">Virgin Islands, U.S.</option>
      <option value="VNM">Viet Nam</option>
      <option value="VUT">Vanuatu</option>
      <option value="WLF">Wallis and Futuna</option>
      <option value="WSM">Samoa</option>
      <option value="YEM">Yemen</option>
      <option value="ZAF">South Africa</option>
      <option value="ZMB">Zambia</option>
      <option value="ZWE">Zimbabwe</option>
    </select>
            <br />
            <span class="red" id="othBilCnt">{if $err_billing_country ne ''} {$err_billing_country} {/if}</span></td>
            </tr>
           
  </table>
  
  </div>
 					</div>
  		<div class="clear_both"></div>
  
  
  
  			<br />
  <div class="upper-shadow">
  <div class="lower-shadow">
 		 <table width="670" border="0" class="form">
    <tr>
      <td height="30" colspan="4" bgcolor="#229ed8" class="section"><strong class="section">Shipping Address</strong></td>
    </tr>
    
    <tr>
      <td height="30" colspan="4" class="pad-top-3px" valign="top" bgcolor="#FFFFFF" ><input type="radio" name="choise" class="choise" value="1"/>&nbsp;Pick up from Printo store &nbsp; &nbsp; <input type="radio" name="choise" class="choise" value="2" checked="checked"/>&nbsp;My Address</td>
    </tr>
    
    
    
    <tr>
      <td colspan="2" align="left">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr style="display:none;" id="delivDrop">
      		
        	<td width="215" style="border-top:none"  colspan="2" bgcolor="#FFFFFF" >{html_options name=req_servedAt id=req_servedAt options=$myServeOptions selected=$myServeSelect}</td>
                          
    </tr>
        <tr id="delivCheck">
          <td  style="border-top:none;" colspan="2">
            <label>
               <input type="checkbox" name="ship" id="ship" value="1" style="margin-top:2px;" onclick="myformchange();" onchange="myformchange();" {if $ship eq '1'} checked {/if}  />
              
              Same as Billing Address</label><input type="hidden" name="shipping_email" value="{$cur_shipping_email}" /></td>
         
        </tr>
      </table></td>
     
      </tr>
    <tr>
      <td class="pad-top-3px" width="241" align="left" valign="top"><label for="label"><span class="red">*</span>First Name :</label></td>
      <td width="209" valign="top"><input type="text" id="shipping_fname" name="shipping_fname" value="{$cur_shipping_fname}" />
        <br />
        <span class="red">{if $err_shipping_fname ne ''} {$err_shipping_fname} {/if}</span></td>
      <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Locality / City :</td>
      <td valign="top"><div id="txtHintShip"><input type="text" name="shipping_city" id="shipping_city" value="{$cur_shipping_area}" />
        <br />
        <span class="red">{if $err_shipping_area ne ''} {$err_shipping_area} {/if}</span></div></td>
    </tr>
    <tr>
    <td class="pad-top-3px" width="241" align="left" valign="top"><span class="red">*</span>Last Name :</td>
      <td width="229" valign="top"><input type="text" class="big" id="shipping_lname" name="shipping_lname" value="{$cur_shipping_lname}" />
        <br />
        <span class="red">{if $err_shipping_lname ne ''} {$err_shipping_lname} {/if}</span></td>
      <!---->
     
     
      <td   class="pad-top-3px" align="right" valign="top"><span class="red">*</span>State :</td>
      <td valign="top">
      <input type="text" width="30" name="shipping_state_" id="shipping_statetext" style='display:none;' disabled="disabled"/>
            <select name="shipping_state_" id="shipping_state_" style="width:173px;">
            <option value="0">Select State</option>
            
            {section name=nr loop=$stateList}
            
            <option value="{$stateList[nr].stateid}" {if $cur_shipping_state eq $stateList[nr].stateid} selected {/if}>{$stateList[nr].statename}</option>
            
            {/section}
            
            </select>
            <input type="hidden" name="shipping_state" id="shipping_state" value="17"/>
        <br />
        <span class="red" style="position:relative; top:10px;">{if $err_shipping_state ne ''} {$err_shipping_state} {/if}</span></td>
     
     
    </tr>
    <tr>
    
     <td  class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Address Line 1 :</td>
      <td valign="top"><input type="text" name="shipping_address1" id="shipping_address1" value="{$cur_shipping_address1}" />
        <br />
        <span class="red">{if $err_shipping_address1 ne ''} {$err_shipping_address1} {/if}</span></td>
        
      <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Pin Code / Zip :<span class="red"></span></td>
      <td valign="top"><input type="text" name="shipping_pincode" id="shipping_pincode" value="{$cur_shipping_pincode}" /> <!--onchange="getshippingarea(this.value);"-->
        <br />
        <span class="red">{if $err_shipping_pincode ne ''} {$err_shipping_pincode} {/if}</span></td>
     
    </tr>
    <tr>
     <td  class="pad-top-3px"  align="left" valign="top"><span class="red">*</span>Address Line 2 :</td>
      <td valign="top"><input type="text" name="shipping_address2" id="shipping_address2" value="{$cur_shipping_address2}" />
        <br />
        <span class="red">{if $err_shipping_address2 ne ''} {$err_shipping_address2} {/if}</span></td>
    
      
        
        <td  class="pad-top-3px"  align="right" valign="top"><span class="red">*</span>Mobile :</td>
      <td valign="top"><input type="text" name="shipping_phone" id="shipping_phone" value="{$cur_shipping_phone}" />
        <br />
        <span class="red">{if $err_shipping_phone ne ''} {$err_shipping_phone} {/if}</span></td>
    </tr>
    
    <tr>
      <td   class="pad-top-3px" align="left" valign="top"><span class="red">*</span>Country :</td>
      <td valign="top">
      <input type="radio" name="shipping_country" id="shipping_country_1" value="India" checked="checked" onclick="countryOther1(this.id,this.value)"/>
      India&nbsp;
     <input type="radio" name="shipping_country" id="shipping_country_2" value="International" onclick="countryOther1(this.id,this.value)"/>International</td>
      <td class="pad-top-3px"  width="241" align="right" valign="top">
            <label for="label" class="countryTr1"  style="display:none;"><span class="red">*</span>Country Name :</label>
            </td>
            <td width="209" valign="top" >
            
            <select name="countryVal1" id="countryVal1" class="countryTr1" style="display:none; width:173px;" >
      <option value="Select Country" selected="">Select Country</option>
      <option value="ABW">Aruba</option>
      <option value="AFG">Afghanistan</option>
      <option value="AGO">Angola</option>
      <option value="AIA">Anguilla</option>
      <option value="ALA">Åland Islands</option>
      <option value="ALB">Albania</option>
      <option value="AND">Andorra</option>
      <option value="ANT">Netherlands Antilles</option>
      <option value="ARE">United Arab Emirates</option>
      <option value="ARG">Argentina</option>
      <option value="ARM">Armenia</option>
      <option value="ASM">American Samoa</option>
      <option value="ATA">Antarctica</option>
      <option value="ATF">French Southern Territories</option>
      <option value="ATG">Antigua and Barbuda</option>
      <option value="AUS">Australia</option>
      <option value="AUT">Austria</option>
      <option value="AZE">Azerbaijan</option>
      <option value="BDI">Burundi</option>
      <option value="BEL">Belgium</option>
      <option value="BEN">Benin</option>
      <option value="BFA">Burkina Faso</option>
      <option value="BGD">Bangladesh</option>
      <option value="BGR">Bulgaria</option>
      <option value="BHR">Bahrain</option>
      <option value="BHS">Bahamas</option>
      <option value="BIH">Bosnia and Herzegovina</option>
      <option value="BLM">Saint Barthélemy</option>
      <option value="BLR">Belarus</option>
      <option value="BLZ">Belize</option>
      <option value="BMU">Bermuda</option>
      <option value="BOL">Bolivia</option>
      <option value="BRA">Brazil</option>
      <option value="BRB">Barbados</option>
      <option value="BRN">Brunei Darussalam</option>
      <option value="BTN">Bhutan</option>
      <option value="BVT">Bouvet Island</option>
      <option value="BWA">Botswana</option>
      <option value="CAF">Central African Republic</option>
      <option value="CAN">Canada</option>
      <option value="CCK">Cocos (Keeling) Islands</option>
      <option value="CHE">Switzerland</option>
      <option value="CHL">Chile</option>
      <option value="CHN">China</option>
      <option value="CIV">Côte d`Ivoire</option>
      <option value="CMR">Cameroon</option>
      <option value="COD">Congo, the Democratic Republic of the</option>
      <option value="COG">Congo</option>
      <option value="COK">Cook Islands</option>
      <option value="COL">Colombia</option>
      <option value="COM">Comoros</option>
      <option value="CPV">Cape Verde</option>
      <option value="CRI">Costa Rica</option>
      <option value="CUB">Cuba</option>
      <option value="CXR">Christmas Island</option>
      <option value="CYM">Cayman Islands</option>
      <option value="CYP">Cyprus</option>
      <option value="CZE">Czech Republic</option>
      <option value="DEU">Germany</option>
      <option value="DJI">Djibouti</option>
      <option value="DMA">Dominica</option>
      <option value="DNK">Denmark</option>
      <option value="DOM">Dominican Republic</option>
      <option value="DZA">Algeria</option>
      <option value="ECU">Ecuador</option>
      <option value="EGY">Egypt</option>
      <option value="ERI">Eritrea</option>
      <option value="ESH">Western Sahara</option>
      <option value="ESP">Spain</option>
      <option value="EST">Estonia</option>
      <option value="ETH">Ethiopia</option>
      <option value="FIN">Finland</option>
      <option value="FJI">Fiji</option>
      <option value="FLK">Falkland Islands (Malvinas)</option>
      <option value="FRA">France</option>
      <option value="FRO">Faroe Islands</option>
      <option value="FSM">Micronesia, Federated States of</option>
      <option value="GAB">Gabon</option>
      <option value="GBR">United Kingdom</option>
      <option value="GEO">Georgia</option>
      <option value="GGY">Guernsey</option>
      <option value="GHA">Ghana</option>
      <option value="GIN">N Guinea</option>
      <option value="GIB">Gibraltar</option>
      <option value="GLP">Guadeloupe</option>
      <option value="GMB">Gambia</option>
      <option value="GNB">Guinea-Bissau</option>
      <option value="GNQ">Equatorial Guinea</option>
      <option value="GRC">Greece</option>
      <option value="GRD">Grenada</option>
      <option value="GRL">Greenland</option>
      <option value="GTM">Guatemala</option>
      <option value="GUF">French Guiana</option>
      <option value="GUM">Guam</option>
      <option value="GUY">Guyana</option>
      <option value="HKG">Hong Kong</option>
      <option value="HMD">Heard Island and McDonald Islands</option>
      <option value="HND">Honduras</option>
      <option value="HRV">Croatia</option>
      <option value="HTI">Haiti</option>
      <option value="HUN">Hungary</option>
      <option value="IDN">Indonesia</option>
      <option value="IMN">Isle of Man</option>
      <option value="IND">India</option>
      <option value="IOT">British Indian Ocean Territory</option>
      <option value="IRL">Ireland</option>
      <option value="IRN">Iran, Islamic Republic of</option>
      <option value="IRQ">Iraq</option>
      <option value="ISL">Iceland</option>
      <option value="ISR">Israel</option>
      <option value="ITA">Italy</option>
      <option value="JAM">Jamaica</option>
      <option value="JEY">Jersey</option>
      <option value="JOR">Jordan</option>
      <option value="JPN">Japan</option>
      <option value="KAZ">Kazakhstan</option>
      <option value="KEN">Kenya</option>
      <option value="KGZ">Kyrgyzstan</option>
      <option value="KHM">Cambodia</option>
      <option value="KIR">Kiribati</option>
      <option value="KNA">Saint Kitts and Nevis</option>
      <option value="KOR">Korea, Republic of</option>
      <option value="KWT">Kuwait</option>
      <option value="LAO">Lao People`s Democratic Republic</option>
      <option value="LBN">Lebanon</option>
      <option value="LBR">Liberia</option>
      <option value="LBY">Libyan Arab Jamahiriya</option>
      <option value="LCA">Saint Lucia</option>
      <option value="LIE">Liechtenstein</option>
      <option value="LKA">Sri Lanka</option>
      <option value="LSO">Lesotho</option>
      <option value="LTU">Lithuania</option>
      <option value="LUX">Luxembourg</option>
      <option value="LVA">Latvia</option>
      <option value="MAC">Macao</option>
      <option value="MAF">Saint Martin (French part)</option>
      <option value="MAR">Morocco</option>
      <option value="MCO">Monaco</option>
      <option value="MDA">Moldova</option>
      <option value="MDG">Madagascar</option>
      <option value="MDV">Maldives</option>
      <option value="MEX">Mexico</option>
      <option value="MHL">Marshall Islands</option>
      <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
      <option value="MLI">Mali</option>
      <option value="MLT">Malta</option>
      <option value="MMR">Myanmar</option>
      <option value="MNE">Montenegro</option>
      <option value="MNG">Mongolia</option>
      <option value="MNP">Northern Mariana Islands</option>
      <option value="MOZ">Mozambique</option>
      <option value="MRT">Mauritania</option>
      <option value="MSR">Montserrat</option>
      <option value="MTQ">Martinique</option>
      <option value="MUS">Mauritius</option>
      <option value="MWI">Malawi</option>
      <option value="MYS">Malaysia</option>
      <option value="MYT">Mayotte</option>
      <option value="NAM">Namibia</option>
      <option value="NCL">New Caledonia</option>
      <option value="NER">Niger</option>
      <option value="NFK">Norfolk Island</option>
      <option value="NGA">Nigeria</option>
      <option value="NIC">Nicaragua</option>
      <option value="NOR">R Norway</option>
      <option value="NIU">Niue</option>
      <option value="NLD">Netherlands</option>
      <option value="NPL">Nepal</option>
      <option value="NRU">Nauru</option>
      <option value="NZL">New Zealand</option>
      <option value="OMN">Oman</option>
      <option value="PAK">Pakistan</option>
      <option value="PAN">Panama</option>
      <option value="PCN">Pitcairn</option>
      <option value="PER">Peru</option>
      <option value="PHL">Philippines</option>
      <option value="PLW">Palau</option>
      <option value="PNG">Papua New Guinea</option>
      <option value="POL">Poland</option>
      <option value="PRI">Puerto Rico</option>
      <option value="PRK">Korea, Democratic People`s Republic of</option>
      <option value="PRT">Portugal</option>
      <option value="PRY">Paraguay</option>
      <option value="PSE">Palestinian Territory, Occupied</option>
      <option value="PYF">French Polynesia</option>
      <option value="QAT">Qatar</option>
      <option value="REU">Réunion</option>
      <option value="ROU">Romania</option>
      <option value="RUS">Russian Federation</option>
      <option value="RWA">Rwanda</option>
      <option value="SAU">Saudi Arabia</option>
      <option value="SDN">Sudan</option>
      <option value="SEN">Senegal</option>
      <option value="SGP">Singapore</option>
      <option value="SGS">South Georgia and the South Sandwich Islands</option>
      <option value="SHN">Saint Helena</option>
      <option value="SJM">Svalbard and Jan Mayen</option>
      <option value="SLB">Solomon Islands</option>
      <option value="SLE">Sierra Leone</option>
      <option value="SLV">El Salvador</option>
      <option value="SMR">San Marino</option>
      <option value="SOM">Somalia</option>
      <option value="SPM">Saint Pierre and Miquelon</option>
      <option value="SRB">Serbia</option>
      <option value="STP">Sao Tome and Principe</option>
      <option value="SUR">Suriname</option>
      <option value="SVK">Slovakia</option>
      <option value="SVN">Slovenia</option>
      <option value="SWE">Sweden</option>
      <option value="SWZ">Swaziland</option>
      <option value="SYC">Seychelles</option>
      <option value="SYR">Syrian Arab Republic</option>
      <option value="TCA">Turks and Caicos Islands</option>
      <option value="TCD">Chad</option>
      <option value="TGO">Togo</option>
      <option value="THA">Thailand</option>
      <option value="TJK">Tajikistan</option>
      <option value="TKL">Tokelau</option>
      <option value="TKM">Turkmenistan</option>
      <option value="TLS">Timor-Leste</option>
      <option value="TON">Tonga</option>
      <option value="TTO">Trinidad and Tobago</option>
      <option value="TUN">Tunisia</option>
      <option value="TUR">Turkey</option>
      <option value="TUV">Tuvalu</option>
      <option value="TWN">Taiwan, Province of China</option>
      <option value="TZA">Tanzania, United Republic of</option>
      <option value="UGA">Uganda</option>
      <option value="UKR">Ukraine</option>
      <option value="UMI">United States Minor Outlying Islands</option>
      <option value="URY">Uruguay</option>
      <option value="USA">United States</option>
      <option value="UZB">Uzbekistan</option>
      <option value="VAT">Holy See (Vatican City State)</option>
      <option value="VCT">Saint Vincent and the Grenadines</option>
      <option value="VEN">Venezuela</option>
      <option value="VGB">Virgin Islands, British</option>
      <option value="VIR">Virgin Islands, U.S.</option>
      <option value="VNM">Viet Nam</option>
      <option value="VUT">Vanuatu</option>
      <option value="WLF">Wallis and Futuna</option>
      <option value="WSM">Samoa</option>
      <option value="YEM">Yemen</option>
      <option value="ZAF">South Africa</option>
      <option value="ZMB">Zambia</option>
      <option value="ZWE">Zimbabwe</option>
    </select>
            <br />
            <span class="red" id="othShpCnt">{if $err_shipping_country ne ''} {$err_shipping_country} {/if}</span></td>
    </tr>
     
    <tr>
      <td colspan="4"><table width="150" border="0" align="right">
          <tr>
            <td style="border-top-style:none"><input name="Submit" id="Submit" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " /></td>
          </tr>
      </table></td>
    </tr>
  </table>
  
  

  
  </div>
  </div>
  <div class="clear_both"></div>
  
  
  
  <p>&nbsp;</p>
			</div>
        </form>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
