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
          <li class="last">Indoor Standee</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Indoor <span>Standee </span></h2>
            <div class="prod-infos">
              <p class="head">Out-standing visibility. Literally!</p>
              <ul class="infos">
                <li>Vibrant 6 colour printing</li>
                <li>Printed on non tear-able PET film</li>
                <li>Re-usable aluminium base</li>
                <li>Door delivery in 7 days*</li>
              </ul>
              <div class="visuals" > <img src="images/standee.png" /> </div>
              <div class="visual-actions" > <!--<a class="btn-blue" href="cart_templates.php?pid=12" ><span><span>Browse Templates</span></span></a> --> <a href="cart_user_files.php?pid=12" class="btn-green upload"><span><span>Upload your design</span></span></a> </div>
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
                        <td>1</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2400 + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>2</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 4800  + Taxes</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 7200  + Taxes</td>
                      </tr>
                      <tr class="alternate">
                        <td>4</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 9600  + Taxes</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 12000  + Taxes</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                  <!--<p>3.5" X 2"</p>-->
                  <div>6 colour dye based ink prints – single side Non tear-able PET film media 5' X 2' print area Laminated for extra life Re-usable aluminium roll-up base </div>
                </div>
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="st_artwork_specification.tpl"}
                </div>
                
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3>Attention-arresting banners with vibrant photo quality prints.</h3>
              <p>Ideal for indoor promotions, exhibitions, parties, as temporary signages etc. Vibrant 6 colour prints on Non tear-able PET film –high quality, high durability. Lightweight, strong & easy to carry aluminium roll-up base – for stability & durability. Great values for money - easily remove your print and install a new one!</p>
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
