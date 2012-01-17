{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{if $dell eq 'yes'}
<input type="hidden" id="dell" value="yes" />
{else}
<input type="hidden" id="dell" value="no" />
{/if}

{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type='text/javascript' src="js/main/jquery.easySlider1.5.js"></script>
<script type='text/javascript'>
$(function(){
	
	if($.browser.msie){
	$(".home-sliders").easySlider({
		speed: 			1500,
		pause:			3000,
		auto: true,
		continuous: true 
	});	
	$(".home-sliders").css('width','491px').css('height','218px');
	$("#nextBtn").remove();
	$("#prevBtn").remove();
	}
	
	});

</script>

{/literal}


 <div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<div style="width:1px; height:1px; display:none;" id="hiddenImg"></div>
<div id="base_frame" >
  <div id="header_frame" > {include file="top.tpl"} </div>
  <div id="content_frame" > 
     <div class="content-box-main" >
      <div class="content-box-l" > {include file="left_nav.tpl"} </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
        <div class="slider-banner"> 
          <!--slider start-->
          <div class="home-sliders" >
          <ul>
            <li><a href="corporate_calendars.php"><img src="images/sliders/CalendarSlider.jpg" border="0" /></a></li>
            <li><a href="corporate_dairies.php"><img src="images/sliders/DiarySliders.jpg" border="0" /></a></li>
            <li><a href="Business_cards_single.php"><img src="images/sliders/Bizcardslider.jpg" border="0"/></a></li>
          </ul>
            
           
          </div>
          <!--slider end--> 
          <!--banner start-->
          <div class="home-banner-tr" >
          <div align="center">
          <a href="request_quote.php"><img src="images/request-quote.png" width="80%" /></a><br /><br />
          <div id="Comm100_ChatButton"><a href="https://chatserver.comm100.com/ChatWindow.aspx?siteId=122771&planId=1401&visitType=1&byHref=1&partnerId=-1" target="_blank"><img id="comm100_EmailImage" src="https://chatserver.comm100.com/BBS.aspx?siteId=122771&planId=1401&partnerId=-1" border="0px" alt="Live Chat" width="175" /></a></div><br /><strong>or Call us on <i style="color:#F00;">+91 - 99027 80000</i><br /><font size="-2">(9:00 am to 7:00 pm India time;<br />Mon-Sat)</font></strong></div>
          </div>
          <!--banner end-->
          </div>
          <!--products start-->
          <div class="products box-style-light-gray" >
            <h3 style="margin-left:4px;">most Popular Products</h3>
            <div class="product business-card" >
              <h4>Business Cards</h4>
              <span class="product-image"><a href="Business_cards_single.php">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span><a class="btn-green" href="Business_cards_single.php"><span>Buy</span></a> <a class="orange" href="Business_cards_single.php"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 275 for 200</a></div>
            <div class="product standee" >
              <h4>Diaries</h4>
              <span class="product-image" ><a href="corporate_dairies.php">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="corporate_dairies.php"><span>Buy</span></a> <a class="orange" href="corporate_dairies.php"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 295 onwards</a></div>
              
            <div class="product documents" >
              <h4>Calendars</h4>
              <span class="product-image" ><a href="corporate_calendars.php">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="corporate_calendars.php"><span>Buy</span></a><a class="orange" href="documents.php"> <span class="WebRupee" style="padding:0; margin:0;">Re.</span> 355 onwards</a> </div>
            
            
            <div class="product brochures" >
              <h4>Brochures</h4>
              <span class="product-image" ><a href="brochures_a4.php">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="brochures_a4.php"><span>Buy</span></a> <a class="orange" href="brochures_a4.php"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 900 for 25</a></div>
            <div class="product letter-heads" >
              <h4>Letter Heads</h4>
              <span class="product-image"><a  href="letter_heads.php">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="letter_heads.php"><span>Buy</span></a> <a class="orange" href="letter_heads.php"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2,000 for 1,000</a></div>
              
            <div class="product flyers" >
              <h4>Flyers (Small)</h4>
              <span class="product-image" ><a  href="flyers_a5.php">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green" href="flyers_a5.php"><span>Buy</span></a> <a class="orange" href="flyers_a5.php"><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1,900 for 2,000</a></div>
            <div class="clear-both"></div>
            <div align="left"> <span>
              <h3 style="margin-left:4px;"> PERSONALISED GIFTS </h3>
              </span> </div>
            <div class="product framease" >
              <h4>Framease</h4>
              <span class="product-image" ><a href="http://gifts.printo.in/store/framease" target="_blank">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="http://gifts.printo.in/store/framease" target="_blank" ><span>Buy</span></a><a class="orange" href="http://gifts.printo.in/store/framease" target="_blank" > <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 295 per frame</a></div>
            <div class="product fotoarts" >
              <h4>T-Shirts</h4>
              <span class="product-image" ><a href="http://gifts.printo.in/store/tshirt" target="_blank">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="http://gifts.printo.in/store/tshirt" target="_blank"><span>Buy</span></a><a class="orange" href="http://gifts.printo.in/store/canvas" target="_blank"> <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 300 onwards</a></div>
            <div class="product mugs" >
              <h4>Mugs</h4>
              <span class="product-image" ><a href="http://gifts.printo.in/store/mugs" target="_blank">
              <div style="height: 150px; width: 210px;">&nbsp;</div>
              </a></span> <a class="btn-green"  href="http://gifts.printo.in/store/mugs" target="_blank"><span>Buy</span></a><a class="orange" href="http://gifts.printo.in/store/mugs" target="_blank"> <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 310 per mug</a></div>
            
          </div>
          <!--products end--> 
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" > {include file="bottom.tpl"} </div>
</div>
{literal} 
<script type="text/javascript" src="js/comp/general/jquery.main.index.js"></script> 
{/literal}
{include file="footer.tpl"} 