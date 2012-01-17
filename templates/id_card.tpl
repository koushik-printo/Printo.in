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
          <li class="last" >ID <span>Cards</span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>ID <span>Cards</span></h2>
            <div class="prod-infos">
              <p class="head">Smart identity cards that last!</p>
              <ul class="infos">
                <li>Easy to order; just send us your files</li>
                <li>Printed on highly durable Teslin with PVC lamination</li>
                <li>Shipped within 24 hours (Mon-Sat)</li>
              </ul>
              <div class="visuals" > <img src="images/id-cards.png" height="280px" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
              <!--  <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
             <a href="cart_user_files.php?pid=4" class="btn-green upload"><span><span>Order Now</span></span></a>
             <a href="product_id_card.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
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
                        <td>Price (Excludes Tax)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td width="50%">Per set of 10 (Single Sided)</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 500   </td>
                      </tr>
                      <tr class="alternate">
                        <td>Per set of 10 (Double Sided)</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 630   </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
               <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 3.5" X 2" (approx.)
                  <div><strong>Media</strong> : White base Teslin (PVC) - with single-sided or double-sided printing      
                  <br />
			<strong>  Printing</strong> : Full colour ink jet printing 
                  <br />
                  <strong>Delivery</strong> : 24 hours + time taken by courier service
                  
                </div> </div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="id_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Identity Cards that are sharp and durable</h3>
              <p>Besides printing quaity, the key issue with ID cards is durability and security. ID Cards are often exposed to the elements and also subjected to significant wear and tear (access swiping, for example). Printo's ID cards use Teslin, a highly durable synthetic material, at the core of the card. This is further strenghtened post printing by laminating either side with PVC films. This also makes the ID card difficult to replicate or tamper as compared to regular paper based ID cards.  </p>
<p>
Our ID cards are primarily used for employee identification but some of our creative customers have often found them to make unique busines cards too! Ask us for special requests like supplying a base or lanyards along with the cards you order. </p>
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
