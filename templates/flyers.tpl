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
          <li class="last" >A4 Flyers</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>A4 <span>Flyers </span></h2>
            <div class="prod-infos">
              <p class="head">A flying start to your marketing campaigns</p>
              <ul class="infos">
                <li>Full colour double sided prints</li>
                <li>90 GSM art paper</li>
                <li>Glossy finish</li>
              </ul>
              <div class="visuals flyerimg" > <img src="images/flyer.png" /> </div>
              <div class="visual-actions" > <!--<a class="btn-blue" href="cart_templates.php?pid=13" ><span><span>Browse Templates</span></span></a> --> <a href="cart_user_files.php" class="btn-green upload"><span><span>Upload your design</span></span></a> </div>
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
                        <td>2000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 3800 + taxes X No of units</td>
                      </tr>
                      <tr class="alternate">
                        <td>4000</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 7600  + Taxes</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                  <p>A4 size full colour</p>
                  <div>90 GSM Glossy Art Paper Back to back printing</div>
                </div>
                
                  <div id="tab03" class="proUpload" style="display:none;">
                {include file="fl_artwork_specification.tpl"}
                </div>
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>High-quality flyers @ a great price!</h3>
              <p>High quality full colour flyers for your mass marketing campaigns! Vibrant full colour prints guaranteed to create great marketing impact @ lower than ever before prices. Print on both sides – guaranteed visibility for all your content.</p>
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
