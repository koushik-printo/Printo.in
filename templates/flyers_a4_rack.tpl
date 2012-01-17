{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
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
          <li>Marketing</li>
          <li class="last" >Rack <span>Cards</span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Info <span>Leaflets</span></h2>
            <div class="prod-infos">
              <p class="head">Quick information handouts</p>
              <ul class="infos">
                <li>Ideal for specific product / service info</li>
                <li>Easy to create and print; simply upload your file</li>
                <li>Shipped in as little as 24 hours</li>
              </ul>
              <div class="visuals flyerimg" > <img src="images/rack-card.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
              <!--  <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
<!--               <a href="cart_user_files.php?pid=9" class="btn-green upload"><span><span>Order Now</span></span></a>
-->                <a href="product_flyers_a4_rack.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a  id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a  id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a  id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td>Price (excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 675</td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1,200   </td>
                      </tr>
                                            <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2,700</td>
                      </tr>
                      <tr class="alternate">
                        <td>1,500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 5,400   </td>
                      </tr>
						<tr>
                        <td>3,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6,010</td>
                      </tr>

                    </tbody>
                  </table>
                </div>
               <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 8.5" x 3.9" (1/3 A4)
                 <strong>Media</strong> : Paper - 220 GSM card stock      
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides
                  <br />
			<strong>  Finishing</strong> : Machine cut 
                  <br />
                  <strong>Delivery</strong> : Lower quantities (less than 100) ship within 24 hours. Higher quantities need 5 working days. Time excludes that taken by courier service.
                   </div>
                
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="fl_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Get your products in to the spotlight.</h3>
              <p>Info Leaflets are also referred to as 'Rack Cards' since their compact size makes them easy to keep in dispensers. They are ideal for marketing comunication in high foot-fall scenarios or where you want to communicate targetted information about 1 or 2 products or services. You may recall seeing these formats in banks and hospital information counters. Now we have quantities to suit businesses of all sizes.</p>
              <p>These leaflets come in 1/3 of A4 size and have printing on both sides. They are perhaps the simplest to design yourself. Go to page setup of your favourite layout or design software and select the size mentioned in the artwork specifications. 
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
