{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" >
          <!--slider start-->
          <div class="home-sliders" >
            <div class="slide job-processed"><a href="brochures.php"><img src="images/transperent.png" border="0" /></a></div>
            <div class="slide fres-shipping"><a href="business_cards.php"><img src="images/transperent.png" border="0" /></a></div>
            <div class="slide fres-colours"><a href="flyers.php"><img src="images/transperent.png" border="0" /></a></div>
            <div class="slide fres-bw"><a href="documents.php"><img src="images/transperent.png" border="0" /></a></div>
          </div>
          <div class="home-banner-tr" ><a href="request_quote.php"><img src="images/img_banner_callus.jpg" border="0" /></a></div>
          <!--slider end-->
          <!--products start-->
          <div class="products box-style-light-gray" >
            <h3>most Popular Products</h3>
            <div class="product business-card" >
              <h4>Business Cards</h4>
              <!--<span class="price">400 Cards @ Rs.250</span>
              <p >Lorem Ipsum is simply dummy text of the printing </p>-->
              <span class="product-image"><a href="business_cards.php"><div style="height: 150px; width: 210px;">&nbsp;</div></a></span><a class="btn-green" href="business_cards.php"><span>Buy</span></a> <a class="orange" href="business_cards.php">100 cards @ <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 99!</a></div>
            <div class="product letter-heads" >
              <h4>Letter Heads</h4>
              <!--<span class="price">400 Cards @ Rs.250</span>
              <p >Lorem Ipsum is simply dummy text of the printing </p>-->
              <span class="product-image"><a  href="letter_heads.php"><div style="height: 150px; width: 210px;">&nbsp;</div></a></span> <a class="btn-green"  href="letter_heads.php"><span>Buy</span></a> <a class="orange" href="letter_heads.php">Letterheads @ <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1.85 each</a></div>
            <div class="product flyers" >
              <h4>Flyers</h4>
              <!--<span class="price">400 Cards @ Rs.250</span>
              <p >Lorem Ipsum is simply dummy text of the printing </p>-->
              <span class="product-image" ><a  href="flyers.php"><div style="height: 150px; width: 210px;">&nbsp;</div></a></span> <a class="btn-green" href="flyers.php"><span>Buy</span></a> <a class="orange" href="flyers.php">Flyers @ <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 1.90 each</a></div>
            <div class="product brochures" >
              <h4>Brochures</h4>
              <!--<span class="price">400 Cards @ Rs.250</span>
              <p >Lorem Ipsum is simply dummy text of the printing </p>-->
              <span class="product-image" ><a href="brochures.php"><div style="height: 150px; width: 210px;">&nbsp;</div></a></span> <a class="btn-green"  href="brochures.php"><span>Buy</span></a> <a class="orange" href="brochures.php">Brochures @ <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 50 each</a></div>
            <div class="product standee" >
              <h4>standee</h4>
              <!--<span class="price">400 Cards @ Rs.250</span>
              <p >Lorem Ipsum is simply dummy text of the printing </p>-->
              <span class="product-image" ><a href="standee.php"><div style="height: 150px; width: 210px;">&nbsp;</div></a></span> <a class="btn-green"  href="standee.php"><span>Buy</span></a> <a class="orange" href="standee.php">Standee @ <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 2400 each</a></div>
            <div class="product documents" >
              <h4>Documents</h4>
              <!--<span class="price">400 Cards @ Rs.250</span>
              <p >Lorem Ipsum is simply dummy text of the printing </p>-->
              <span class="product-image" ><a href="documents.php"><div style="height: 150px; width: 210px;">&nbsp;</div></a></span> <a class="btn-green"  href="documents.php"><span>Buy</span></a><a class="orange" href="documents.php"><span>Starts @ <span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 	175</span></a></div>
          </div>
          <!--products end-->
          <!--bottom boxes-->
          <div class="bottom-boxes" >
            <div class="business-package" >
              <!--<a class="btn-blue get-kit" href="infrastructure.php" ><span>Find out more</span></a> --></div>
            <div class="xtra-options learn-print" ><a href="learn.php"><img src="images/bottom-left.jpg" width="208" height="170" border="0" /></a></div>
          </div>
          <!--bottom boxes end-->
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>
{literal}
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script> 
<script type="text/javascript" >
		
		$(function(){		
			$('.home-sliders').before('<ul id="slider_nav">').cycle({
		    fx:     'scrollHorz',		  
		    after:   onAfter,
		    timeout: 5000,
		    prev:   "#slider_prev",
		    next:   "#slider_next",
		    speed:1000,
		    pager:"#slider_nav"		    
		});
			
		});
		
		function onAfter(){
			
		}
		
	</script>
{/literal}
{include file="footer.tpl"}
