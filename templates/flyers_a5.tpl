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
          <li class="last" ><span>Flyers A5</span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Flyers <span>(half letter) </span></h2>
            <div class="prod-infos">
              <p class="head">Start your local marketing for <strong>95 paise!</strong></p>
              <ul class="infos">
                <li>Great price makes these ideal for mass neighbourhood distribution.</li>
                <li>Easy to order; create design in Half-Letter size and upload file.</li>
                <li>Shipped within 5 working days. </li>
              </ul>
              <div class="visuals flyerimg" > <img src="images/flyer2.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
             <!--   <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
               <a href="cart_user_files.php?pid=6" class="btn-green upload"><span><span>Order Now</span></span></a>
               <a href="product_flyers_a5.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
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
                        <td>Price (excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>2,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">4,860</del> 1,900  </td>
                      </tr>
                      <tr class="alternate">
                        <td>4,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs. </span><del style="color:#F00;">7,410</del> 3,800  </td>
                      </tr><tr>
                        <td>10,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8,790</td>
                      </tr>
                      <tr class="alternate">
                        <td>20,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 13,040</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                 <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : Half-Letter or Statement (8.5" x 5.5") <br />
                  <strong>Media</strong> : Paper - 90 GSM Maplitho       
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides
                  <br />
			<strong>  Finishing</strong> : Machine cut                   
            <br />
            <strong>Delivery</strong> : Ships within 5 working days. Time excludes that taken by courier service.
                  
                </div>
                
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="fla5_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
           <div class="xtra-content" >
              <h3>A handy way to get the word out about your business</h3>
              <p>These high quality full colour flyers are ideal for your mass marketing campaigns. The vibrant colour prints can either be used as handouts or as inserts into a the local newspaper. Printing on both sides provides enhanced visibility and the 90 GSM Maplitho paper ensures durability.</p>
<p>Based on your content and mode of distribution, you may want to chose between the <a href="flyers_a4.php">Letter sized </a>regular version or this smaller, handier half-letter option. Browse through the Offers section to spot deals on this product.</p> 
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
