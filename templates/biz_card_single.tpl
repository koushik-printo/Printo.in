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
  <div id="header_frame" > {include file="top.tpl"} </div>
  <div id="content_frame" >
    <div class="content-box-main" >
      <div class="breadcrumb" > 
        
        <!--		<ul>
							<li class="first" ><a href="index.php" >Home</a></li>
							<li>Products</li>
							<li class="last" ><span>Business Cards</span> (single sided)</li>
                            <div class="clear_both"></div>
						</ul>--> 
        
      </div>
      <div class="content-box-l" > {include file="left_nav.tpl"} </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Business Cards<span> (single sided)</span></h2>
            <div class="prod-infos">
              <p class="head">Make a great first impression!</p>
              <ul class="infos">
                <li>Easy to order; Choose from our designs or upload yours</li>
                <li>Printed on Premium quality Digital Ivory paper</li>
                <li>Shipped within 24 hours (Mon-Sat)</li>
              </ul>
              <div class="visuals" > <img src="images/business-card-2.png" /> 
                
                <!-- bannner images goes here and its functionality also, please replace "visuals" div to copy paste in other pages
               
               please remove uppper image mentioned below;
               
               <img src="images/business-card-2.png" />
               
               
               
               --> 
                
                <!--  
               {literal}
               <style>
               #img1{display:block;}
			   #img2{display:none;}
			   #img3{display:none;}
			   .navigation ul li{float:left; cursor:pointer; padding:10px 10px 0 0 ;}
			   
               
               </style>
               
               <script language="javascript">
               
               function galleryshow(a){
				   
				   switch (a){
					case 1:
						document.getElementById("img1").style.display="block";
						document.getElementById("img2").style.display="none";
						document.getElementById("img3").style.display="none";
						break;
					case 2:
						document.getElementById("img1").style.display="none";
						document.getElementById("img2").style.display="block";
						document.getElementById("img3").style.display="none";
						break;
					case 3:
						document.getElementById("img1").style.display="none";
						document.getElementById("img2").style.display="none";
						document.getElementById("img3").style.display="block";
						break;
				   }
				   
			   }
               </script>
               {/literal}
               
               
               
               <div class="images-holder">
               		<div id="img1"><img src="images/gallery/large/bc-1.jpg" /></div>
                    <div id="img2"><img src="images/gallery/large/bc-2.jpg" /></div>
                    <div id="img3"><img src="images/gallery/large/bc-3.jpg" /></div>
               </div>
               <div class="navigation">
               	<ul>
                	<li onclick="galleryshow(1)"><img src="images/gallery/thumbs/bc-1.jpg" /></li>
                    <li onclick="galleryshow(2)"><img src="images/gallery/thumbs/bc-2.jpg" /></li>
                    <li onclick="galleryshow(3)"><img src="images/gallery/thumbs/bc-3.jpg" /></li>
                    <div style="clear:both"></div>
                    
                </ul>
               
               </div>
               --> 
                
                <!--       Banner images change functionality ends here              --> 
                
              </div>
              <div class="visual-actions" > 
                <!--<a class="btn-blue" href="biz_cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> --> 
                <a href="biz_cart_templates.php?pid=1" class="btn-green upload"><span><span>Pick a design</span></span></a>
                <!--<a href="product_business_cards_single.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a>--></div>
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
                        <td>Price (excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>100</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 175 </td>
                      </tr>
                      <tr class="alternate">
                        <td>200</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 275 </td>
                      </tr>
                      <tr>
                        <td>300</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 375 </td>
                      </tr>
                      <tr class="alternate">
                        <td>400</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 475 </td>
                      </tr>
                      <tr>
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 575 </td>
                      </tr>
                      <tr class="alternate">
                        <td>1,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1,025 </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;"> <strong> Size</strong> : 3.5" X 2"
                  <div><strong>Media</strong> : Paper - 300 GSM Digital Ivory card stock with single-sided print (more paper options available while checkout)<br />
                    <strong> Printing</strong> : Production grade, full colour printing on one side; back side left blank (white)<br />
                    <strong> Lamination/coating</strong> : Options for Matte/Glossy lamination. (Charges extra)<br />
                    <strong> UV spot Lamination</strong> : UV spot lamination available for Logo and Company name. (Charges extra)<br />
                    <strong>Delivery</strong> : 24 hours + time taken by courier service</div>
                </div>
                <div id="tab03" class="proUpload" style="display:none;"> {include file="bc_artwork_specification.tpl"} </div>
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Business cards that create a great impression!</h3>
              <p>Your business card is your first introduction to the outside world. So create a great first impression with business cards from Printo. Choose from a range of exciting designs or simply upload your own file. Our business cards are printed on premium 300 GSM Digital Ivory card stock, which ensures consistency each time you re-order. </p>
              <p>We not only make your ordering process easy, we deliver super fast. All business cards are shipped within 24 hours of receiving your order. Shipping charges apply based on your location. You can order in multiples of 100. If you have a large order with several names, we will be happy to help with the artwork. So go ahead and give us a try!</p>
              <strong>Ordering cards for multiple names? </strong><br />
              For customers who need to order multiple names for the same card design, we have a solution. Printo will be happy to process the artwork if you can send us two files:
              <ol>
                <li> Your business card design in an open file. An open file is one where each field can be changed and is generally in a Corel Draw, Illustrator or similar format. It definitely is NOT a .JPG or .GIF. </li>
                <li> An XL file with each of the fields (Name, Phone No., Email, etc.) in a separate column.</li>
              </ol>
              Or, simply fill out our detailed <a href="request_quote.php"><strong>detailed enquiry form </strong> </a>and we'll revert to you, Printo!. </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="footer_frame" > {include file="bottom.tpl"} </div>
</div>
{include file="footer.tpl"} 