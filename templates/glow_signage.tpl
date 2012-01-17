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
          <li class="last">Glow <span>Signage</span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Glow <span>Signage</span></h2>
            <div class="prod-infos">
              <p class="head">Add the finishing touch to your letters!</p>
              <ul class="infos">
                <li>Full colour printing</li>
                <li>100 GSM premium paper</li>
                <li>Order as few as 100 envelopes</li>
              </ul>
              <div class="visuals_two" > <img src="images/emvelopes.png"/> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
             <!--   <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
                <!--<a href="cart_user_files.php?pid=3" class="btn-green upload"><span><span>Order Now</span></span></a>-->
                <a href="product_glow_signage.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a href="#" id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a href="#" id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a href="#" id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
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
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 675 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2700 + Taxes</td>
                      </tr>
                      <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 5500 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>1000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6900 + Taxes</td>
                      </tr>
                      <tr>
                        <td>2000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 7800 + Taxes</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                  <!--<p>3.5" X 2"</p>-->
                  <div><ul><li>Full colour digital or offset prints on 90 GSM paper</li>
							<li>4.25” X 9.5” size</li>
							<li>Die-cut to give a clean finish</li>
                            <div class="clear_both"></div>
                            </ul>
</div>
                </div>
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="en_artwork_specification.tpl"}
                </div>
                
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>&nbsp;</h3>
              <p>Without a doubt, a matching envelope is what adds the final finishing touch to your letters. Impress your clients with truly professional letters, quotations or invoices.  No more plain and boring envelopes - order your matching set today!</p></div>
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
