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
          <li class="last" >Poster</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2>Design Assist<span></span></h2>
            <div class="prod-infos">
              <p class="head">Create you <em>Identity</em>...</p>
              <ul class="infos">
                <li>Create Corporate Identity</li>
                <li>Already have a file, we will make it print ready.</li>
                <li>Clean and simple designs.</li>
                <li>Get the final source file in CDR and PDF.</li>
               
               </ul>
              <div class="visuals" > <img src="images/poster.png" /> </div>
              <div class="visual-actions" >
                <!--<a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
                <!--<a href="cart_templates.php?pid=10" class="btn-green upload"><span><span>Pick a Design</span></span></a>-->
<!--                <a href="cart_user_files.php?pid=8" class="btn-green upload"><span><span>Order Now</span></span></a>
-->                <a href="product_poster_a4.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a></div>
            </div>
            <div class="product-details-tab" >
              <ul>
                <li><a href="#" id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
              </ul>
              <div class="tab-content" >
                <div id="tab01">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                      <tr>
                        <td width="110">Hours</td>
                        <td>Price (per hour; excludes taxes)</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1 hour</td>
                        <td><span class="WebRupee" style="padding:0; margin:0;">Rs 1000</span></td>
                      </tr>
                    </tbody>
                  </table>
                </div>                
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
