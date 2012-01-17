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
          <li class="last" >Booklets</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>document <span>printing</span></h2>
            <div class="prod-infos">
              <p class="head">Documents with a sleek, professional look</p>
              <ul class="infos">
                <li>Neatly bound, colour and black & white documents</li>
                <li>Ideal for presentations and reports</li>
                <li>Easy to order; shipped in 24 hours</li>
				<li>Upload your file through our enquiry form for a quote.</li>
              </ul>
              <div class="visuals flyerimg"> <img src="images/Booklets.png" /> </div>
              <div class="visual-actions" >
                <a href="product_documents.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a  id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Special Online Pricing</a></li>
                <li><a  id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a  id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="149">Quantity</td>
                        <td width="203">Price</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1 colour page</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 8 </td>
                      </tr>
                      <tr class="alternate">
                        <td>1 b/w page</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Re.</span> 1 </td>
                      </tr>
                                           <tr>
                        <td>Spiral binding per book</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 20</td>
                      </tr>
                      <tr class="alternate">
                        <td>Wiro binding per book</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 35 </td>
                      </tr>
                       <tr>
                        <td colspan="2">NB: The above prices are only for purchases made online. Our retail store prices vary from our online prices. Please call (080) 400 20 200 for our current retail prices.</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
 
 				<div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : A4 (8.27" x 11.69")
                  <div><strong>Media</strong> : Paper - 90 GSM  (more options coming soon!)     
                  <br />
			<strong>  Printing</strong> : Production grade, digital colour or laser printing (single or double sided printing)
                  <br />
                  <strong>Delivery</strong> : 24 hours + time taken by courier service
                  
                </div>
                
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="dp_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Adding that professional touch to your reports & documents </h3>
              <p>While content may always rule over form, a professionally printed and bound document can make a huge difference. Impressing your clients and team with a sparkling presentation is now easy. Printo can help you with vibrant, full colour reports, presentations or product catalogues with no minimum quantity hassles. Why print elsewhere when we offer the power of print and bind right at your fingertips? </p>
              <p> Outer covers is translucent PVC and the back cover is opague plastic. Three binding options are available currently. Choose spiral for a basic finish  and for bulky documents. Wiro binding is for a slicker, premium feel.<br />
              </p>
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
