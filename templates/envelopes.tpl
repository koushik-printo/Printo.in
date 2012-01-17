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
          <li class="last">Envelopes</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Envelopes<span></span></h2>
            <div class="prod-infos">
              <p class="head">Let your brand deliver your letters!</p>
              <ul class="infos">
               <li>Easy to order; choose from our designs or upload your file</li>
                   <li>Highly durable, premium 90 GSM paper</li>
                   <li>Shipped within 4 days (Mon-Sat)</li>
                   
              </ul>
              <div class="visuals_two" > <img src="images/emvelopes.png" style="margin-top:30px;"/> </div>
              <div class="visual-actions" >
                <a class="btn-blue" href="cart_templates.php?pid=10" ><span><span>Pick a Design</span></span></a>
               	<a href="cart_user_files.php?pid=10" class="btn-green upload"><span><span>Upload your design</span></span></a>
                <!--<a href="product_envelopes.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a>--></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a  id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a " id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a  id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
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
                        <td>500</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6,300</td>
                      </tr>
                      <tr class="alternate">
                        <td>1,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 6,910  </td>
                      </tr>
                      <tr>
                        <td>2,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 7,820  </td>
                      </tr>
                      <tr class="alternate">
                        <td>3,000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 9,310  </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
               <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : 9.5" X 4.25"
                  <div><strong>Media</strong> : Paper - 90 GSM white base stock (more options coming soon!)     
                  <br />
			<strong>  Printing</strong> : Production grade, full colour printing on both sides 
                  <br />
			<strong>  Feature</strong> : Standard with side flap and no windows; (can be used in office printers) 
                  <br />
                  <strong>Delivery</strong> : 4 working days + time taken by courier service
                  
                </div></div>
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="en_artwork_specification.tpl"}
                </div>
                
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Let your brand arrive before your documents!</h3>
              <p>Without a doubt, a matching envelope is what adds the final finishing touch to your letters. Impress your clients with truly professional letters, quotations or invoices.  No more plain and boring envelopes - order your matching set today!</p>
              <p>
              Envelopes need to be a size larger than your standard A4 sized documents. You may choose to design your envelopes yourself, in which case please go through our specifications and download a sample file to help you with the layout and dimensions.
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
