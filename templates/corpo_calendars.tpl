{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type="text/javascript" src="js/comp/cal/jquery.main.landing.js"></script> 
{/literal}
<div id="hiddenFlds" style="position:fixed; height:1px; width:1px">
<input type="hidden" name="sqTxt" id="sqTxt" value="<h3>Professional & Compact Design</h3>
<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:14px;&quot;>Size : 5.5&quot; x 5.5&quot;</span>" />
<input type="hidden" name="lonTxt" id="lonTxt" value="<h3>Elegant & Unique Look</h3>
<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:14px;&quot;>Size : 10&quot; x 4&quot;</span>" />
<input type="hidden" name="a5Txt" id="a5Txt" value="<h3>The Classic Calendar</h3>
<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:14px;&quot;>Size : 8.26&quot; x 5.8&quot;</span>" />
</div>
<div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<div id="hiddenImg" style="height:1px; width:1px; display:none;"></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >

				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Corporate <span>Calendars</span></h2>
            <div class="prod-infos">
              <p class="head">Put your brand on every desktop</p>
              <ul class="infos">
                <li>Customised calendars with your company branding</li>
                <li>Sturdy stand with slick wiro binding, to last the year</li>
                <li>Easy to order; choose from standard size and design options</li>
              </ul>
              <div class="visuals" style="position:absolute; right:10px; top:10px;"><span class="visuals"><img src="images/corpo_cal.png" width="300" /></span></div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
                <a href="cart_templates.php?pid=17" class="btn-green upload"><span><span>Select Design</span></span></a>
                <a href="cart_user_files.php?pid=17" class="btn-green upload"><span><span>Upload your Design</span></span></a><br />
                <!-- <a href="product_corporate_calendars.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a>-->
               <br />
              </div>
             <div style="padding-bottom:10px;">
              <ul class="infos"><li> If you are looking for personalised calendars <a href="http://gifts.printo.in/store/desk_calendar/create" target="_blank"><strong>Click here</strong></a></li></ul>
             </div>
            </div>
            <div style="margin:auto; min-height:170px;">
            <a style="position:absolute; margin-top:15px;"><img src="images/calender/A5_300.png" width="180" class="picimg" title="Click to enlarge" style="cursor:pointer;"/>
            </a>
            <a style="position:absolute; left:250px;"><img src="images/calender/Square_300.png"  width="180" class="picimg" title="Click to enlarge" style="cursor:pointer;"/>
            </a>
            <a style="position:absolute;  margin-top:15px; left:500px;"><img src="images/calender/Cal_300.png" width="180" style="margin-bottom:20px; cursor:pointer;" class="picimg" title="Click to enlarge"/>
            </a>
</div>
<div style="margin:auto; min-height:20px;">
<font style="position:relative; left:50px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Classic Calendar</font>
<font style="position:relative; left:180px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Compact Calendar</font>
<font style="position:relative; left:320px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Long Calendar</font>

</div>
            <div class="product-details-tab" >
              <ul>
                <li><a  id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a  id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a  id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                <p style="padding:10px;"><select name="select" id="prlisting" onchange="mypr();">
        <option value="1">Classic Calendar</option>
        <option value="2">Compact Calendar</option>
        <option value="3">Long Calendar</option>
        </select></p>
                  <div id="a5_cal">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td width="227">Price per Calendar(excludes tax)</td>
                        <td width="271">&nbsp;</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 355</td>
                        <td rowspan="4" align="center" valign="middle"><img src="images\calender\A5\02\Main_300.png" alt="Classic A5 Corporate Diary Printing" width="100px" hspace="5" vspace="5" border="0" align="middle" /></td>
                      </tr>
                      <tr class="alternate">
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 280</td>
                      </tr>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 230</td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 205</td>
                      </tr>
                      </tbody>
                  </table>
                  </div>
                  <div id="sq_cal" style="display:none;">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td width="227">Price per Calendar(excludes tax)</td>
                        <td width="271">&nbsp;</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 305</td>
                        <td rowspan="4" align="center" valign="middle"><img src="images\calender\Square\01\Main_300.png" alt="Classic A5 Corporate Diary Printing" width="100px" hspace="5" vspace="5" border="0" align="middle" /></td>
                      </tr>
                      <tr class="alternate">
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 205</td>
                      </tr>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 165</td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 130</td>
                      </tr>
                      </tbody>
                  </table>
                  </div>
                  <div id="lng_cal" style="display:none;">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td width="227">Price per Calendar(excludes tax)</td>
                        <td width="271">&nbsp;</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 355</td>
                        <td rowspan="4" align="center" valign="middle"><img src="images\calender\Long\02\Main_300.png" alt="Classic A5 Corporate Diary Printing" width="100px" hspace="5" vspace="5" border="0" align="middle" /></td>
                      </tr>
                      <tr class="alternate">
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 280</td>
                      </tr>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 230</td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 205</td>
                      </tr>
                      </tbody>
                  </table>
                  </div>
        </div>
                 <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : Available in Standard A5(210 mm x 148 mm)</br>
                 <strong>Media</strong> : Paper - 220 GSM card stock premium paper<br />
			<strong>  Printing</strong> : Production grade four colour printing<br />
			<strong>  Finishing</strong> : Mounted on a durable stand with machine Wiro bind<br />
			<strong>  Pages per Calendar</strong> : 13 printed pages. 1 cover pages and 12 months<br />
                  <strong>Delivery</strong> : up to 50 calendars shipped within 48 hours. Higher quantities need 5 working days</div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="a5_cl_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Imprint your brand on your customer desktops              </h3>
            Very few marketing collateral bear the ability to get your brand before your clients, for 365 days of the year. Printo's calendars are designed to ensure that 
            your customers (or team) find the calendar adding to their overall desk space, rather than 'occupying space'.  We do this through well selected images that form the 
            basic design background. These are shot by professional photographers, from India and abroad. Your logo or message sits nestled subliminally among these calendar images.</div>
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
