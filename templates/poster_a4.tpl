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
          <li class="last" >Poster</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>A4 Prints, inserts <span>& Posters</span></h2>
            <div class="prod-infos">
              <p class="head"> Liven up your space!</p>
              <ul class="infos">
                <li>Large, vibrant photo quality prints and posters </li>
                <li>Easy to order; pick a size and upload file</li>
                <li>Ideal for office posters or exhibition stalls</li>
                <li>Ships (rolled up) within 24 hours</li>
               
               </ul>
              <div class="visuals" > <img src="images/poster.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
                <!--<a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
              <a href="cart_user_files.php?pid=8" class="btn-green upload"><span><span>Order Now</span></span></a>
               <a href="product_poster_a4.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
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
                        <td>Price (per poster; excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 28.00</td>
                      </tr>
                      <tr class="alternate">
                        <td>25</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 13.28</td>
                      </tr>
                      <tr>
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 10.64   </td>
                      </tr>
                      <tr class="alternate">
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 9.32 </td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8.66</td>
                      </tr>
                      <tr class="alternate">
                        <td>250</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8.53</td>
                      </tr>
                      <tr class="alternate">
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8.26</td>
                      </tr>
                      <tr class="alternate">
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                  <p>A4 to A0 sized prints on matte or glossy media with option to laminate.</p>
                  <div>Comes with optional double sided taping.</div>
                </div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="lh_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3><span class="head">Get more out of your events.</span></h3>
              <p>Posters are perhaps the easiest and most effective way to let your customers know about your products, services, special offers or promotions. A variety of media types range of sizes to choose; to suit your requirement makes this the most flexible option as well.<strong></strong></p>
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
