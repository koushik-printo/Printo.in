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
          <li class="last" >Letter Heads</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Letter <span>Heads</span></h2>
            <div class="prod-infos">
              <p class="head">Professional letterheads for your business!</p>
              <ul class="infos">
                <li>Great value! High quality printing on premium paper</li> 
                <li>Easy to order; Choose from our designs or upload yours </li>
                <li>Ready to ship withn 5 days</li>
              </ul>
<div class="visuals" > <img src="images/letter-heads.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
                <a href="cart_templates.php?pid=3" class="btn-green upload"><span><span>Pick a Design</span></span></a>
                <a href="cart_user_files.php?pid=3" class="btn-green upload"><span><span>Upload your design</span></span></a><!--<a href="product_letterhead.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a>--></div>
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
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">932</del> 839</td>
                      </tr>
                      <tr>
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">1732</del> 1559</td>
                      </tr>
                      <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">4132</del> 3719</td>
                      </tr>
                      <tr>
                        <td>1,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">5820</del> 2,000</td>
                      </tr>
                      <tr class="alternate">
                        <td>2,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">6920</del> 4,000   </td>
                      </tr>
                      <tr>
                        <td>3,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> <del style="color:#F00;">8180</del> 6,000   </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
               
                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 11.27" X 8.69" (A4)
                  <div><strong>Media</strong> : Premium Paper - 100 GSM Executive bond       
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on one side; back side left blank (white)
                  <br />
                  <strong>Delivery</strong> : 5 days + time taken by courier service
                  
                </div>  </div>
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="lh_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Letterheads with that sleek professional look!</h3>
              <p>Your letterheads has as many recipients as the content it is used for. From customers proposals and invoices, to official documents and appointment letters; letterheads lend that air of gravitas to your business. Printo offers an nicredible value by delivering letterheads that are pritned on premium  executive bond paper for that truly professional look. </p>
              <p>
              At under Rs.2 per letterhead, Printo's letterheads have been an industry leading product, making it easy for all businesses to carry that professional halo. Browse the site for matching envelopes or the latest combo offers on letterheads. </p>
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
