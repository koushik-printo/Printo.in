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
          <li class="last">Standee Outdoor</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Standee <span>(Outdoors)</span></h2>
            <div class="prod-infos">
              <p class="head">Outstanding visibility, literally!</p>
              <ul class="infos">
                <li>Ideal for outdoors; weather proof prints</li>
                <li>Re-usable standee frame; convenient to carry & store </li>
        <li>Ships within 48 hours</li>
              </ul>
              <div class="visuals" > <img src="images/standee-2.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
              <!--  <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
             <a href="cart_user_files.php?pid=15" class="btn-green upload"><span><span>Order Now</span></span></a>
                <a href="product_standee_outdoor.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
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
                        <td>Price (excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Regular (5' x 2')</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1,500 each </td>
                      </tr>
                      <tr class="alternate">
                        <td>Large (6.5' x 3')</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2,500 each  </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : Two options - 5' x 2' or 6.5' x 3' (print area in feet)  <br />
                 <strong>Media</strong> : Long lasting Flex media      
                  <br />
			<strong>  Printing</strong> : Solvent Printing   <br />
			<strong>  Finishing</strong> : Mounted on to the standee frame; ready for use<br />
			<strong>  Other</strong> : Re-usable aluminium roll-up base with telescopic back support tube  
                  <br />
                  <strong>Delivery</strong> : Shipped within 48 working hours. Time excludes that taken by courier service.
                  
                </div>
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="st_artwork_specification.tpl"}
                </div>
                
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Choosing the right standee is important</h3>
              <p>Whether it is for new launches, promotional activities or attracting footfalls to your business, no other option provides the flexibility and  convenience equal to that of a Printo roll-up standee. Our standees come with an easy to  assemble and durable, aluminium base stand, in regular and large sizes. Our Outdoor Standees can be exposed to the elements and will withstand rain, sunshine and dust in equal measure. </p>
              <p>We have two types of Outdoor Standees: Solvent and Eco Solvent. We recommend our Eco-Solvent Flex if your message has a lot of graphics and will be viewed from a closer distance. Standees are shipped with a carry bag and you can easily remove your print and install a  new print for the next promo. The weatherproof prints guarantee much longer long outdoor life as compared to the less durable (though sharper) Indoor Standees. </p>
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
