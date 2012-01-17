{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{literal}
<script language="javascript">
function getbillingarea(str)
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
  

//xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&pid="+prod_id+"&itemid="+item_id,true);
xmlhttp.open("GET","getarea.php?q="+str+"&mode=bill",true);
xmlhttp.send();
}

function getshippingarea(str)
{

var xmlhttp;
if (str=="")
  {
  document.getElementById("txtHintShip").innerHTML="";
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
    document.getElementById("txtHintShip").innerHTML=xmlhttp.responseText;
    }
  }
  

//xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&pid="+prod_id+"&itemid="+item_id,true);
xmlhttp.open("GET","getarea.php?q="+str+"&mode=ship",true);
xmlhttp.send();
}


function myformchange()
{
//document.form1.shipping_email.value=document.form1.billing_email.value;
document.form1.shipping_fname.value=document.form1.billing_fname.value;
document.form1.shipping_lname.value=document.form1.billing_lname.value;
document.form1.shipping_address1.value=document.form1.billing_address1.value;
document.form1.shipping_address2.value=document.form1.billing_address2.value;
document.form1.shipping_city.value=document.form1.billing_city.value;
document.form1.shipping_state.value=document.form1.billing_state.value;
document.form1.shipping_pincode.value=document.form1.billing_pincode.value;
document.form1.shipping_area.value=document.form1.billing_area.value;
document.form1.shipping_phone.value=document.form1.billing_phone.value;
document.form1.shipping_country.value=document.form1.billing_country.value;
}

</script>
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
        <form name="form1" id="form1" method="post" action="" class="label-horizontal" >
        <div class="form_frame">
                    <div class="upper-shadow">
                        <div class="lower-shadow">
  <table width="670" border="0" class="form">
    <tr>
      <td height="30" colspan="4" bgcolor="#229ed8" class="section"><strong class="section">Billing Addres</strong><input type="hidden" name="billing_email" value="{$cur_billing_email}" /></td>
    </tr>
    <tr>
      <td width="241" align="right"><label for="label">First Name :</label></td>
      <td width="209"><input type="text" name="billing_fname" value="{$cur_billing_fname}" /></td>
      <td width="241" align="right">Last Name :</td>
      <td width="229"><input type="text" class="big" name="billing_lname" value="{$cur_billing_lname}" /></td>
    </tr>
    <tr>
      <td align="right">House No :</td>
      <td><input type="text" name="billing_address1" value="{$cur_billing_address1}" />      </td>
      <td align="right">Street :</td>
      <td><input type="text" name="billing_address2" value="{$cur_billing_address2}" /></td>
    </tr>
    <tr>
      <td align="right">Postal Code :<span class="red"></span></td>
      <td><input type="text" name="billing_pincode" value="{$cur_billing_pincode}" onchange="getbillingarea(this.value);" /></td>
      <td align="right">Area :</td>
      <td><div id="txtHint"><input type="text" name="billing_area" value="{$cur_billing_area}" /></div></td>
    </tr>
    <tr>
      <td align="right">City :</td>
      <td><input type="text" name="billing_city" value="{$cur_billing_city}" /></td>
      <td align="right">State :</td>
      <td><select name="billing_state">
                                                <option value="">Select State</option>
											    
                                            {section name=nr loop=$stateList}
                                            
											    <option value="{$stateList[nr].stateid}" {if $cur_billing_state eq $statelist[nr].stateid} selected {/if}>{$stateList[nr].statename}</option>
											    
                                            {/section}
                                            
										      </select></td>
    </tr>
    
    <tr>
      <td align="right">Country :</td>
      <td><select class="billing_country">
          <option value=""> - Select - </option>
          <option value="Afghanistan" {if $cur_billing_country eq 'Afghanistan'} selected {/if}>Afghanistan</option>
          <option value="Albania" {if $cur_billing_country eq 'Albania'} selected {/if}>Albania</option>
          <option value="Algeria" {if $cur_billing_country eq 'Algeria'} selected {/if}>Algeria</option>
          <option value="American Samoa" {if $cur_billing_country eq 'American Samoa'} selected {/if}>American Samoa</option>
          <option value="Andorra" {if $cur_billing_country eq 'Andorra'} selected {/if}>Andorra</option>
          <option value="Angola" {if $cur_billing_country eq 'Angola'} selected {/if}>Angola</option>
          <option value="Anguilla" {if $cur_billing_country eq 'Anguilla'} selected {/if}>Anguilla</option>
          <option value="Antarctica" {if $cur_billing_country eq 'Antarctica'} selected {/if}>Antarctica</option>
          <option value="Antigua and Barbuda" {if $cur_billing_country eq 'Antigua and Barbuda'} selected {/if}>Antigua and Barbuda</option>
          <option value="Argentina" {if $cur_billing_country eq 'Argentina'} selected {/if}>Argentina</option>
          <option value="Armenia" {if $cur_billing_country eq 'Armenia'} selected {/if}>Armenia</option>
          <option value="Aruba" {if $cur_billing_country eq 'Aruba'} selected {/if}>Aruba</option>
          <option value="Australia" {if $cur_billing_country eq 'Australia'} selected {/if}>Australia</option>
          <option value="Austria" {if $cur_billing_country eq 'Austria'} selected {/if}>Austria</option>
          <option value="Azerbaijan" {if $cur_billing_country eq 'Azerbaijan'} selected {/if}>Azerbaijan</option>
          <option value="Bahamas" {if $cur_billing_country eq 'Bahamas'} selected {/if}>Bahamas</option>
          <option value="Bahrain" {if $cur_billing_country eq 'Bahrain'} selected {/if}>Bahrain</option>
          <option value="Bangladesh" {if $cur_billing_country eq 'Bangladesh'} selected {/if}>Bangladesh</option>
          <option value="Barbados" {if $cur_billing_country eq 'Barbados'} selected {/if}>Barbados</option>
          <option value="Belarus" {if $cur_billing_country eq 'Belarus'} selected {/if}>Belarus</option>
          <option value="Belgium" {if $cur_billing_country eq 'Belgium'} selected {/if}>Belgium</option>
          <option value="Belize" {if $cur_billing_country eq 'Belize'} selected {/if}>Belize</option>
          <option value="Benin" {if $cur_billing_country eq 'Benin'} selected {/if}>Benin</option>
          <option value="Bermuda" {if $cur_billing_country eq 'Bermuda'} selected {/if}>Bermuda</option>
          <option value="Bhutan" {if $cur_billing_country eq 'Bhutan'} selected {/if}>Bhutan</option>
          <option value="Bolivia" {if $cur_billing_country eq 'Bolivia'} selected {/if}>Bolivia</option>
          <option value="Bosnia and Herzegovina" {if $cur_billing_country eq 'Bosnia and Herzegovina'} selected {/if}>Bosnia and Herzegovina</option>
          <option value="Botswana" {if $cur_billing_country eq 'Botswana'} selected {/if}>Botswana</option>
          <option value="Bouvet Island" {if $cur_billing_country eq 'Bouvet Island'} selected {/if}>Bouvet Island</option>
          <option value="Brazil" {if $cur_billing_country eq 'Brazil'} selected {/if}>Brazil</option>
          <option value="Brunei Darussalam" {if $cur_billing_country eq 'Brunei Darussalam'} selected {/if}>Brunei Darussalam</option>
          <option value="Bulgaria" {if $cur_billing_country eq 'Bulgaria'} selected {/if}>Bulgaria</option>
          <option value="Burkina Faso" {if $cur_billing_country eq 'Burkina Faso'} selected {/if}>Burkina Faso</option>
          <option value="Burundi" {if $cur_billing_country eq 'Burundi'} selected {/if}>Burundi</option>
          <option value="Cambodia" {if $cur_billing_country eq 'Cambodia'} selected {/if}>Cambodia</option>
          <option value="Cameroon" {if $cur_billing_country eq 'Cameroon'} selected {/if}>Cameroon</option>
          <option value="Canada" {if $cur_billing_country eq 'Canada'} selected {/if}>Canada</option>
          <option value="Cape Verde" {if $cur_billing_country eq 'Cape Verde'} selected {/if}>Cape Verde</option>
          <option value="Cayman Islands" {if $cur_billing_country eq 'Cayman Islands'} selected {/if}>Cayman Islands</option>
          <option value="Central African Republic" {if $cur_billing_country eq 'Central African Republic'} selected {/if}>Central African Republic</option>
          <option value="Chad" {if $cur_billing_country eq 'Chad'} selected {/if}>Chad</option>
          <option value="Chile" {if $cur_billing_country eq 'Chile'} selected {/if}>Chile</option>
          <option value="China" {if $cur_billing_country eq 'China'} selected {/if}>China</option>
          <option value="Christmas Island" {if $cur_billing_country eq 'Christmas Island'} selected {/if}>Christmas Island</option>
          <option value="Cocos (Keeling) Islands" {if $cur_billing_country eq 'Cocos (Keeling) Islands'} selected {/if}>Cocos (Keeling) Islands</option>
          <option value="Colombia" {if $cur_billing_country eq 'Colombia'} selected {/if}>Colombia</option>
          <option value="Comoros" {if $cur_billing_country eq 'Comoros'} selected {/if}>Comoros</option>
          <option value="Congo" {if $cur_billing_country eq 'Congo'} selected {/if}>Congo</option>
          <option value="Cook Islands" {if $cur_billing_country eq 'Cook Islands'} selected {/if}>Cook Islands</option>
          <option value="Costa Rica" {if $cur_billing_country eq 'Costa Rica'} selected {/if}>Costa Rica</option>
          <option value="Cote DIvoire" {if $cur_billing_country eq 'Cote DIvoire'} selected {/if}>Cote D'Ivoire</option>
          <option value="Croatia" {if $cur_billing_country eq 'Croatia'} selected {/if}>Croatia</option>
          <option value="Cuba" {if $cur_billing_country eq 'Cuba'} selected {/if}>Cuba</option>
          <option value="Cyprus" {if $cur_billing_country eq 'Cyprus'} selected {/if}>Cyprus</option>
          <option value="Czech Republic" {if $cur_billing_country eq 'Czech Republic'} selected {/if}>Czech Republic</option>
          <option value="Denmark" {if $cur_billing_country eq 'Denmark'} selected {/if}>Denmark</option>
          <option value="Djibouti" {if $cur_billing_country eq 'Djibouti'} selected {/if}>Djibouti</option>
          <option value="Dominica" {if $cur_billing_country eq 'Dominica'} selected {/if}>Dominica</option>
          <option value="Dominican Republic" {if $cur_billing_country eq 'Dominican Republic'} selected {/if}>Dominican Republic</option>
          <option value="Ecuador" {if $cur_billing_country eq 'Ecuador'} selected {/if}>Ecuador</option>
          <option value="Egypt" {if $cur_billing_country eq 'Egypt'} selected {/if}>Egypt</option>
          <option value="El Salvador" {if $cur_billing_country eq 'El Salvador'} selected {/if}>El Salvador</option>
          <option value="Equatorial Guinea" {if $cur_billing_country eq 'Equatorial Guinea'} selected {/if}>Equatorial Guinea</option>
          <option value="Eritrea" {if $cur_billing_country eq 'Eritrea'} selected {/if}>Eritrea</option>
          <option value="Estonia" {if $cur_billing_country eq 'Estonia'} selected {/if}>Estonia</option>
          <option value="Ethiopia" {if $cur_billing_country eq 'Ethiopia'} selected {/if}>Ethiopia</option>
          <option value="Falkland Islands (Malvinas)" {if $cur_billing_country eq 'Falkland Islands (Malvinas)'} selected {/if}>Falkland Islands (Malvinas)</option>
          <option value="Faroe Islands" {if $cur_billing_country eq 'Faroe Islands'} selected {/if}>Faroe Islands</option>
          <option value="Fiji" {if $cur_billing_country eq 'Fiji'} selected {/if}>Fiji</option>
          <option value="Finland" {if $cur_billing_country eq 'Finland'} selected {/if}>Finland</option>
          <option value="France" {if $cur_billing_country eq 'France'} selected {/if}>France</option>
          <option value="French Guiana" {if $cur_billing_country eq 'French Guiana'} selected {/if}>French Guiana</option>
          <option value="French Polynesia" {if $cur_billing_country eq 'French Polynesia'} selected {/if}>French Polynesia</option>
          <option value="Gabon" {if $cur_billing_country eq 'Gabon'} selected {/if}>Gabon</option>
          <option value="Gambia" {if $cur_billing_country eq 'Gambia'} selected {/if}>Gambia</option>
          <option value="Georgia" {if $cur_billing_country eq 'Georgia'} selected {/if}>Georgia</option>
          <option value="Germany" {if $cur_billing_country eq 'Germany'} selected {/if}>Germany</option>
          <option value="Ghana" {if $cur_billing_country eq 'Ghana'} selected {/if}>Ghana</option>
          <option value="Gibraltar" {if $cur_billing_country eq 'Gibraltar'} selected {/if}>Gibraltar</option>
          <option value="Greece" {if $cur_billing_country eq 'Greece'} selected {/if}>Greece</option>
          <option value="Greenland" {if $cur_billing_country eq 'Greenland'} selected {/if}>Greenland</option>
          <option value="Grenada" {if $cur_billing_country eq 'Grenada'} selected {/if}>Grenada</option>
          <option value="Guadeloupe" {if $cur_billing_country eq 'Guadeloupe'} selected {/if}>Guadeloupe</option>
          <option value="Guam" {if $cur_billing_country eq 'Guam'} selected {/if}>Guam</option>
          <option value="Guatemala" {if $cur_billing_country eq 'Guatemala'} selected {/if}>Guatemala</option>
          <option value="Guinea" {if $cur_billing_country eq 'Guinea'} selected {/if}>Guinea</option>
          <option value="Guinea-Bissau" {if $cur_billing_country eq 'Guinea-Bissau'} selected {/if}>Guinea-Bissau</option>
          <option value="Guyana" {if $cur_billing_country eq 'Guyana'} selected {/if}>Guyana</option>
          <option value="Haiti" {if $cur_billing_country eq 'Haiti'} selected {/if}>Haiti</option>
          <option value="Honduras" {if $cur_billing_country eq 'Honduras'} selected {/if}>Honduras</option>
          <option value="Hong Kong" {if $cur_billing_country eq 'Hong Kong'} selected {/if}>Hong Kong</option>
          <option value="Hungary" {if $cur_billing_country eq 'Hungary'} selected {/if}>Hungary</option>
          <option value="Iceland" {if $cur_billing_country eq 'Iceland'} selected {/if}>Iceland</option>
          <option value="India" {if $cur_billing_country eq 'India'} selected {/if}>India</option>
          <option value="Indonesia" {if $cur_billing_country eq 'Indonesia'} selected {/if}>Indonesia</option>
          <option value="Iraq" {if $cur_billing_country eq 'Iraq'} selected {/if}>Iraq</option>
          <option value="Ireland" {if $cur_billing_country eq 'Ireland'} selected {/if}>Ireland</option>
          <option value="Israel" {if $cur_billing_country eq 'Israel'} selected {/if}>Israel</option>
          <option value="Italy" {if $cur_billing_country eq 'Italy'} selected {/if}>Italy</option>
          <option value="Jamaica" {if $cur_billing_country eq 'Jamaica'} selected {/if}>Jamaica</option>
          <option value="Japan" {if $cur_billing_country eq 'Japan'} selected {/if}>Japan</option>
          <option value="Jordan" {if $cur_billing_country eq 'Jordan'} selected {/if}>Jordan</option>
          <option value="Kazakhstan" {if $cur_billing_country eq 'Kazakhstan'} selected {/if}>Kazakhstan</option>
          <option value="Kenya" {if $cur_billing_country eq 'Kenya'} selected {/if}>Kenya</option>
          <option value="Kiribati" {if $cur_billing_country eq 'Kiribati'} selected {/if}>Kiribati</option>
          <option value="Kuwait" {if $cur_billing_country eq 'Kuwait'} selected {/if}>Kuwait</option>
          <option value="Kyrgyzstan" {if $cur_billing_country eq 'Kyrgyzstan'} selected {/if}>Kyrgyzstan</option>
          <option value="Latvia" {if $cur_billing_country eq 'Latvia'} selected {/if}>Latvia</option>
          <option value="Lebanon" {if $cur_billing_country eq 'Lebanon'} selected {/if}>Lebanon</option>
          <option value="Lesotho" {if $cur_billing_country eq 'Lesotho'} selected {/if}>Lesotho</option>
          <option value="Liberia" {if $cur_billing_country eq 'Liberia'} selected {/if}>Liberia</option>
          <option value="Liechtenstein" {if $cur_billing_country eq 'Liechtenstein'} selected {/if}>Liechtenstein</option>
          <option value="Lithuania" {if $cur_billing_country eq 'Lithuania'} selected {/if}>Lithuania</option>
          <option value="Luxembourg" {if $cur_billing_country eq 'Luxembourg'} selected {/if}>Luxembourg</option>
          <option value="Macao" {if $cur_billing_country eq 'Macao'} selected {/if}>Macao</option>
          <option value="Madagascar" {if $cur_billing_country eq 'Madagascar'} selected {/if}>Madagascar</option>
          <option value="Malawi" {if $cur_billing_country eq 'Malawi'} selected {/if}>Malawi</option>
          <option value="Malaysia" {if $cur_billing_country eq 'Malaysia'} selected {/if}>Malaysia</option>
          <option value="Maldives" {if $cur_billing_country eq 'Maldives'} selected {/if}>Maldives</option>
          <option value="Mali" {if $cur_billing_country eq 'Mali'} selected {/if}>Mali</option>
          <option value="Malta" {if $cur_billing_country eq 'Malta'} selected {/if}>Malta</option>
          <option value="Marshall Islands" {if $cur_billing_country eq 'Marshall Islands'} selected {/if}>Marshall Islands</option>
          <option value="Martinique" {if $cur_billing_country eq 'Martinique'} selected {/if}>Martinique</option>
          <option value="Mauritania" {if $cur_billing_country eq 'Mauritania'} selected {/if}>Mauritania</option>
          <option value="Mauritius" {if $cur_billing_country eq 'Mauritius'} selected {/if}>Mauritius</option>
          <option value="Mayotte" {if $cur_billing_country eq 'Mayotte'} selected {/if}>Mayotte</option>
          <option value="Mexico" {if $cur_billing_country eq 'Mexico'} selected {/if}>Mexico</option>
          <option value="Monaco" {if $cur_billing_country eq 'Monaco'} selected {/if}>Monaco</option>
          <option value="Mongolia" {if $cur_billing_country eq 'Mongolia'} selected {/if}>Mongolia</option>
          <option value="Montserrat" {if $cur_billing_country eq 'Montserrat'} selected {/if}>Montserrat</option>
          <option value="Morocco" {if $cur_billing_country eq 'Morocco'} selected {/if}>Morocco</option>
          <option value="Mozambique" {if $cur_billing_country eq 'Mozambique'} selected {/if}>Mozambique</option>
          <option value="Myanmar" {if $cur_billing_country eq 'Myanmar'} selected {/if}>Myanmar</option>
          <option value="Namibia" {if $cur_billing_country eq 'Namibia'} selected {/if}>Namibia</option>
          <option value="Nauru" {if $cur_billing_country eq 'Nauru'} selected {/if}>Nauru</option>
          <option value="Nepal" {if $cur_billing_country eq 'Nepal'} selected {/if}>Nepal</option>
          <option value="Netherlands" {if $cur_billing_country eq 'Netherlands'} selected {/if}>Netherlands</option>
          <option value="Netherlands Antilles" {if $cur_billing_country eq 'Netherlands Antilles'} selected {/if}>Netherlands Antilles</option>
          <option value="New Caledonia" {if $cur_billing_country eq 'New Caledonia'} selected {/if}>New Caledonia</option>
          <option value="New Zealand" {if $cur_billing_country eq 'New Zealand'} selected {/if}>New Zealand</option>
          <option value="Nicaragua" {if $cur_billing_country eq 'Nicaragua'} selected {/if}>Nicaragua</option>
          <option value="Niger" {if $cur_billing_country eq 'Niger'} selected {/if}>Niger</option>
          <option value="Nigeria" {if $cur_billing_country eq 'Nigeria'} selected {/if}>Nigeria</option>
          <option value="Niue" {if $cur_billing_country eq 'Niue'} selected {/if}>Niue</option>
          <option value="Norfolk Island" {if $cur_billing_country eq 'Norfolk Island'} selected {/if}>Norfolk Island</option>
          <option value="Norway" {if $cur_billing_country eq 'Norway'} selected {/if}>Norway</option>
          <option value="Oman" {if $cur_billing_country eq 'Oman'} selected {/if}>Oman</option>
          <option value="Pakistan" {if $cur_billing_country eq 'Pakistan'} selected {/if}>Pakistan</option>
          <option value="Palau" {if $cur_billing_country eq 'Palau'} selected {/if}>Palau</option>
          <option value="Panama" {if $cur_billing_country eq 'Panama'} selected {/if}>Panama</option>
          <option value="Papua New Guinea" {if $cur_billing_country eq 'Papua New Guinea'} selected {/if}>Papua New Guinea</option>
          <option value="Paraguay" {if $cur_billing_country eq 'Paraguay'} selected {/if}>Paraguay</option>
          <option value="Peru" {if $cur_billing_country eq 'Peru'} selected {/if}>Peru</option>
          <option value="Philippines" {if $cur_billing_country eq 'Philippines'} selected {/if}>Philippines</option>
          <option value="Pitcairn" {if $cur_billing_country eq 'Pitcairn'} selected {/if}>Pitcairn</option>
          <option value="Poland" {if $cur_billing_country eq 'Poland'} selected {/if}>Poland</option>
          <option value="Portugal" {if $cur_billing_country eq 'Portugal'} selected {/if}>Portugal</option>
          <option value="Puerto Rico" {if $cur_billing_country eq 'Puerto Rico'} selected {/if}>Puerto Rico</option>
          <option value="Qatar" {if $cur_billing_country eq 'Qatar'} selected {/if}>Qatar</option>
          <option value="Reunion" {if $cur_billing_country eq 'Reunion'} selected {/if}>Reunion</option>
          <option value="Romania" {if $cur_billing_country eq 'Romania'} selected {/if}>Romania</option>
          <option value="Russian Federation" {if $cur_billing_country eq 'Russian Federation'} selected {/if}>Russian Federation</option>
          <option value="Rwanda" {if $cur_billing_country eq 'Rwanda'} selected {/if}>Rwanda</option>
          <option value="Saint Helena" {if $cur_billing_country eq 'Saint Helena'} selected {/if}>Saint Helena</option>
          <option value="Saint Kitts and Nevis" {if $cur_billing_country eq 'Saint Kitts and Nevis'} selected {/if}>Saint Kitts and Nevis</option>
          <option value="Saint Lucia" {if $cur_billing_country eq 'Saint Lucia'} selected {/if}>Saint Lucia</option>
          <option value="Samoa" {if $cur_billing_country eq 'Samoa'} selected {/if}>Samoa</option>
          <option value="San Marino" {if $cur_billing_country eq 'San Marino'} selected {/if}>San Marino</option>
          <option value="Saudi Arabia" {if $cur_billing_country eq 'Saudi Arabia'} selected {/if}>Saudi Arabia</option>
          <option value="Senegal" {if $cur_billing_country eq 'Senegal'} selected {/if}>Senegal</option>
          <option value="Seychelles" {if $cur_billing_country eq 'Seychelles'} selected {/if}>Seychelles</option>
          <option value="Sierra Leone" {if $cur_billing_country eq 'Sierra Leone'} selected {/if}>Sierra Leone</option>
          <option value="Singapore" {if $cur_billing_country eq 'Singapore'} selected {/if}>Singapore</option>
          <option value="Slovakia" {if $cur_billing_country eq 'Slovakia'} selected {/if}>Slovakia</option>
          <option value="Slovenia" {if $cur_billing_country eq 'Slovenia'} selected {/if}>Slovenia</option>
          <option value="Solomon Islands" {if $cur_billing_country eq 'Solomon Islands'} selected {/if}>Solomon Islands</option>
          <option value="Somalia" {if $cur_billing_country eq 'Somalia'} selected {/if}>Somalia</option>
          <option value="South Africa" {if $cur_billing_country eq 'South Africa'} selected {/if}>South Africa</option>
          <option value="Spain" {if $cur_billing_country eq 'Spain'} selected {/if}>Spain</option>
          <option value="Sri Lanka" {if $cur_billing_country eq 'Sri Lanka'} selected {/if}>Sri Lanka</option>
          <option value="Sudan" {if $cur_billing_country eq 'Sudan'} selected {/if}>Sudan</option>
          <option value="Suriname" {if $cur_billing_country eq 'Suriname'} selected {/if}>Suriname</option>
          <option value="Svalbard and Jan Mayen" {if $cur_billing_country eq 'Svalbard and Jan Mayen'} selected {/if}>Svalbard and Jan Mayen</option>
          <option value="Swaziland" {if $cur_billing_country eq 'Swaziland'} selected {/if}>Swaziland</option>
          <option value="Sweden" {if $cur_billing_country eq 'Sweden'} selected {/if}>Sweden</option>
          <option value="Switzerland" {if $cur_billing_country eq 'Switzerland'} selected {/if}>Switzerland</option>
          <option value="Syrian Arab Republic" {if $cur_billing_country eq 'Syrian Arab Republic'} selected {/if}>Syrian Arab Republic</option>
          <option value="Taiwan" {if $cur_billing_country eq 'Taiwan'} selected {/if}>Taiwan</option>
          <option value="Tajikistan" {if $cur_billing_country eq 'Tajikistan'} selected {/if}>Tajikistan</option>
          <option value="Tanzania, United Republic of" {if $cur_billing_country eq 'Tanzania, United Republic of'} selected {/if}>Tanzania, United Republic of</option>
          <option value="Thailand" {if $cur_billing_country eq 'Thailand'} selected {/if}>Thailand</option>
          <option value="Timor-Leste" {if $cur_billing_country eq 'Timor-Leste'} selected {/if}>Timor-Leste</option>
          <option value="Togo" {if $cur_billing_country eq 'Togo'} selected {/if}>Togo</option>
          <option value="Tokelau" {if $cur_billing_country eq 'Tokelau'} selected {/if}>Tokelau</option>
          <option value="Tonga" {if $cur_billing_country eq 'Tonga'} selected {/if}>Tonga</option>
          <option value="Trinidad and Tobago" {if $cur_billing_country eq 'Trinidad and Tobago'} selected {/if}>Trinidad and Tobago</option>
          <option value="Tunisia" {if $cur_billing_country eq 'Tunisia'} selected {/if}>Tunisia</option>
          <option value="Turkey" {if $cur_billing_country eq 'Turkey'} selected {/if}>Turkey</option>
          <option value="Turkmenistan" {if $cur_billing_country eq 'Turkmenistan'} selected {/if}>Turkmenistan</option>
          <option value="Turks and Caicos Islands" {if $cur_billing_country eq 'Turks and Caicos Islands'} selected {/if}>Turks and Caicos Islands</option>
          <option value="Tuvalu" {if $cur_billing_country eq 'Tuvalu'} selected {/if}>Tuvalu</option>
          <option value="Uganda" {if $cur_billing_country eq 'Uganda'} selected {/if}>Uganda</option>
          <option value="Ukraine" {if $cur_billing_country eq 'Ukraine'} selected {/if}>Ukraine</option>
          <option value="United Arab Emirates" {if $cur_billing_country eq 'United Arab Emirates'} selected {/if}>United Arab Emirates</option>
          <option value="United Kingdom" {if $cur_billing_country eq 'United Kingdom'} selected {/if}>United Kingdom</option>
          <option value="United States" {if $cur_billing_country eq 'United States'} selected {/if}>United States</option>
          <option value="Uruguay" {if $cur_billing_country eq 'Uruguay'} selected {/if}>Uruguay</option>
          <option value="Uzbekistan" {if $cur_billing_country eq 'Uzbekistan'} selected {/if}>Uzbekistan</option>
          <option value="Vanuatu" {if $cur_billing_country eq 'Vanuatu'} selected {/if}>Vanuatu</option>
          <option value="Venezuela" {if $cur_billing_country eq 'Venezuela'} selected {/if}>Venezuela</option>
          <option value="Viet Nam" {if $cur_billing_country eq 'Viet Nam'} selected {/if}>Viet Nam</option>
          <option value="Virgin Islands, U.s." {if $cur_billing_country eq 'Virgin Islands, U.s.'} selected {/if}>Virgin Islands, U.s.</option>
          <option value="Wallis and Futuna" {if $cur_billing_country eq 'Wallis and Futuna'} selected {/if}>Wallis and Futuna</option>
          <option value="Western Sahara" {if $cur_billing_country eq 'Western Sahara'} selected {/if}>Western Sahara</option>
          <option value="Yemen" {if $cur_billing_country eq 'Yemen'} selected {/if}>Yemen</option>
          <option value="Zambia" {if $cur_billing_country eq 'Zambia'} selected {/if}>Zambia</option>
          <option value="Zimbabwe" {if $cur_billing_country eq 'Zimbabwe'} selected {/if}>Zimbabwe</option>
      </select></td>
      <td align="right">Mobile :</td>
      <td><input type="text" name="billing_phone" value="{$cur_billing_phone}" /></td>
    </tr>
      </table>
  </td>
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
      <td colspan="4" align="left"><table width="250" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="35" style="border-top:none">
            <label>
               <input type="checkbox" name="ship" id="ship" value="1" onchange="myformchange();"  />
              </label>            </td>
          <td width="215" style="border-top:none">Same as Billing Address<input type="hidden" name="shipping_email" value="{$cur_shipping_email}" /></td>
        </tr>
      </table></td>
      </tr>
    <tr>
      <td width="241" align="right"><label for="label">First Name :</label></td>
      <td width="209"><input type="text" name="shipping_fname" value="{$cur_shipping_fname}" /></td>
      <td width="241" align="right">Last Name :</td>
      <td width="229"><input type="text" class="big" name="shipping_lname" value="{$cur_shipping_lname}" /></td>
    </tr>
    <tr>
      <td align="right">House No :</td>
      <td><input type="text" name="shipping_address1" value="{$cur_shipping_address1}" />      </td>
      <td align="right">Street :</td>
      <td><input type="text" name="shipping_address2" value="{$cur_shipping_address2}" /></td>
    </tr>
    <tr>
      <td align="right">Postal Code :<span class="red"></span></td>
      <td><input type="text" name="shipping_pincode" value="{$cur_shipping_pincode}" onchange="getshippingarea(this.value);" /></td>
      <td align="right">Area :</td>
      <td><div id="txtHintShip"><input type="text" name="shipping_area" value="{$cur_shipping_area}" /></div></td>
    </tr>
    <tr>
      <td align="right">City :</td>
      <td><input type="text" name="shipping_city" value="{$cur_shipping_city}" /></td>
      <td align="right">State :</td>
      <td><select name="shipping_state">
                                                <option value="">Select State</option>
											    
                                            {section name=nr loop=$stateList}
                                            
											    <option value="{$stateList[nr].stateid}" {if $cur_shipping_state eq $statelist[nr].stateid} selected {/if}>{$stateList[nr].statename}</option>
											    
                                            {/section}
                                            
										      </select></td>
    </tr>
    
    <tr>
      <td align="right">Country :</td>
      <td><select class="shipping_country">
          <option value=""> - Select - </option>
          <option value="Afghanistan" {if $cur_shipping_country eq 'Afghanistan'} selected {/if}>Afghanistan</option>
          <option value="Albania" {if $cur_shipping_country eq 'Albania'} selected {/if}>Albania</option>
          <option value="Algeria" {if $cur_shipping_country eq 'Algeria'} selected {/if}>Algeria</option>
          <option value="American Samoa" {if $cur_shipping_country eq 'American Samoa'} selected {/if}>American Samoa</option>
          <option value="Andorra" {if $cur_shipping_country eq 'Andorra'} selected {/if}>Andorra</option>
          <option value="Angola" {if $cur_shipping_country eq 'Angola'} selected {/if}>Angola</option>
          <option value="Anguilla" {if $cur_shipping_country eq 'Anguilla'} selected {/if}>Anguilla</option>
          <option value="Antarctica" {if $cur_shipping_country eq 'Antarctica'} selected {/if}>Antarctica</option>
          <option value="Antigua and Barbuda" {if $cur_shipping_country eq 'Antigua and Barbuda'} selected {/if}>Antigua and Barbuda</option>
          <option value="Argentina" {if $cur_shipping_country eq 'Argentina'} selected {/if}>Argentina</option>
          <option value="Armenia" {if $cur_shipping_country eq 'Armenia'} selected {/if}>Armenia</option>
          <option value="Aruba" {if $cur_shipping_country eq 'Aruba'} selected {/if}>Aruba</option>
          <option value="Australia" {if $cur_shipping_country eq 'Australia'} selected {/if}>Australia</option>
          <option value="Austria" {if $cur_shipping_country eq 'Austria'} selected {/if}>Austria</option>
          <option value="Azerbaijan" {if $cur_shipping_country eq 'Azerbaijan'} selected {/if}>Azerbaijan</option>
          <option value="Bahamas" {if $cur_shipping_country eq 'Bahamas'} selected {/if}>Bahamas</option>
          <option value="Bahrain" {if $cur_shipping_country eq 'Bahrain'} selected {/if}>Bahrain</option>
          <option value="Bangladesh" {if $cur_shipping_country eq 'Bangladesh'} selected {/if}>Bangladesh</option>
          <option value="Barbados" {if $cur_shipping_country eq 'Barbados'} selected {/if}>Barbados</option>
          <option value="Belarus" {if $cur_shipping_country eq 'Belarus'} selected {/if}>Belarus</option>
          <option value="Belgium" {if $cur_shipping_country eq 'Belgium'} selected {/if}>Belgium</option>
          <option value="Belize" {if $cur_shipping_country eq 'Belize'} selected {/if}>Belize</option>
          <option value="Benin" {if $cur_shipping_country eq 'Benin'} selected {/if}>Benin</option>
          <option value="Bermuda" {if $cur_shipping_country eq 'Bermuda'} selected {/if}>Bermuda</option>
          <option value="Bhutan" {if $cur_shipping_country eq 'Bhutan'} selected {/if}>Bhutan</option>
          <option value="Bolivia" {if $cur_shipping_country eq 'Bolivia'} selected {/if}>Bolivia</option>
          <option value="Bosnia and Herzegovina" {if $cur_shipping_country eq 'Bosnia and Herzegovina'} selected {/if}>Bosnia and Herzegovina</option>
          <option value="Botswana" {if $cur_shipping_country eq 'Botswana'} selected {/if}>Botswana</option>
          <option value="Bouvet Island" {if $cur_shipping_country eq 'Bouvet Island'} selected {/if}>Bouvet Island</option>
          <option value="Brazil" {if $cur_shipping_country eq 'Brazil'} selected {/if}>Brazil</option>
          <option value="Brunei Darussalam" {if $cur_shipping_country eq 'Brunei Darussalam'} selected {/if}>Brunei Darussalam</option>
          <option value="Bulgaria" {if $cur_shipping_country eq 'Bulgaria'} selected {/if}>Bulgaria</option>
          <option value="Burkina Faso" {if $cur_shipping_country eq 'Burkina Faso'} selected {/if}>Burkina Faso</option>
          <option value="Burundi" {if $cur_shipping_country eq 'Burundi'} selected {/if}>Burundi</option>
          <option value="Cambodia" {if $cur_shipping_country eq 'Cambodia'} selected {/if}>Cambodia</option>
          <option value="Cameroon" {if $cur_shipping_country eq 'Cameroon'} selected {/if}>Cameroon</option>
          <option value="Canada" {if $cur_shipping_country eq 'Canada'} selected {/if}>Canada</option>
          <option value="Cape Verde" {if $cur_shipping_country eq 'Cape Verde'} selected {/if}>Cape Verde</option>
          <option value="Cayman Islands" {if $cur_shipping_country eq 'Cayman Islands'} selected {/if}>Cayman Islands</option>
          <option value="Central African Republic" {if $cur_shipping_country eq 'Central African Republic'} selected {/if}>Central African Republic</option>
          <option value="Chad" {if $cur_shipping_country eq 'Chad'} selected {/if}>Chad</option>
          <option value="Chile" {if $cur_shipping_country eq 'Chile'} selected {/if}>Chile</option>
          <option value="China" {if $cur_shipping_country eq 'China'} selected {/if}>China</option>
          <option value="Christmas Island" {if $cur_shipping_country eq 'Christmas Island'} selected {/if}>Christmas Island</option>
          <option value="Cocos (Keeling) Islands" {if $cur_shipping_country eq 'Cocos (Keeling) Islands'} selected {/if}>Cocos (Keeling) Islands</option>
          <option value="Colombia" {if $cur_shipping_country eq 'Colombia'} selected {/if}>Colombia</option>
          <option value="Comoros" {if $cur_shipping_country eq 'Comoros'} selected {/if}>Comoros</option>
          <option value="Congo" {if $cur_shipping_country eq 'Congo'} selected {/if}>Congo</option>
          <option value="Cook Islands" {if $cur_shipping_country eq 'Cook Islands'} selected {/if}>Cook Islands</option>
          <option value="Costa Rica" {if $cur_shipping_country eq 'Costa Rica'} selected {/if}>Costa Rica</option>
          <option value="Cote DIvoire" {if $cur_shipping_country eq 'Cote DIvoire'} selected {/if}>Cote D'Ivoire</option>
          <option value="Croatia" {if $cur_shipping_country eq 'Croatia'} selected {/if}>Croatia</option>
          <option value="Cuba" {if $cur_shipping_country eq 'Cuba'} selected {/if}>Cuba</option>
          <option value="Cyprus" {if $cur_shipping_country eq 'Cyprus'} selected {/if}>Cyprus</option>
          <option value="Czech Republic" {if $cur_shipping_country eq 'Czech Republic'} selected {/if}>Czech Republic</option>
          <option value="Denmark" {if $cur_shipping_country eq 'Denmark'} selected {/if}>Denmark</option>
          <option value="Djibouti" {if $cur_shipping_country eq 'Djibouti'} selected {/if}>Djibouti</option>
          <option value="Dominica" {if $cur_shipping_country eq 'Dominica'} selected {/if}>Dominica</option>
          <option value="Dominican Republic" {if $cur_shipping_country eq 'Dominican Republic'} selected {/if}>Dominican Republic</option>
          <option value="Ecuador" {if $cur_shipping_country eq 'Ecuador'} selected {/if}>Ecuador</option>
          <option value="Egypt" {if $cur_shipping_country eq 'Egypt'} selected {/if}>Egypt</option>
          <option value="El Salvador" {if $cur_shipping_country eq 'El Salvador'} selected {/if}>El Salvador</option>
          <option value="Equatorial Guinea" {if $cur_shipping_country eq 'Equatorial Guinea'} selected {/if}>Equatorial Guinea</option>
          <option value="Eritrea" {if $cur_shipping_country eq 'Eritrea'} selected {/if}>Eritrea</option>
          <option value="Estonia" {if $cur_shipping_country eq 'Estonia'} selected {/if}>Estonia</option>
          <option value="Ethiopia" {if $cur_shipping_country eq 'Ethiopia'} selected {/if}>Ethiopia</option>
          <option value="Falkland Islands (Malvinas)" {if $cur_shipping_country eq 'Falkland Islands (Malvinas)'} selected {/if}>Falkland Islands (Malvinas)</option>
          <option value="Faroe Islands" {if $cur_shipping_country eq 'Faroe Islands'} selected {/if}>Faroe Islands</option>
          <option value="Fiji" {if $cur_shipping_country eq 'Fiji'} selected {/if}>Fiji</option>
          <option value="Finland" {if $cur_shipping_country eq 'Finland'} selected {/if}>Finland</option>
          <option value="France" {if $cur_shipping_country eq 'France'} selected {/if}>France</option>
          <option value="French Guiana" {if $cur_shipping_country eq 'French Guiana'} selected {/if}>French Guiana</option>
          <option value="French Polynesia" {if $cur_shipping_country eq 'French Polynesia'} selected {/if}>French Polynesia</option>
          <option value="Gabon" {if $cur_shipping_country eq 'Gabon'} selected {/if}>Gabon</option>
          <option value="Gambia" {if $cur_shipping_country eq 'Gambia'} selected {/if}>Gambia</option>
          <option value="Georgia" {if $cur_shipping_country eq 'Georgia'} selected {/if}>Georgia</option>
          <option value="Germany" {if $cur_shipping_country eq 'Germany'} selected {/if}>Germany</option>
          <option value="Ghana" {if $cur_shipping_country eq 'Ghana'} selected {/if}>Ghana</option>
          <option value="Gibraltar" {if $cur_shipping_country eq 'Gibraltar'} selected {/if}>Gibraltar</option>
          <option value="Greece" {if $cur_shipping_country eq 'Greece'} selected {/if}>Greece</option>
          <option value="Greenland" {if $cur_shipping_country eq 'Greenland'} selected {/if}>Greenland</option>
          <option value="Grenada" {if $cur_shipping_country eq 'Grenada'} selected {/if}>Grenada</option>
          <option value="Guadeloupe" {if $cur_shipping_country eq 'Guadeloupe'} selected {/if}>Guadeloupe</option>
          <option value="Guam" {if $cur_shipping_country eq 'Guam'} selected {/if}>Guam</option>
          <option value="Guatemala" {if $cur_shipping_country eq 'Guatemala'} selected {/if}>Guatemala</option>
          <option value="Guinea" {if $cur_shipping_country eq 'Guinea'} selected {/if}>Guinea</option>
          <option value="Guinea-Bissau" {if $cur_shipping_country eq 'Guinea-Bissau'} selected {/if}>Guinea-Bissau</option>
          <option value="Guyana" {if $cur_shipping_country eq 'Guyana'} selected {/if}>Guyana</option>
          <option value="Haiti" {if $cur_shipping_country eq 'Haiti'} selected {/if}>Haiti</option>
          <option value="Honduras" {if $cur_shipping_country eq 'Honduras'} selected {/if}>Honduras</option>
          <option value="Hong Kong" {if $cur_shipping_country eq 'Hong Kong'} selected {/if}>Hong Kong</option>
          <option value="Hungary" {if $cur_shipping_country eq 'Hungary'} selected {/if}>Hungary</option>
          <option value="Iceland" {if $cur_shipping_country eq 'Iceland'} selected {/if}>Iceland</option>
          <option value="India" {if $cur_shipping_country eq 'India'} selected {/if}>India</option>
          <option value="Indonesia" {if $cur_shipping_country eq 'Indonesia'} selected {/if}>Indonesia</option>
          <option value="Iraq" {if $cur_shipping_country eq 'Iraq'} selected {/if}>Iraq</option>
          <option value="Ireland" {if $cur_shipping_country eq 'Ireland'} selected {/if}>Ireland</option>
          <option value="Israel" {if $cur_shipping_country eq 'Israel'} selected {/if}>Israel</option>
          <option value="Italy" {if $cur_shipping_country eq 'Italy'} selected {/if}>Italy</option>
          <option value="Jamaica" {if $cur_shipping_country eq 'Jamaica'} selected {/if}>Jamaica</option>
          <option value="Japan" {if $cur_shipping_country eq 'Japan'} selected {/if}>Japan</option>
          <option value="Jordan" {if $cur_shipping_country eq 'Jordan'} selected {/if}>Jordan</option>
          <option value="Kazakhstan" {if $cur_shipping_country eq 'Kazakhstan'} selected {/if}>Kazakhstan</option>
          <option value="Kenya" {if $cur_shipping_country eq 'Kenya'} selected {/if}>Kenya</option>
          <option value="Kiribati" {if $cur_shipping_country eq 'Kiribati'} selected {/if}>Kiribati</option>
          <option value="Kuwait" {if $cur_shipping_country eq 'Kuwait'} selected {/if}>Kuwait</option>
          <option value="Kyrgyzstan" {if $cur_shipping_country eq 'Kyrgyzstan'} selected {/if}>Kyrgyzstan</option>
          <option value="Latvia" {if $cur_shipping_country eq 'Latvia'} selected {/if}>Latvia</option>
          <option value="Lebanon" {if $cur_shipping_country eq 'Lebanon'} selected {/if}>Lebanon</option>
          <option value="Lesotho" {if $cur_shipping_country eq 'Lesotho'} selected {/if}>Lesotho</option>
          <option value="Liberia" {if $cur_shipping_country eq 'Liberia'} selected {/if}>Liberia</option>
          <option value="Liechtenstein" {if $cur_shipping_country eq 'Liechtenstein'} selected {/if}>Liechtenstein</option>
          <option value="Lithuania" {if $cur_shipping_country eq 'Lithuania'} selected {/if}>Lithuania</option>
          <option value="Luxembourg" {if $cur_shipping_country eq 'Luxembourg'} selected {/if}>Luxembourg</option>
          <option value="Macao" {if $cur_shipping_country eq 'Macao'} selected {/if}>Macao</option>
          <option value="Madagascar" {if $cur_shipping_country eq 'Madagascar'} selected {/if}>Madagascar</option>
          <option value="Malawi" {if $cur_shipping_country eq 'Malawi'} selected {/if}>Malawi</option>
          <option value="Malaysia" {if $cur_shipping_country eq 'Malaysia'} selected {/if}>Malaysia</option>
          <option value="Maldives" {if $cur_shipping_country eq 'Maldives'} selected {/if}>Maldives</option>
          <option value="Mali" {if $cur_shipping_country eq 'Mali'} selected {/if}>Mali</option>
          <option value="Malta" {if $cur_shipping_country eq 'Malta'} selected {/if}>Malta</option>
          <option value="Marshall Islands" {if $cur_shipping_country eq 'Marshall Islands'} selected {/if}>Marshall Islands</option>
          <option value="Martinique" {if $cur_shipping_country eq 'Martinique'} selected {/if}>Martinique</option>
          <option value="Mauritania" {if $cur_shipping_country eq 'Mauritania'} selected {/if}>Mauritania</option>
          <option value="Mauritius" {if $cur_shipping_country eq 'Mauritius'} selected {/if}>Mauritius</option>
          <option value="Mayotte" {if $cur_shipping_country eq 'Mayotte'} selected {/if}>Mayotte</option>
          <option value="Mexico" {if $cur_shipping_country eq 'Mexico'} selected {/if}>Mexico</option>
          <option value="Monaco" {if $cur_shipping_country eq 'Monaco'} selected {/if}>Monaco</option>
          <option value="Mongolia" {if $cur_shipping_country eq 'Mongolia'} selected {/if}>Mongolia</option>
          <option value="Montserrat" {if $cur_shipping_country eq 'Montserrat'} selected {/if}>Montserrat</option>
          <option value="Morocco" {if $cur_shipping_country eq 'Morocco'} selected {/if}>Morocco</option>
          <option value="Mozambique" {if $cur_shipping_country eq 'Mozambique'} selected {/if}>Mozambique</option>
          <option value="Myanmar" {if $cur_shipping_country eq 'Myanmar'} selected {/if}>Myanmar</option>
          <option value="Namibia" {if $cur_shipping_country eq 'Namibia'} selected {/if}>Namibia</option>
          <option value="Nauru" {if $cur_shipping_country eq 'Nauru'} selected {/if}>Nauru</option>
          <option value="Nepal" {if $cur_shipping_country eq 'Nepal'} selected {/if}>Nepal</option>
          <option value="Netherlands" {if $cur_shipping_country eq 'Netherlands'} selected {/if}>Netherlands</option>
          <option value="Netherlands Antilles" {if $cur_shipping_country eq 'Netherlands Antilles'} selected {/if}>Netherlands Antilles</option>
          <option value="New Caledonia" {if $cur_shipping_country eq 'New Caledonia'} selected {/if}>New Caledonia</option>
          <option value="New Zealand" {if $cur_shipping_country eq 'New Zealand'} selected {/if}>New Zealand</option>
          <option value="Nicaragua" {if $cur_shipping_country eq 'Nicaragua'} selected {/if}>Nicaragua</option>
          <option value="Niger" {if $cur_shipping_country eq 'Niger'} selected {/if}>Niger</option>
          <option value="Nigeria" {if $cur_shipping_country eq 'Nigeria'} selected {/if}>Nigeria</option>
          <option value="Niue" {if $cur_shipping_country eq 'Niue'} selected {/if}>Niue</option>
          <option value="Norfolk Island" {if $cur_shipping_country eq 'Norfolk Island'} selected {/if}>Norfolk Island</option>
          <option value="Norway" {if $cur_shipping_country eq 'Norway'} selected {/if}>Norway</option>
          <option value="Oman" {if $cur_shipping_country eq 'Oman'} selected {/if}>Oman</option>
          <option value="Pakistan" {if $cur_shipping_country eq 'Pakistan'} selected {/if}>Pakistan</option>
          <option value="Palau" {if $cur_shipping_country eq 'Palau'} selected {/if}>Palau</option>
          <option value="Panama" {if $cur_shipping_country eq 'Panama'} selected {/if}>Panama</option>
          <option value="Papua New Guinea" {if $cur_shipping_country eq 'Papua New Guinea'} selected {/if}>Papua New Guinea</option>
          <option value="Paraguay" {if $cur_shipping_country eq 'Paraguay'} selected {/if}>Paraguay</option>
          <option value="Peru" {if $cur_shipping_country eq 'Peru'} selected {/if}>Peru</option>
          <option value="Philippines" {if $cur_shipping_country eq 'Philippines'} selected {/if}>Philippines</option>
          <option value="Pitcairn" {if $cur_shipping_country eq 'Pitcairn'} selected {/if}>Pitcairn</option>
          <option value="Poland" {if $cur_shipping_country eq 'Poland'} selected {/if}>Poland</option>
          <option value="Portugal" {if $cur_shipping_country eq 'Portugal'} selected {/if}>Portugal</option>
          <option value="Puerto Rico" {if $cur_shipping_country eq 'Puerto Rico'} selected {/if}>Puerto Rico</option>
          <option value="Qatar" {if $cur_shipping_country eq 'Qatar'} selected {/if}>Qatar</option>
          <option value="Reunion" {if $cur_shipping_country eq 'Reunion'} selected {/if}>Reunion</option>
          <option value="Romania" {if $cur_shipping_country eq 'Romania'} selected {/if}>Romania</option>
          <option value="Russian Federation" {if $cur_shipping_country eq 'Russian Federation'} selected {/if}>Russian Federation</option>
          <option value="Rwanda" {if $cur_shipping_country eq 'Rwanda'} selected {/if}>Rwanda</option>
          <option value="Saint Helena" {if $cur_shipping_country eq 'Saint Helena'} selected {/if}>Saint Helena</option>
          <option value="Saint Kitts and Nevis" {if $cur_shipping_country eq 'Saint Kitts and Nevis'} selected {/if}>Saint Kitts and Nevis</option>
          <option value="Saint Lucia" {if $cur_shipping_country eq 'Saint Lucia'} selected {/if}>Saint Lucia</option>
          <option value="Samoa" {if $cur_shipping_country eq 'Samoa'} selected {/if}>Samoa</option>
          <option value="San Marino" {if $cur_shipping_country eq 'San Marino'} selected {/if}>San Marino</option>
          <option value="Saudi Arabia" {if $cur_shipping_country eq 'Saudi Arabia'} selected {/if}>Saudi Arabia</option>
          <option value="Senegal" {if $cur_shipping_country eq 'Senegal'} selected {/if}>Senegal</option>
          <option value="Seychelles" {if $cur_shipping_country eq 'Seychelles'} selected {/if}>Seychelles</option>
          <option value="Sierra Leone" {if $cur_shipping_country eq 'Sierra Leone'} selected {/if}>Sierra Leone</option>
          <option value="Singapore" {if $cur_shipping_country eq 'Singapore'} selected {/if}>Singapore</option>
          <option value="Slovakia" {if $cur_shipping_country eq 'Slovakia'} selected {/if}>Slovakia</option>
          <option value="Slovenia" {if $cur_shipping_country eq 'Slovenia'} selected {/if}>Slovenia</option>
          <option value="Solomon Islands" {if $cur_shipping_country eq 'Solomon Islands'} selected {/if}>Solomon Islands</option>
          <option value="Somalia" {if $cur_shipping_country eq 'Somalia'} selected {/if}>Somalia</option>
          <option value="South Africa" {if $cur_shipping_country eq 'South Africa'} selected {/if}>South Africa</option>
          <option value="Spain" {if $cur_shipping_country eq 'Spain'} selected {/if}>Spain</option>
          <option value="Sri Lanka" {if $cur_shipping_country eq 'Sri Lanka'} selected {/if}>Sri Lanka</option>
          <option value="Sudan" {if $cur_shipping_country eq 'Sudan'} selected {/if}>Sudan</option>
          <option value="Suriname" {if $cur_shipping_country eq 'Suriname'} selected {/if}>Suriname</option>
          <option value="Svalbard and Jan Mayen" {if $cur_shipping_country eq 'Svalbard and Jan Mayen'} selected {/if}>Svalbard and Jan Mayen</option>
          <option value="Swaziland" {if $cur_shipping_country eq 'Swaziland'} selected {/if}>Swaziland</option>
          <option value="Sweden" {if $cur_shipping_country eq 'Sweden'} selected {/if}>Sweden</option>
          <option value="Switzerland" {if $cur_shipping_country eq 'Switzerland'} selected {/if}>Switzerland</option>
          <option value="Syrian Arab Republic" {if $cur_shipping_country eq 'Syrian Arab Republic'} selected {/if}>Syrian Arab Republic</option>
          <option value="Taiwan" {if $cur_shipping_country eq 'Taiwan'} selected {/if}>Taiwan</option>
          <option value="Tajikistan" {if $cur_shipping_country eq 'Tajikistan'} selected {/if}>Tajikistan</option>
          <option value="Tanzania, United Republic of" {if $cur_shipping_country eq 'Tanzania, United Republic of'} selected {/if}>Tanzania, United Republic of</option>
          <option value="Thailand" {if $cur_shipping_country eq 'Thailand'} selected {/if}>Thailand</option>
          <option value="Timor-Leste" {if $cur_shipping_country eq 'Timor-Leste'} selected {/if}>Timor-Leste</option>
          <option value="Togo" {if $cur_shipping_country eq 'Togo'} selected {/if}>Togo</option>
          <option value="Tokelau" {if $cur_shipping_country eq 'Tokelau'} selected {/if}>Tokelau</option>
          <option value="Tonga" {if $cur_shipping_country eq 'Tonga'} selected {/if}>Tonga</option>
          <option value="Trinidad and Tobago" {if $cur_shipping_country eq 'Trinidad and Tobago'} selected {/if}>Trinidad and Tobago</option>
          <option value="Tunisia" {if $cur_shipping_country eq 'Tunisia'} selected {/if}>Tunisia</option>
          <option value="Turkey" {if $cur_shipping_country eq 'Turkey'} selected {/if}>Turkey</option>
          <option value="Turkmenistan" {if $cur_shipping_country eq 'Turkmenistan'} selected {/if}>Turkmenistan</option>
          <option value="Turks and Caicos Islands" {if $cur_shipping_country eq 'Turks and Caicos Islands'} selected {/if}>Turks and Caicos Islands</option>
          <option value="Tuvalu" {if $cur_shipping_country eq 'Tuvalu'} selected {/if}>Tuvalu</option>
          <option value="Uganda" {if $cur_shipping_country eq 'Uganda'} selected {/if}>Uganda</option>
          <option value="Ukraine" {if $cur_shipping_country eq 'Ukraine'} selected {/if}>Ukraine</option>
          <option value="United Arab Emirates" {if $cur_shipping_country eq 'United Arab Emirates'} selected {/if}>United Arab Emirates</option>
          <option value="United Kingdom" {if $cur_shipping_country eq 'United Kingdom'} selected {/if}>United Kingdom</option>
          <option value="United States" {if $cur_shipping_country eq 'United States'} selected {/if}>United States</option>
          <option value="Uruguay" {if $cur_shipping_country eq 'Uruguay'} selected {/if}>Uruguay</option>
          <option value="Uzbekistan" {if $cur_shipping_country eq 'Uzbekistan'} selected {/if}>Uzbekistan</option>
          <option value="Vanuatu" {if $cur_shipping_country eq 'Vanuatu'} selected {/if}>Vanuatu</option>
          <option value="Venezuela" {if $cur_shipping_country eq 'Venezuela'} selected {/if}>Venezuela</option>
          <option value="Viet Nam" {if $cur_shipping_country eq 'Viet Nam'} selected {/if}>Viet Nam</option>
          <option value="Virgin Islands, U.s." {if $cur_shipping_country eq 'Virgin Islands, U.s.'} selected {/if}>Virgin Islands, U.s.</option>
          <option value="Wallis and Futuna" {if $cur_shipping_country eq 'Wallis and Futuna'} selected {/if}>Wallis and Futuna</option>
          <option value="Western Sahara" {if $cur_shipping_country eq 'Western Sahara'} selected {/if}>Western Sahara</option>
          <option value="Yemen" {if $cur_shipping_country eq 'Yemen'} selected {/if}>Yemen</option>
          <option value="Zambia" {if $cur_shipping_country eq 'Zambia'} selected {/if}>Zambia</option>
          <option value="Zimbabwe" {if $cur_shipping_country eq 'Zimbabwe'} selected {/if}>Zimbabwe</option>
      </select></td>
      <td align="right">Mobile :</td>
      <td><input type="text" name="shipping_phone" value="{$cur_shipping_phone}" /></td>
    </tr>
     
    <tr>
      <td colspan="4"><table width="150" border="0" align="right">
          <tr>
            <td style="border-top-style:none"><input name="Submit" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " /></td>
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
