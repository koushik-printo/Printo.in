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
          <li class="last"><span>Brochure</span> A4</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Brochures <span>(A4)</span></h2>
            <div class="prod-infos">
              <p class="head">Boost your marketing with vibrant brochures</p>
              <ul class="infos">
                <li>Easy to order; Simply upload your design file (any format!)</li>
                   <li>Flexible printing options; order as few as 50 nos.</li>
                   <li>Printo team available for ordering assistance</li>
                   
              </ul>
              <div class="visuals" > <img src="images/brochure.png" /> </div>
              <div class="visual-actions" > <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
               <a href="cart_user_files.php?pid=11" class="btn-green upload"><span><span>Order Now</span></span></a>
               <a href="product_brochures_a4.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a> </div>
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
                        <td>1 (for sample)</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 65  </td>
                      </tr>
                      <tr class="alternate">
                        <td>25</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 900  </td>
                      </tr>
                      <tr>
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1,680  </td>
                      </tr>
                      <tr class="alternate">
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 3,230 </td>
                      </tr>
                      <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6,720  </td>
                      </tr>
                      <tr class="alternate">
                        <td>1,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8,870  </td>
                      </tr>
                      <tr>
                        <td>2,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 13,440  </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : A4; (A3 when opened)
                 <strong>Media</strong> : Paper - 300 GSM card stock      
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides
                  <br />
			<strong>  Finishing</strong> : Machine creased (folded) at the center. Lamination options for Matt or Glossy finish. Binding options for multiple pages 
                  <br />
			<strong>  Pages per Brochure</strong> : Additional pages can be added in sets of 4 sides  
                  <br />
                  <strong>Delivery</strong> : Lower quantities (less than 100) ship within 24 hours. Higher quantities need upto 5 working days. Time excludes that taken by courier service.
                  
                </div>
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="br_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Vibrant brochures for on-demand marketing</h3>
              <p>Brochures have a variety of uses - from proving customers with a corporate overview to cataloging your business services or products. We've made brochures easy for you to order, in quantities taht suit your needs and budget. Not everyone will need brochures in thousands and we understand that. Hence, with Printo you can order as low as 25 brochures. Printed on premium 220 GSM paper stock (upgradeable to 300 GSM), lamination options can add that extra kicker to your profile. </p>
              <p>
              Typically, brochures are designed by designers and created in standard sizes. But increasingly customers are opting for self-designed brochures from templates available in everyday use software such as MS Office. Leave the hassle of printing to Printo, while you focus on getting the content right. Brochures go well with A4 flyers which can help you pick and choose the internal content according to the customer. </p>
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
