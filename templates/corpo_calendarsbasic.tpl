{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}

<script type="text/javascript" src="js/comp/pips/jquery.main.confirm.js"></script>

{/literal}

<div id="displayoverlay" style="position:fixed; width:1px; height:1px; z-index:1000;"></div>
<div style="width:1px; height:1px; display:none;" id="hiddenImg"></div>
<div id="base_frame">

  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >
				
					<div class="breadcrumb" >
        <ul>
          <!--<li class="first" ><a href="index.php" >Home</a></li>
          <li>Products</li>
          <li class="last" >Customised<span> Calendars</span></li>-->
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            
                <div class="title-box-design">
                <div style="margin-top:-12px;">
                <h2>NAME <span>CALENDARS</span></h2>
                </div>
                <div class="">
                <div class="steps-design" >
					<span class="inactive" ><label>Step</label><span>1</span>
                    <label style="font-weight:bold;margin: 3px 0px 0px 25px;">Select Images
                    </label>
                    </span>
					<span class="active" style="margin-left: -15px;"><label>Step</label><span>2</span>
                    <label style="color:#F68B11; font-weight:bold;">Add Name </label></span>
				</div>
                </div>
				</div>
           
         <div class="prod-infos">
              <p class="head" style="width:100%;">Add the name(s) you want on the calendar(s)</p>
           
              <div class="visuals" > <img id="imgType" src="images/cal_img/cal_pips/pipsclassic.png" width="350" style="margin: 70px 0px 0px -50px"/> </div>
              <div class="visual-actions" >
               
                <form action="" method="post" name="form1" id="form1" onsubmit="return checkValidate();">
               <table border="0" cellpadding="0" cellspacing="5" width="300px">
                          <tr>
                            <td width="25%" align="left">Name</td>
                            <td width="75%"><label for="textfield"></label>
                            <input type="hidden" name="pips_name" id="pips_name"  />
                              <input type="text" name="name" id="name" style="width:80%" tabindex="1" />
                             {if $err_userName != ''}  <div style="color:#F00">{$err_userName}</div> {/if}</td>
                          </tr>
                          <tr>
                            <td align="left">Full Name</td>
                            <td>
                            <input type="hidden" name="pips_fullname" id="pips_fullname"  />
                            <input type="text" name="fullname" id="fullname" style="width:80%" tabindex="2"/>
                            {if $err_emailBlank != ''}  <div style="color:#F00;" >{$err_emailBlank}</div> {elseif $err_invalidEmail != ''} <div style="color:#F00"> {$err_invalidEmail}</div> {/if}</td>
                          </tr>
                           <tr>
                            <td align="left">Design</td>
                       <td><select name="pips_cal_type" id="pips_cal_type" style="width:91%; margin-left:1px;" tabindex="3">
                               <option value="20">Classic</option>
                               <option value="17">Business Black</option>
                               <option value="18">Business White</option>
                               <option value="19">Fun Black</option>
                               
                             </select>
                             </td>
                          </tr>
                          <tr>
                            <td align="left">Year</td>
                       <td><select name="Year" id="Year" style="width:91%; margin-left:1px;" tabindex="4">
                               <option value="2012">2012</option>
                            </select>
                             </td>
                          </tr>
                            <tr>
                            <td align="left">Qty</td>
                       <td>{html_options name=mypr_qty options=$myQtyOptions selected=$myQtySelect onchange="getprice({$current_item_id});" tabindex="5"}
                             </td>
                          </tr>
                          <tr>
                            <td align="left">Price</td>
                       <td> <div id="txtHint"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> {$cartItemsList.price}</div> 
                  </td>
                          </tr>
                        </table>
                        
<input type="hidden" name="current_item_id" value="{$current_item_id}" />
<input type="hidden" name="form_fields" value="{$form_fields}" />
<input type="hidden" name="cal" id="cal" value="1" />
<input type="hidden" name="xl_sheet" id="xl_sheet" value="" />
<a href="#" id="ReqSubmit" class="btn-blue" style="margin:10px 0px 20px 0px;"><span><span>
<input type="submit"  name="ReqSubmit"  style="background:none; border:none; padding:0; color: #FFF; font-size:14px; font-weight:bold; cursor:pointer;;" value="Order Now"/></span></span></a></div>
                </form>
                
            </div>
            
       
          
            <div class="product-details-tab" >
              <ul>
                <li><a  id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a  id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li style="display:none;"><a  id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td>Price (excludes tax)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 355</td>
                      </tr>
                      <tr class="alternate">
                        <td>25</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 280</td>
                      </tr>
                      <tr>
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 280</td>
                      </tr>
                      <tr class="alternate">
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 230</td>
                      </tr>
                      <tr >
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 205</td>
                      </tr>

                    </tbody>
                  </table>
              </div>
                 <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : A5 (size of each page)</br>
                 <strong>Media</strong> : Paper - 220 GSM card stock      
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on one side
                  <br />
			<strong>  Finishing</strong> : Machine punched and bound. 
                  <br />
			<strong>  Pages per Calendar</strong> : 13 calendar pages, including cover.   
                  <br />
                  <strong>Delivery</strong> : Lower quantities (up to 50) ship within 48 hours. Higher quantities need 5 working days. Time excludes that taken by courier service.
                  
                </div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="lh_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Imprint your brand on your customer desktops              </h3>
            Very few marketing collateral bear the ability to get your brand before your clients, for 365 days of the year. Printo's calendars are designed to ensure that 
            your customers (or team) find the calendar adding to their overall desk space, rather than 'occupying space'.  We do this through well selected images that form the 
            basic design background. These are shot by professional photographers, from India and abroad. Your logo or message sits nestled subliminally among these calendar images.
            <p>
            You should also inquire about our unique PIPS (c) calendars which have the recipients name cleverly integrated with the image. Printo specialises in delivering large volume, 
            mass customisation products like these. So go ahead and send us an enquiry. 
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
