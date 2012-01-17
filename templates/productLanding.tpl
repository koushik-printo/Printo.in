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
	<!--Top Part start Here -->
  		<div id="header_frame" >
    {include file="top.tpl"}
  </div>
  	<!--Top Part End Here -->	
  		<div id="content_frame" >
        
			<!--Main Context Box Start Here -->
			<div class="content-box-main" >
				<!--Showing the navigation Start-->
					<div class="breadcrumb" >
						<ul>
							<li class="first" ><a href="index.php" >Home</a></li>
							<li>Products</li>
							<li class="last" >Business Card</li>
                            <div class="clear_both"></div>
						</ul>
					</div>
				<!--Showing the navigation End-->
                
                <!--Left Panel Start Here-->	
					<div class="content-box-l" >
        				{include file="left_nav.tpl"}
      				</div>
      			<!--Left Panel End Here-->
                
                <!--Body context Start Here-->	
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Business <span>Cards</span></h2>
            <div class="prod-infos">
              <p class="head">Business cards that mean business! </p>
              <ul class="infos">
                <li>Choose from our designs options or upload your own print file.</li>
                <li>Vibrant colours on high grade paper.</li>
                <li>Super quick! Cards dispatched within 48 hours.</li>
              </ul>
              <div class="visuals" > <img src="images/business-card-2.png" /> </div>
              <div class="visual-actions" > <a class="btn-blue" href="cart_templates.php?pid=1" ><span><span>Pick A Design</span></span></a> <a href="cart_user_files.php?pid=1" class="btn-green upload"><span><span>Upload your design</span></span></a> </div>
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
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 150 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 250 + Taxes</td>
                      </tr>
                      <tr>
                        <td>300</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 350 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>400</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 450 + Taxes</td>
                      </tr>
                      <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 550 + Taxes</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 3.5" X 2"
               
                  <div><strong>Media</strong> : Paper - 300 GSM Digital Ivory card stock with single-sided print. More options coming soon.     
			<strong>  Printing</strong> : Full colour 
                  <strong>Delivery</strong> : 48 hours + time taken by courier / shipping service
                  
                </div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="bc_artwork_specification.tpl"}
                </div>
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Why our Business Cards mean business!</h3>
              <p>Create great first impressions with business cards from Printo. Choose from a range of exciting designs or simply upload your artwork. Our business cards are printed on premium 300 GSM Digital Ivory card stock. You can order in multiples of 100 and have them ready to be delivered in 48 hours!</p>
</div>
          </div>
        </div>
      </div>
			</div>
            	<!--Body context End Here-->
			</div>
            <!--Main Context Box End Here -->
        </div>
  
  <!--Bottom Part Start Here-->
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
  <!--Bottom Part End Here-->
</div>

{include file="footer.tpl"}
