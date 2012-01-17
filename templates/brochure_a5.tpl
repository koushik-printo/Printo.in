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
          <li class="last"><span>Brochure</span> A5</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Brochure <span>A5</span></h2>
            <div class="prod-infos">
              <p class="head">Vibrant brochures for on-demand marketing</p>
              <ul class="infos">
                <li>300 GSM</li>
                <li>Lamination</li>
                <li>Business card slit</li>
              </ul>
              <div class="visuals" > <img src="images/brochurea5.png" /> </div>
              <div class="visual-actions" > <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> --><!--<a href="cart_user_files.php" class="btn-green upload"><span><span>Order Now</span></span></a>-->
              <a href="product_brochures_a5.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a> </div>
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
                        <td>Price</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>5</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 250 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>10</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 400 + Taxes</td>
                      </tr>
                      <tr>
                        <td>15</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 550 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>Set of 5 thereof</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 150 + Taxes</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                  <p>A4</p>
                  <div>4 page brochure (open size A3) on 220 GSM paper Creased in the center</div>
                </div>
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="br_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Vibrant brochures for on-demand marketing</h3>
              <p>Full-colour high quality printing to maximise impact. Order as low as 5 brochures! Printed on premium 220 GSM paper stock.</p>
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
