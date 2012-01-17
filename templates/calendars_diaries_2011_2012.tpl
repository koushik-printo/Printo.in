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
          <ul>
          <li class="first" ><a href="index.php" >Home</a></li>
          <li>Products</li>
          <li class="last" >Poster</li>
        </ul>
        </div>
      <div class="content-box-l" > {include file="left_nav.tpl"} </div>
      <div class="content-box-r" >
          <div class="inner-wrapper" >
          <div style="width:745px;*width:735px;float:left;position:relative;z-index:0;height:700px;">
              <div>
              <div>
                  <h2>10% off on Calendars and Diaries</h2>
                  <div class="prod-infos" style="position: relative;top: 10px;">
                  <div style="width:300px;height:200px;position:absolute;top:-10px;right:50px;text-align:right;" > <a href="corporate_calendars.php"><img src="images/corpo_cal1.png" height="200" border="0" /></a>
                      <p class="head" style="text-align:left; width:100%"><strong>Personalised Calendars</strong></p>
                      <ul>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Customised calendars with your company branding</li>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Sturdy stand with slick wiro binding, to last the year </li>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Easy to order; choose from standard size and design options</li>
                    </ul>
                      <br />
                      <a href="corporate_calendars.php" class="btn-green upload" style="width:150px; text-align:center; float:right;"> <span><span>Order Now</span></span></a> </div>
                  <div style="width:263px;height:200px;position:absolute;top:440px;right:450px;text-align:left;" >
                      <p class="head" style="text-align:left; width:100%"><strong>Image Personalised Calendars</strong></p>
                      <ul>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Name cleverly integrated with images. Makes a lasting impression.</li>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Choose from exciting images to create a unique gift.</li>
                    </ul>
                    </div>
                  <div style="width:263px;height:200px;position:absolute;top:370px;right:100px;text-align:right;" > <a href="corporate_calendarsdesign.php?pid=18"><img src="images/pips_promo.png" height="200" border="0" /></a> <br />
                      <br />
                      <br />
                      <a href="corporate_calendarsdesign.php?pid=18" class="btn-green upload" style="width:150px; text-align:center;  float:right;"><span> <span>Create my Design</span></span> </a> </div>
                  <div style="width:263px; height:200px; position:absolute; top:10px; right:450px; text-align:right;" > <a href="cart_templates.php?pid=16"><img src="images/diary.png" alt="Create Customised Diaries. 10% Off" height="200" border="0" /></a> <br />
                      <br />
                      <br />
                      <p class="head" style="text-align:left; width:100%"><strong>Personalised Diary</strong></p>
                      <ul>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Make a great gift as each diary is personalised with the user's name.</li>
                      <li style="color:#333;background:url(../images/bullets-dgray.gif) no-repeat left 4px;padding:0 0 10px 18px;line-height: 17px;text-align:left;">Easy to order; upload your cover design or choose from one of our designs.</li>
                    </ul>
                      <br />
                      <br />
                      <a href="cart_templates.php?pid=16" class="btn-green upload" style="width:150px; text-align:center;  float:center;"> <span>Create My Design</span></span> </a></div>
                </div>
                </div>
            </div>
            </div>
          <div class="xtra-content" style="padding:10px;" >
              <h3>Personalised & Customised Calendar and Diaries </h3>
              Printo's corporate Diaries and Calendars carry not just the brand of your company but they can be designed to carry the name of the recipient.
              <p> Put your customer's name on the Diary or Calendar and it no longer is a run-of-the-mill corproate gift. If you are using this for your team, it is a great way to keep the uniqueness while keeping the homogeneity of the corporate brand.
            <p> Printo's customisation options include creating your corporate brand on the cover and company information on inner pages. You may create a customised cover (from our designs) or upload your own file. You can also order custom inserts that fit in snugly with the diary pages. These inserts can carry anything from your company profile and product literature (for customers) or best practices and codes of conduct (for your team). </p>
            </div>
        </div>
        </div>
    </div>
    </div>
</div>
  <div id="footer_frame" > {include file="bottom.tpl"} </div>
  </div>
{include file="footer.tpl"} 