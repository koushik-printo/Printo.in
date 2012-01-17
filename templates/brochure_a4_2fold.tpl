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
          <li class="last">3 Panel <span>Brochures</span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>3 Panel <span>Brochures</span></h2>
            <div class="prod-infos">
              <p class="head">Compact, multi-purpose brochures</p>
              <ul class="infos">
               <li>6 page format ideal for multiple products</li>
               <li>Flexible quantity options; as low as 25 brochures</li>
               <li>Ships within 24 hours for smaller quantities</li>    
              </ul>
              <div class="visuals" > <img src="images/brochure-a4-3p.png" /> </div>
              <div class="visual-actions" > <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
              <a href="cart_user_files.php?pid=5" class="btn-green upload"><span><span>Order Now</span></span></a>
              <a href="product_brochures_a4_2fold.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a> </div>
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
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 46  </td>
                      </tr>
                      <tr class="alternate">
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 980  </td>
                      </tr>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1,830  </td>
                      </tr>
                      <tr class="alternate">
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 5,860</td>
                      </tr>
                      <tr>
                        <td>1,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6,580</td>
                      </tr>
                      <tr class="alternate">
                        <td>2,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8,150</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 8.5" x 3.9" (1/3 A4) when folded; A4 when opened
        <strong>Media</strong> : Paper - 220 GSM card stock      
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides
                  <br />
			<strong>  Finishing</strong> : Machine creased (folded) along 2 equidistant lines                  <br />
			<strong>  Pages per Brochure</strong> : 6 'panels' (3 on each side; each 1/3 of A4). No Additional pages can be added. <br />
           <strong>Delivery</strong> : Lower quantities (less than 100) ship within 48 hours. Higher quantities need 5 working days. Time excludes that taken by courier service.
                  
                </div>
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="br3p_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Compact 2-fold brochures for multiple product info</h3>
              <p>Business printing requirements are as unique as the businesses themselves. These handy brochures come in 1/3 A4 size and tuck neatly into pockets or a display rack. This format is ideal when you have a lot to detail about your products or services. The 2-fold brochures also make ideal take-away menu cards or rate cards. </p>
              <p>We understand that not everyone will need brochures in thousands. So Printo allows you to order as low as 25 brochures. Printed on premium 220 GSM paper stock, these are a popular format for all types of businesses. Just design your artwork according to the specifications or pick a "3-panel" / 2-fold template from your regular desktop software. </p>
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
