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
							<li class="last" ><span>Business Cards</span> (double sided)</li>
                            <div class="clear_both"></div>
						</ul>
						
					</div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
             <h2>Business Cards<span> (double sided)</span></h2>
            <div class="prod-infos">
              <p class="head">Double your first impression!</p>
              <ul class="infos">
                <li>Easy to order; Upload your file in PDF or any other format</li>
                   <li>Printed on <strong>both</strong> sides; premium quality Digital Ivory paper</li>
                   <li>Shipped within 24 hours (Mon-Sat)</li>
              </ul>
              <div class="visuals" > <img src="images/business-card-2side.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
               <!-- <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
                <a href="cart_user_files.php?pid=2" class="btn-green upload"><span><span>Upload your design</span></span></a>
                <!--<a href="product_business_cards_double.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a>--></div>
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
                        <td>Price (Excludes Taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 300 </td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 500 </td>
                      </tr>
                      <tr>
                        <td>300</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 700 </td>
                      </tr>
                      <tr class="alternate">
                        <td>400</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 900 </td>
                      </tr>
                      <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1100 </td>
                      </tr>
                                            <tr class="alternate">
                        <td>1,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2,000 </td>
                      </tr>

                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 3.5" X 2"
                  <div><strong>Media</strong> : Paper - 300 GSM Digital Ivory card stock with single-sided print. (More options coming soon!)     
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides
                  <br />
                  <strong>Delivery</strong> : 24 hours + time taken by courier service
                  
                </div> </div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="bcd_artwork_specification.tpl"}
                </div>
              </div>
            </div>
           <div class="xtra-content" >
              <h3>Why double-sided cards make a lot of sense!</h3>
              <p>Your business cards is your first introduction to the outside world. So why not make the maximum of the real estate on the few square inches of paper you are handing out. Choose from a range of exciting designs or simply upload your design file. Our business cards are printed on premium 300 GSM Digital Ivory card stock, which ensures consistency each time your re-order. Please read through the specifications for double sided cards as some designs may be tricky to reproduce. </p>
<p>We not only make your ordering process easy, we deliver super fast. All business cards are shipped within 24 hours of receiving your order. Shipping charges apply based on your location. You can order in multiples of 100. So go ahead and give us a try!</p>
 
<strong>Ordering cards for multiple names? </strong><br /> For customers who need to order multiple names for the same card design, we have a solution. Printo will be happy to process the artwork if you can send us two files:
<ol>
  <li> Your business card design in an open file. An open file is one where each field can be changed and is generally in a Corel Draw, Illustrator or similar format. It definitely is NOT a .JPG or .GIF. </li>
  <li> An XL file with each of the fields (Name, Phone No., Email, etc.) in a separate column.</li>
</ol>
Or, simply fill out our detailed <a href="request_quote.php"><strong>detailed enquiry form </strong> </a>and we'll revert to you, printo!. 
  
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
