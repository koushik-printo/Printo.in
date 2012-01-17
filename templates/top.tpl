<div id="btn-feedback"> <a href="#" onclick='OpenLightBox()'><img src="images/btn-feedback.jpg" width="38" height="102" id="mydd" /></a></div>
{literal} 
<script type="text/javascript" src="js/comp/general/jquery.main.top.js"></script> 
{/literal}
<div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<div id="fscr">
  <div id="feedback-form">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="fscrTable">
      <tr>
        <td><table width="100%" border="0" cellspacing="20" cellpadding="0">
            <tr>
              <td width="90" align="left"><span class="float-left"><img src="images/logo-feedback.jpg" style="border:none; box-shadow:none;" /></span></td>
              <td><h2 style=" margin-bottom: 0px;
    padding: 0 0 0 0;">Feedback <span>Please</span></h2></td>
              <td align="right"><span class="btn-close float-right"><a href="#" onclick='CloseLightBox()'><img src="images/cross.png" height="30" style="border:none; box-shadow:none; position:absolute; margin:-25px 0px 0px 5px;" /></a></span></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td bgcolor="#dedede"><table width="100%" border="0" cellspacing="20" cellpadding="0">
            <tr>
              <td><div>
                  <ul id="tabmenu">
                    <li><a href="#" id="form-tab1" class="active" onclick="formtab(1)">Our (beta) Website</a></li>
                    <li><a href="#" id="form-tab2" onclick="formtab(2)" class="">Our Stores</a></li>
                    <div style="clear:both"></div>
                  </ul>
                  <div class="tab-content">
                    <div id="form-con1" style="display: block; ">
                      <form id="formtop" name="formtop" method="post" action="feedback.php?t=Website" onsubmit="return checkfeedback('w');" >
                        <table width="100%" border="0" cellspacing="10" cellpadding="0">
                          <tr>
                            <td width="240" align="right"><strong>Feedback Type</strong></td>
                            <td><ul class="radio">
                                <li id="rd1" onclick="radio(1)">Complaint</li>
                                <li id="rd2" onclick="radio(2)">Question</li>
                                <li id="rd3" onclick="radio(3)">Idea</li>
                                <li id="rd4" onclick="radio(4)">Praise</li>
                                <div style="clear:both;"></div>
                              </ul>
                              <input type="hidden" value="" id="feedbackType" name="feedbackType"></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Summary / Subject</strong></td>
                            <td><input type="text" name="topTitle" id="topTitle" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Description</strong></td>
                            <td><textarea name="topdescription" id="topdescription" cols="45" rows="5" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px;"></textarea></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Your Name</strong></td>
                            <td><input type="text" name="topName" id="topName" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Your Email</strong></td>
                            <td><input type="text" name="topEmail" id="topEmail" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Mobile No.</strong></td>
                            <td><input type="text" name="topMobile" id="topMobile" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr  align="right">
                            <td align="right">&nbsp;</td>
                            <td align="right"><input type="submit" name="button" id="button" value="Submit" style="background:none; padding:0; margin:0; background-color:#6840a0; border:none; border-radius:4px; width:100px; height:36px; line-height:36px; color:#FFF; font-weight:bold; cursor:pointer;" /></td>
                          </tr>
                        </table>
                      </form>
                    </div>
                    <div id="form-con2" style="display:none; ">
                      <form id="formtop1" name="formtop1" method="post" action="feedback.php?t=Store" onsubmit="return checkfeedback('s');" >
                        <table width="100%" border="0" cellspacing="10" cellpadding="0">
                          <tr>
                            <td width="120" align="right"><strong>Feedback Type</strong></td>
                            <td><ul class="radio">
                                <li id="rd21" onclick="radio2(1)">Complaint</li>
                                <li id="rd22" onclick="radio2(2)">Question</li>
                                <li id="rd23" onclick="radio2(3)">Idea</li>
                                <li id="rd24" onclick="radio2(4)">Praise</li>
                                <div style="clear:both;"></div>
                              </ul>
                              <input type="hidden" value="" id="feedbackType1" name="feedbackType"></td>
                          </tr>
                         
                            <td align="right"><strong>Store Name</strong></td>
                            <td><label for="textfield2"></label>
                              <input type="text" name="storeName" id="storeName" value="" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Subject</strong></td>
                            <td><input type="text" name="topTitle" id="topTitle1" value="" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Description</strong></td>
                            <td><textarea name="topdescription" id="topdescription1" cols="45" rows="5" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px;"></textarea></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Your Name</strong></td>
                            <td><input type="text" name="topName" id="topName1" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Your Email</strong></td>
                            <td><input type="text" name="topEmail" id="topEmail1" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr>
                            <td align="right"><strong>Mobile No.</strong></td>
                            <td><input type="text" name="topMobile" id="topMobile1" style="background:none; padding:0; margin:0; background-color:#f5f5f5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" value="" /></td>
                          </tr>
                          <tr  align="right">
                            <td align="right">&nbsp;</td>
                            <td align="right"><input type="submit" name="button2" id="button2" value="Submit" style="background:none; padding:0; margin:0; background-color:#6840a0; border:none; border-radius:4px; width:100px; height:36px; line-height:36px; color:#FFF; font-weight:bold;" /></td>
                          </tr>
                        </table>
                      </form>
                    </div>
                  </div>
                </div></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
</div>
<div id="header_content_wrapper" >
  <h1 class="logo" style="position:relative;" ><a href="/">Printo</a>
    <div class="beta float-right" style="font-family: Arial, Helvetica, sans-serif;
position:absolute; top:0; right:-25px;
font-size: 12px;
line-height: 33px;
text-align: right;
text-transform: lowercase;
font-weight: normal;"> &beta;eta </div>
  </h1>
  <div class="call_text">
  <span><img src="images/icon_phone.png" style="padding-right:8px; margin-bottom:-3px;"/></span>Now simply call us on : <span class="style1">+91 (080) 6741 7995</span></div>
  {if $sessuid ne ''}
  <div class="user-login-box float_left">{$sessuname}</div>
  {/if}
  <div class="clear_both"></div>
  <div id="nav"  style="overflow:visible;"  >
    <ul class="main" >
      <li class="home" ><a href="index.php" class="{$nav_home}">Home</a></li>
      <li class="home" ><a href="#" >Products</a>
        <div class="product-menu">
          <ul class="float-left first">
            <li><b>Business Stationery</b></li>
            <br />
            <li><a href="Business_cards_single.php">Business Cards (Single-sided)</a></li>
            <li><a href="business_cards_double.php">Business Cards (Double-sided)</a></li>
            <li><a href="letter_heads.php">Letterheads</a></li>
            <li><a href="envelopes.php">Envelopes</a></li>
            <li><a href="id_card.php">ID Cards</a></li>
            <li><a href="documents.php"> Documents</a></li>
            <br />
            <li><b>Signage &amp; Posters</b></li>
            <br />
            <li><a href="poster_a4.php" >Large Prints / Posters</a></li>
            <li><a href="standee_indoor.php" >Standees - Indoor</a></li>
            <li><a href="standee_outdoor.php" >Standees - Outdoor</a></li>
            <li><a href="poster_mounted.php">Display Graphics</a></li>
          </ul>
          <ul class="float-left">
            <li><b>Marketing</b></li>
            <br />
            <li><a href="flyers_a5.php" >Flyers - Regular</a></li>
            <li><a href="flyers_a4.php" >Flyers</a></li>
            <li><a href="flyers_a4_rack.php" >Info Leaflets</a></li>
            <li><a href="brochures_a4.php" >A4 Brochures</a></li>
            <li><a href="brochures_a5.php" >A5 Brochures</a></li>
            <li><a href="brochures_a4_2fold.php" >Brochures (3 Panel)</a></li>
            <br />
            <li><b>Calendars &amp; Diaries</b></li>
            <br />
            <li><a href="corporate_calendars.php">Corporate Calendars&nbsp;<sup style="color:#F00; font-size:xx-small;">New</sup></a></li>
            <li><a href="corporate_dairies.php">Corporate Diaries&nbsp;<sup style="color:#F00; font-size:xx-small;">New</sup></a></li>
            <li><a href="corporate_pipscalendars.php">Image Personalised Calendar<sup style="color:#F00; font-size:xx-small;">New</sup></a></li>
          </ul>
          <ul class="float-left">
            <li><b>Personalised Gifts</b></li>
            <br />
            <li><a href="http://gifts.printo.in/store/framease/create" target="_blank" >Framease (Photo Frames)</a></li>
            <li><a href="http://gifts.printo.in/store/canvas/create" target="_blank" >FotoArts (Canvas Prints)</a></li>
            <li><a href="http://gifts.printo.in/store/mugs/create" target="_blank" >Mugs</a></li>
            <li><a href="http://gifts.printo.in/store/tshirt/create" target="_blank" >T-Shirts</a></li>
            <li><a href="http://gifts.printo.in/store/desk_calendar/create" target="_blank" >Desktop Calendars</a></li>
            <li><a href="http://gifts.printo.in/store/photoprints/create" target="_blank" >Photo Prints</a></li>
            <li><a href="http://gifts.printo.in/store/greeting_card/create" target="_blank" >Greeting Cards</a></li>
            <br />
            <li><b>Custom Printing</b></li>
            <br />
            <li><a href="request_quote.php">Request a quote</a></li>
          </ul>
          <div class="clear-both"></div>
        </div>
      </li>
      <!--   <li><a href="http://gifts.printo.in" target="_blank" class="{$nav_gi}"  >Gifting Ideas</a></li>-->
      <!--<li><a href="business.php" class="{$nav_bs}" >Corp. Solutions</a></li>-->
      <li><a href="locations.php"  class="{$nav_sl}"  ><span>Store</span></a></li>
      <li><a href="#"  class="{$nav_sl}"  onclick="OpenLightBox();" >Feedback</a></li>
    </ul>
    <ul class="account" style="overflow:visible;" >
      {if $sessuid ne ''}
      <li><a href="user_dashboard.php" onmouseout="MM_menuStartTimeout(1000);" onmouseover="MM_menuShowMenu('MMMenuContainer0630104314_0', 'MMMenu0630104314_0',0,24,'index_r2_c2');" class="last my-account">My Account</a>
        <div id="MMMenuContainer0630104314_0" style="overflow:visible;">
          <div id="MMMenu0630104314_0" onmouseout="MM_menuStartTimeout(1000);" onmouseover="MM_menuResetTimeout();"> <a href="user_profile.php" id="MMMenu0630104314_0_Item_0" class="MMMIFVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');"> Update&nbsp;Profile </a> <a href="user_orders.php" class="MMMIFVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');"> My Order </a> <a href="user_changepassword.php" id="MMMenu0630104314_0_Item_1" class="MMMIVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');"> Change&nbsp;Password </a> <a href="user_logoff.php" id="MMMenu0630104314_0_Item_2" class="MMMIVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');"> Logoff </a> </div>
        </div>
      </li>
      <li><a href="user_files.php" class="last my-account">My Files({$my_files})</a> </li>
      {else}
      <li><a href="user_login.php" class="last my-account" ><span>Login</span></a><!--<a href="user_registration.php" ><span>Register</span></a> --></li>
      {/if}
      <li><a href="viewcart.php" class="cart" ><span>Cart({$total_item})</span></a></li>
    </ul>
  </div>
  <!-- BEGIN Comm100 Live Chat Button Code -->
     <!--   <link href="js/lib/livechat/comm100_livechatbutton.css" rel="stylesheet" type="text/css"/>
        <a href="http://www.comm100.com/livechat" target="_blank" onclick="comm100_122771.openChatWindow(event,1402,-1);return false;" style="z-index:0;"><img style="border:0px" id="comm100_ButtonImage" src="https://chatserver.comm100.com/BBS.aspx?siteId=122771&amp;planId=1402&amp;partnerId=-1"></img></a>
        <script src="https://chatserver.comm100.com/js/LiveChat.js?siteId=122771&amp;planId=1402&amp;partnerId=-1" type="text/javascript"></script>
        <div id="comm100_ChatButton" >
        <div id="comm100_warp">
        <div id="comm100_dvhelp">
        <div id="comm100_track"><b>Live Chat</b> by <a style="color:#009999;cursor:pointer;" onclick="javascript:document.getElementById('comm100_dvbox').style.display='';">Comm100</a></div>
        </div>
        </div>
        </div>
        
        -->
  <!-- End Comm100 Live Chat Button Code --> 
</div>
<div class="header_frame_shadow" ></div>
