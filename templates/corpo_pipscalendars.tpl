{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type="text/javascript" src="js/comp/pips/jquery.main.landing.js"></script>

<script type="text/javascript">
 $(document).ready(function() {
	 
	if(!$.browser.msie) { 
	
	$('body').find('.picimg').css('width','180px');
	
	
	}
	else {

	$('body').find('.picimg').css('width','178px');
	

	}
 });
 
 

 
</script>

{/literal}
<div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<div style="width:1px; height:1px; display:none;" id="hiddenImg"></div>


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
          
          <!--Uncommented by indra-->
          
            <h2>Name <span>Calendar</span></h2>
           
         <div class="prod-infos">
              <p class="head">Personalised Image Calendar</p>
              <ul class="infos">
                <li>Name cleverly integrated with images. Makes a lasting impression.</li>
                <li>Choose from exciting images to create a unique gift.</li>
                <li>Easy to order with Printo Image Personalisation Software (PIPS).</li>
              </ul>
              <div class="visuals" ><img src="images/cal_img/cal_pips/PIPS_white.png"  width="290" style="margin:35px 0px 0px 0px; z-index:100;" /> </div>
              <div class="visual-actions" >
        
                 <a href="corporate_calendarsdesign.php?pid=18" class="btn-blue"><span><span>Design My Calendar</span></span></a></div>
            </div>
            
            <!--Uncommented by indra-->

          
<div style="margin:auto"  id="imgList">
<a href="#"><img src="images/cal_img/cal_thumb/preview4.jpg" width="180" class="picimg" title="Click to enlarge" /></a>&nbsp;&nbsp;<a href="#"><img src="images/cal_img/cal_thumb/preview5.jpg"  width="180" class="picimg" title="Click to enlarge" /></a>&nbsp;&nbsp;<a href="#"><img src="images/cal_img/cal_thumb/preview6.jpg" width="180" class="picimg" title="Click to enlarge" /></a>&nbsp;&nbsp;<a href="#"><img src="images/cal_img/cal_thumb/preview1.jpg" width="180" class="picimg" title="Click to enlarge" /></a>
</div>


<br/>
            <div class="product-details-tab1" >
              <ul>
                <li><a id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')"><strong>Pricing</strong></a></li>
                <li><a id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')"><strong>Product Specs</strong></a></li>
              <li style="display:none;"><a href="#" id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')"><strong>Artwork Specifications</strong></a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td>Price <span style="font-size:x-small;">(per calendar, excludes tax)</span></td>
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
                 <strong>Size :</strong> Available in Standard A5(210 mm x 148 mm) and Long (10" x 4") sizes<br />
                 <strong>Media :</strong> Paper - 220 GSM card stock premium paper<br />
                 <strong>Printing : </strong>Production grade four colour printing<br />
                 <strong>Finishing : </strong>Mounted on a durable stand with machine Wiro bind<br />
                 <strong>Pages per Calendar :</strong> 13 printed pages. 1 cover pages and 12 months <br />
                <strong>Delivery : </strong>up to 50 calendars shipped within 48 hours. Higher quantities need 5 working days</div>
                <div id="tab03" class="proUpload" style="display:none;">
                
                </div>
                
              </div>
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
