{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<!--<script type="text/javascript" src="js/jquery.min.js"></script> -->
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script> 
<link rel="stylesheet" href="css/customAlert.css">
<script src="js/jquery.cAlert.js"></script>
<script src="js/lightbox_comp2.js"></script>

<script language="javascript" type="text/javascript">

$(function(){
	
	
	if($.browser.msie){
	if(document.documentMode && document.documentMode < 8) {
		
		$("#tempList").css('width','820px');
		
		
		} 
	
	}
});



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
<script>
function mypr(){
	
	var a = document.getElementById('prlisting').value;
	if(a==2)
		{
		document.getElementById('a5_soft_pr').style.display='none';
		document.getElementById('a5_hard_pr').style.display='block';
		document.getElementById('b5_soft_pr').style.display='none';
		document.getElementById('b5_hard_pr').style.display='none';
		}else if(a==3){
		document.getElementById('a5_soft_pr').style.display='none';
		document.getElementById('a5_hard_pr').style.display='none';
		document.getElementById('b5_soft_pr').style.display='block';
		document.getElementById('b5_hard_pr').style.display='none';
		}else if(a==4){
		document.getElementById('a5_soft_pr').style.display='none';
		document.getElementById('a5_hard_pr').style.display='none';
		document.getElementById('b5_soft_pr').style.display='none';
		document.getElementById('b5_hard_pr').style.display='block';
		}else{
		document.getElementById('a5_soft_pr').style.display='block';
		document.getElementById('a5_hard_pr').style.display='none';
		document.getElementById('b5_soft_pr').style.display='none';
		document.getElementById('b5_hard_pr').style.display='none';
		}
		
	}
</script>
{/literal}
<div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<input type="hidden" name="hard" id="hard" value="<h3 style='font-size:11px;'>Hard Cover</h3>

<!--<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:11px;&quot;>Size : 5.5&quot; x 5.5&quot;</span>-->" />

<input type="hidden" name="inside" id="inside" value="<h3 style='font-size:11px;'>Inside Pages</h3>

<!--<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:11px;&quot;>Size : 10&quot; x 4&quot;</span>-->" />

<input type="hidden" name="soft" id="soft" value="<h3 style='font-size:11px;'>Soft Cover</h3>

<!--<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:11px;&quot;>Size : 8.26&quot; x 5.8&quot;</span>-->" />

<input type="hidden" name="wire_o" id="wire_o" value="<h3 style='font-size:11px;'>Sizes</h3>

<!--<span style=&quot;font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:11px;&quot;>Size : 8.26&quot; x 5.8&quot;</span>-->" />

<div style="width:1px; height:1px; display:none;">
<img src="images/mainProduct/Diary/Small/hardcover-big.png" style="width:1px; height:1px; display:none;"><img src="images/mainProduct/Diary/Small/Paper-big.jpg"  style="width:1px; height:1px; display:none;" ><img src="images/mainProduct/Diary/Small/softcover-big.png" style="width:1px; height:1px; display:none;"><img src="images/mainProduct/Diary/Small/wiro-big.jpg" style="width:1px; height:1px; display:none;"><img src="images/mainProduct/Diary/Large/hardcover-big.png" style="width:1px; height:1px; display:none;"><img src="images/mainProduct/Diary/Large/Paper-big.jpg"  style="width:1px; height:1px; display:none;" ><img src="images/mainProduct/Diary/Large/softcover-big.png" style="width:1px; height:1px; display:none;"><img src="images/mainProduct/Diary/Large/wiro-big.jpg" style="width:1px; height:1px; display:none;"><img src="images/mainProduct/Diary/diarymain.png" style="width:1px; height:1px; display:none;"><img src='images/cross.png'  style='width:1px; height:1px; display:none;'></div>

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >
				
					
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
        			<div class="content-box-r" >
        <div class="inner-wrapper" >
                  <div class="inner-page-content-l box-style-light-gray" >
                    <h2>Corporate <span>Diaries</span></h2>
                    <div class="prod-infos">
                      <p class="head">Diaries that are customised! </p>
                      <ul class="infos">
                        <li>Make a great gift as each diary is personalised with the user's name</li>
                           <li>Easy to order; upload your cover design or choose from one of our vibrant designs & attach your company logo</li>
                           <li>Carry corporate or product information through customised inserts</li>
                      </ul>
                      <div class="visuals" style="right:90px;"> <img src="images/mainProduct/Diary/diarymain.png"  style="margin: 50px -75px 0px 0px;"/> </div>
                      <div class="visual-actions" >
                     <!--   <a class="btn-blue" href="cart_templates.php?pid=11" ><span><span>Browse Templates</span></span></a> -->
                        <a href="cart_templates.php?pid=16" class="btn-green upload"><span><span>Pick a Design</span></span></a>
                      <a href="cart_user_files.php?pid=16" class="btn-green upload"><span><span>Upload Your Design</span></span></a>
                      <!--  <a href="product_corporate_dairies.php" class="btn-green upload"><span><span>Send Enquiry</span></span></a--></div>
                    </div>
                    <div style="margin:auto" id="tempList">
        <a href="#" ><img src="images/mainProduct/Diary/Small/hardcover-big.png" width="180" class="picimg" title="Click to enlarge"></a>&nbsp;&nbsp;<a href="#"><img src="images/mainProduct/Diary/Small/softcover-big.png" width="180" class="picimg" title="Click to enlarge"></a>&nbsp;&nbsp;<a href="#"><img src="images/mainProduct/Diary/Small/Paper-big.jpg"  width="180" class="picimg" title="Click to enlarge"></a>&nbsp;&nbsp;<a href="#"><img src="images/mainProduct/Diary/Small/wiro-big.jpg" width="180" class="picimg" title="Click to enlarge"></a>
        </div>
        
                    <div style="margin:auto; min-height:20px;">
                    <font style="position:relative; left:50px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Hard Cover</font>
                    <font style="position:relative; left:165px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Soft Cover</font>
                    <font style="position:relative; left:270px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Inside Pages</font>
                    <font style="position:relative; left:385px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Sizes</font>
                    </div>
        			<br />
                    <div class="product-details-tab" >
                      <ul>
                        <li><a href="javascript:void(0)" id="tab1" class="active" onclick="tabSwitch('tab1','tab2','tab3','tab01','tab02','tab03')">Pricing</a></li>
                        <li><a href="javascript:void(0)" id="tab2" onclick="tabSwitch('tab2','tab1','tab3','tab02','tab01','tab03')">Product Specs</a></li>
                        <li><a href="javascript:void(0)" id="tab3" onclick="tabSwitch('tab3','tab1','tab2','tab03','tab01','tab02')">Artwork Specifications</a></li>
                      </ul>
                      <div class="tab-content" >
                        <div id="tab01">
                         <p style="padding:10px;"><select name="select" id="prlisting" onchange="mypr();">
                <option value="1">A5 - Soft Cover</option>
                <option value="2">A5 - Hard Cover</option>
                <option value="3">B5 - Soft Cover</option>
                <option value="4">B5 - Hard Cover</option>
              </select></p>
                        <div id="a5_soft_pr">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <thead>
                              <tr>
                                <td width="200">Quantity <font size="-1">(A5 Corporate)</font></td>
                                <td>Price per Diary(excludes tax)</td>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 295   </td>
                              </tr>
                              <tr>
                                <td>50</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 255   </td>
                              </tr>
                              <tr class="alternate">
                                <td>100</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 225</td>
                              </tr>
                              <tr >
                                <td>200</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 195</td>
                              </tr>
                            </tbody>
                          </table>
                          </div>
                          <div id="a5_hard_pr" style="display:none;">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <thead>
                              <tr>
                                <td width="200">Quantity <font size="-1">(A5 Corporate)</font></td>
                                <td>Price per Diary(excludes tax)</td>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 355   </td>
                              </tr>
                              <tr>
                                <td>50</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 315   </td>
                              </tr>
                              <tr class="alternate">
                                <td>100</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 275</td>
                              </tr>
                              <tr >
                                <td>200</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 245</td>
                              </tr>
                               </tbody>
                          </table>
                          </div>
                          <div id="b5_soft_pr" style="display:none;">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <thead>
                              <tr>
                                <td width="200">Quantity <font size="-1">(B5 Executive)</font></td>
                                <td>Price per Diary(excludes tax)</td>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 305   </td>
                              </tr>
                              <tr>
                                <td>50</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 265   </td>
                              </tr>
                              <tr class="alternate">
                                <td>100</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 245</td>
                              </tr>
                              <tr >
                                <td>200</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 215</td>
                              </tr>
                               </tbody>
                          </table>
                          </div>
                          <div id="b5_hard_pr" style="display:none;">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <thead>
                              <tr>
                                <td width="200">Quantity <font size="-1">(B5 Executive)</font></td>
                                <td>Price per Diary(excludes tax)</td>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 385   </td>
                              </tr>
                              <tr>
                                <td>50</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 335   </td>
                              </tr>
                              <tr class="alternate">
                                <td>100</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 290</td>
                              </tr>
                              <tr >
                                <td>200</td>
                                <td><span class="WebRupee" style="padding:0; margin:0;">Rs.</span> 255</td>
                              </tr>
                               </tbody>
                          </table>
                          </div>
                        </div>
                       <div id="tab02" class="proSpec" style="display:none;">
                         <strong> Size</strong> : A5 Corporate (8.27" x 5.83") and B5 Executive (9.84" x 6.93")<br />
                         <strong>Media</strong> : Inner sheets - 80 GSM, ruled paper;  Outer Cover : 675 GSM matt laminated paper; Inner PP tabs <br />
                    <strong>  Printing</strong> : Production grade, full colour printing on outer (front and back) covers
                          <br />
                    <strong>  Finishing</strong> : Machine punched; wiro binding in black or white wiro. Matt lamination for outer cover.                   <br />
                    <strong>  Pages per Diary</strong> : 300 pages (150 sheets) + personal information and calendar sheets. Up to 8 additional inserts can be added.
                          <br />
                          <strong>Delivery</strong> : Lower quantities (up to 50) ship within 48 hours. Higher quantities need up to 5 working days. Time excludes that taken by courier service.
                         
                        </div>
                        <div id="tab03" class="proUpload" style="display:none;">
                         {include file="da_artwork_specification.tpl"}
                        </div>
                        
                      </div>
                    </div>
                    <div class="xtra-content" >
                      <h3>Personalised & Customised Corporate Diaries </h3>
                      Printo's corporate diaries carry not just the brand of your company, they can be designed to carry the name of the recipient. <p>
                      Put your customer's name on the diary and it no longer is a run-of-the-mill cor pro ate gift. If you are using this for your team, it is a great way to 
                      keep the uniqueness while keeping the homogeneity of the corporate brand.  
                      <p> 
                      
                      Printo's customisation options include creating your corporate brand on the cover and company information on inner pages. 
                      You may create a customised cover (from our designs) or upload your own file. You can also order custom inserts that fit in snugly with the diary pages. 
                      These inserts can carry anything from your company profile and product literature (for customers) or best practices and codes of conduct (for your team). </p>
        
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
