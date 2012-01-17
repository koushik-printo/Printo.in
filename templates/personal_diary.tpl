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
          <li class="last" >Customised Dairies<span></span></li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Corporate <span>Diaries</span></h2>
            <div class="prod-infos">
              <p class="head">Diaries that are customised &amp; <u>personalised</U>! </p>
              <ul class="infos">
                <li>Make a great gift as each diary is personalised with the user's name</li>
                   <li>Easy to order; upload your cover design or choose from one of our vibrant designs & attach your company logo</li>
                   <li>Carry corporate or product information through customisaed inserts</li>
              </ul>
              <div class="visuals" > <img src="images/corporate-dairy.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
                <a href="cart_templates.php?pid=16" class="btn-green upload"><span><span>Pick a Design</span></span></a>
            <a href="cart_user_files.php?pid=16" class="btn-green upload"><span><span>Order Now</span></span></a>
                
                
                <!--<a href="product_corporate_dairies.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a>--></div>
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
                        <td width="200">A5 Corporate Quantity</td>
                        <td>Price (excludes tax)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 300   </td>
                      </tr>
                      <tr class="alternate">
                        <td>25</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6,500   </td>
                      </tr>
                      <tr>
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 12,750   </td>
                      </tr>
                      <tr class="alternate">
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 24,000   </td>
                      </tr>
                      <tr >
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 46,500   </td>
                      </tr>
                  <!--    <tr class="alternate">
                        <td>500</td>
                    <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 63,000   </td>
                      </tr>-->
                      
                      <!--
                       <thead>
                      <tr>
                        <td width="110">B5 Executive Quantity</td>
                        <td>Price</td>
                      </tr>
                    </thead>
                      <tr>
                        <td>5</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1900   </td>
                      </tr>
                      <tr class="alternate">
                        <td>10</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 3500   </td>
                      </tr>
                      <tr>
                        <td>20</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6700   </td>
                      </tr>
                      <tr class="alternate">
                        <td>50</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 16300   </td>
                      </tr>
                      <tr class="alternate">
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 30300   </td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td>TBD</td>
                      </tr>
-->                    </tbody>
                  </table>
                </div>
               <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : A5 Corporate (8.27" x 5.83") and B5 Executive (9.84" x 6.93")<br />
                 <strong>Media</strong> : Inner sheets - 80 GSM, ruled paper;  Outer Cover : 675 GSM matt laminated paper; Inner PP tabs <br />
			<strong>  Printing</strong> : Production grade, full colour printing on outer (front and back) covers
                  <br />
			<strong>  Finishing</strong> : Machine punched; wiro binding in black or white wiro. Matt lamination for outer cover.                   <br />
			<strong>  Pages per Diary</strong> : 300 pages (150 sheets) + personal information and calendar sheets. Up to 8 additional inserts can be added.
                  <br />
                  <strong>Delivery</strong> : Lower quantities (up to 50) ship within 48 hours. Higher quantities need up to 5 working days. Time excludes that taken by courier service.
                  
                </div>
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="lh_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Personalised & Customised Corporate Diaries </h3>
              Printo's corporate diaries carry not just the brand of your company, they can be designed to carry the name of the recipient. <p>
              Put your customer's name on the diary and it no longer is a run-of-the-mill cor pro ate gift. If you are using this for your team, it is a great way to 
              keep the uniqueness while keeping the homogeneity of the corporate brand.  
              <p> 
              
              Printo's customisation options include creating your corporate brand on the cover and company information on inner pages. 
              You may create a customised cover (from our designs) or upload your own file. You can also order custom inserts that fit in snugly with the diary pages. 
              These inserts can carry anything from your company profile and product literature (for customers) or best practices and codes of conduct (for your team). </p>

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
