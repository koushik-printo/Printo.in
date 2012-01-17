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
          <li class="last"><span>Standee </span>Indoor</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Standees<span> (Indoors)</span></h2>
            <div class="prod-infos">
              <p class="head">Stunning indoor standees that look outstanding!</p>
              <ul class="infos">
                <li>Vibrant 6-colour printing for high impact</li>
                <li>Easy to asemble & carry; re-useable with new prints</li>
                <li>Shipped within 48 hours</li>
              </ul>
              <div class="visuals" > <img src="images/standee.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
               <!-- <a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
               <!-- <a href="cart_user_files.php?pid=12" class="btn-green upload"><span><span>Order Now</span></span></a>-->
                <a href="product_standee_indoor.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a  id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                <li><a  id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                <li><a  id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Size</td>
                        <td>Price (excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Regular (5' x 2')</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2,400 each </td>
                      </tr>
                      <tr class="alternate">
                        <td>Large (6.5' x 3')</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 3,200 each  </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="tab02" class="proSpec" style="display:none;">
                 <strong> Size</strong> : Two options - 5' x 2'  or  6.5' x 3' (print area in feet) <br />
                 <strong>Media</strong> : Non-tearable, longer lasting PET film media       
                  <br />
			<strong>  Printing</strong> : Production grade, 6 colour, dye based ink printing; single side  <br />
			<strong>  Finishing</strong> : Machine laminated for longer life; Comes mounted on to the standee frame; <br />
			<strong>  Other</strong> : Re-usable aluminium roll-up base with telescopic back support tube 
                  <br />
                  <strong>Delivery</strong> : Ship within 48 hours. Time excludes that taken by courier service.
                  
                </div>
                 
                
                <div id="tab03" class="proUpload" style="display:none;">
                {include file="st_artwork_specification.tpl"}
                </div>
                
                
              </div>
            </div>
            <div class="xtra-content" >
              <h3><span class="head">Indoor standees, outstanding results.</span></h3>
              <p>Whether it is for new product launches, promotional activities or for indoor events, Printo's standees provide the best of flexibility and convenience that a roll-up standee can offer. With photo-quality printing on non-tearable PET film, you are guaranteed to get teh best out of your promotional message and grab the attention your business deserves. Since indoor standees are to be viewed from a close distance, they are superior to outdoor standees in their sharpness, clarity and high quality reproduction.</p>
              <p> Standees have two components: (1)The actual print and (2)An easy to assemble base stand. The costs mentioned above include the standee and the printing.  We ship the standee with a carry bag and so you can easily carry it around. What&rsquo;s more, remove your print and install a new print for the next event in as few as 5 minutes. <br />
              </p>
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
