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
          <li class="last" >Flyers<span> A4 </span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Flyers<span> (letter size) </span></h2>
            <div class="prod-infos">
              <p class="head">A  flying start to your local marketing!</p>
              <ul class="infos">
                <li>Ideal for building awareness at events or through neighbourhood distribution.</li>
                <li>Easy to order; create design in Letter size and upload file.</li>
                <li>Shipped within 5 working days. </li>
              </ul>
<div class="visuals flyerimg" > <img src="images/flyer.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a>
             <a href="cart_user_files.php?pid=13" class="btn-green upload"><span><span>Order Now</span></span></a> -->
             <a href="cart_user_files.php?pid=13" class="btn-green upload"><span><span>Order Now</span></span></a>
                <a href="product_flyers_a4.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a href="javascript:void(0)" id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a href="javascript:void(0)" id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a href="javascript:void(0)" id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Quantity</td>
                        <td>Price</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>2,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">5,430</del> 3,800  </td>
                      </tr>
                      <tr class="alternate">
                        <td>4,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 7,600</td>
                      </tr><tr>
                        <td>6,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 11,400</td>
                      </tr>
                      <tr class="alternate">
                        <td>8,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 11,120</td>
                      </tr>
                    </tbody>
                  </table>
                </div>

              <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : Letter (11" x 8.5") <br />
                  <strong>Media</strong> : Paper - 90 GSM Maplitho       
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides
                  <br />
			<strong>  Finishing</strong> : Machine cut                   
            <br />
            <strong>Delivery</strong> : Ships within 5 working days. Time excludes that taken by courier service.
                  
                </div>
                
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="flreg_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>A  flying start to your marketing campaigns!</h3>
              <p>High  quality full colour flyers for your mass marketing campaigns! These vibrant colour prints can also double up as inserts into a catalogue, menu items at an event or newspaper inserts. While printing on both sides provides enhanced visibility, the 90 GSM Maplitho paper ensures durability.</p>
<p>Based on your content and mode of distribution, you may want to chose between the Letter sized regular version or the smaller, handier <a href="flyers_a5.php">half-letter option</a>. Browse through the Offers section to spot deals on this product.</p> 
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
