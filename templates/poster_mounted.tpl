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
          <li>Products</li>
          <li class="last" >Display <span>Graphics</span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Display <span>Graphics</span></h2>
            <div class="prod-infos">
              <p class="head">Give your office space a facelift!</p>
              <ul class="infos">
                <li>Razor sharp prints to display your brand or graphics</li>
                   <li>Wall mountable & lamination for increased life</li>
                   <li>Shipped within 48 hours</li>
              </ul>
              <div class="visuals" > <img src="images/mounted.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
              <!--  <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
                <!--<a href="cart_user_files.php?pid=7" class="btn-green upload"><span><span>Order Now</span></span></a>-->
                <a href="product_poster_mounted.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
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
                        <td width="110">Size</td>
                        <td >Price (excludes taxes)</td>
                      <!--  <td>Delivery Time</td>-->
                        </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>A3 - 3mm</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 296   </td>
                     <!--   <td>Ready to ship in 24 hours</td>-->
                      </tr>
                      <tr class="alternate">
                        <td>A2 - 3mm</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 592   </td>
                      </tr>
                      <tr>
                        <td>A1 - 3mm</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 888   </td>
                      </tr>
                      <tr class="alternate">
                        <td>A3 - 5mm</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 400   </td>
                      </tr>
                      <tr>
                        <td>A2 - 5mm</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 800   </td>
                      </tr>
                      <tr class="alternate">
                        <td>A1 - 5mm</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1200   </td>
                      </tr>
                    </tbody>
                  </table>
                </div>

                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : Availabe in multiple sizes - <strong>A0</strong> (33" x 46.8"), <strong>A1</strong> (23.4" x 33.1"), <strong>A2</strong> (16.5" x 23.4")and <strong>A3</strong> (16.5" x 11.69") <br />
                 <strong>Media</strong> : Paper - 220 GSM Matt roll stock      
                  <br />
			<strong>  Printing</strong> : Production grade, 6 colour printing on one side
                  <br />
			<strong>  Finishing</strong> : Machine laminated (Matt finish) and machine mounted on 3mm or 5mm foam board
                  <br />
			<strong>  Other</strong> : Plastic key-hole hooks available for wall mounting at no extra cost
                  <br />
                  <strong>Delivery</strong> : Ship within 48 hours. Costs will vary on size of shipment. Time excludes that taken by courier service.
                  
                </div>

                              <div id="tab03" class="proUpload" style="display:none;">
                {include file="lh_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3><span class="head">Display graphics for your office space</span></h3>
              <p>Printo's high quality indoor display graphics help you with mounting your brand, logo, technology map or products on the wall of your offices. it takes your branding and imagery one notch up - from indoor signages to brand communication. Or uplift your office ambience with abstracts, illustrations or reproductions that complement your office interiors. </p>
              <p>Our display graphics are printde on high end ink jet printers and then mounted on a foam board (either 3mm or 5mm), which gives it that stiffnes to be installed on a vertical surface. The machine coat of lamination protect the prints from dampness and allow for easy mainteance and cleaning. We recommend matt lamination to help avoid the glare effect of indoor lighting. Shipping is a challenge and henc we request customers to factor in a little more time for larger size prints.</p>
              
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
