 
<div id="btn-feedback">
<a href="#" onclick='OpenLightBox()'><img src="images/btn-feedback.jpg" width="38" height="102" id="mydd" /></a></div>
{literal}
<script language="javascript">
function emailValidator(elem, helperMsg){
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if(elem.value.match(emailExp)){
		return true;
	}else{
		alert(helperMsg);
		return false;
	}
}
function IsNumeric(strString)
   //  check for valid numeric strings	
   {
   var strValidChars = "0123456789";
   var strChar;
   var blnResult = true;

   if (strString.length == 0) return false;

   //  test strString consists of valid characters listed above
   for (i = 0; i < strString.length && blnResult == true; i++)
      {
      strChar = strString.charAt(i);
      if (strValidChars.indexOf(strChar) == -1)
         {
         blnResult = false;
         }
      }
   return blnResult;
   }
function formtab(a){
		if(a==1)
		{

			document.getElementById("form-tab1").className="active";
			document.getElementById("form-tab2").className="";
			document.getElementById("form-con1").style.display="block";
			document.getElementById("form-con2").style.display="none";
		}
		else if(a==2)
		{

			document.getElementById("form-tab1").className="";
			document.getElementById("form-tab2").className="active";
			document.getElementById("form-con1").style.display="none";
			document.getElementById("form-con2").style.display="block";
		}	
	
}
function radio(a){
	
	switch(a){
		
		case 1:
			document.getElementById("rd1").className="active";
			document.getElementById("rd2").className="";
			document.getElementById("rd3").className="";
			document.getElementById("rd4").className="";
			document.getElementById("feedbackType").value="Complaint";	
			break;
		
		case 2:
			document.getElementById("rd1").className="";
			document.getElementById("rd2").className="active";
			document.getElementById("rd3").className="";
			document.getElementById("rd4").className="";
			document.getElementById("feedbackType").value="Question";	
			break;
		
		case 3:
			document.getElementById("rd1").className="";
			document.getElementById("rd2").className="";
			document.getElementById("rd3").className="active";
			document.getElementById("rd4").className="";
			document.getElementById("feedbackType").value="Idea";	
			break;
		
		case 4:
			document.getElementById("rd1").className="";
			document.getElementById("rd2").className="";
			document.getElementById("rd3").className="";
			document.getElementById("rd4").className="active";
			document.getElementById("feedbackType").value="Praise";	
			break;
		
	}
}



function radio2(a){
	
	switch(a){
		
		case 1:
			document.getElementById("rd21").className="active";
			document.getElementById("rd22").className="";
			document.getElementById("rd23").className="";
			document.getElementById("rd24").className="";
			document.getElementById("feedbackType1").value="Complaint";	
			break;
		
		case 2:
			document.getElementById("rd21").className="";
			document.getElementById("rd22").className="active";
			document.getElementById("rd23").className="";
			document.getElementById("rd24").className="";
			document.getElementById("feedbackType1").value="Question";
			break;
		
		case 3:
			document.getElementById("rd21").className="";
			document.getElementById("rd22").className="";
			document.getElementById("rd23").className="active";
			document.getElementById("rd24").className="";
			document.getElementById("feedbackType1").value="Idea";
			break;
		
		case 4:
			document.getElementById("rd21").className="";
			document.getElementById("rd22").className="";
			document.getElementById("rd23").className="";
			document.getElementById("rd24").className="active";
			document.getElementById("feedbackType1").value="Praise";
			break;
	}
}

function checkfeedback(a)
{
		if(a=="w")
		{
		var type=document.getElementById("feedbackType").value;
		var description=document.getElementById("topdescription").value;
		var topName=document.getElementById("topName").value;
		var topEmail=document.getElementById("topEmail").value;
		var top_Email=document.getElementById("topEmail");
		var topMobile=document.getElementById("topMobile").value;
		//alert(topMobile);
			if(type=="")
			{
				alert("Please help classify your Feedback Type");
				return false;
			}
			else if(description=="")
			{
				alert("A Description or some details would really help. Please? :-)");
				return false;
			}
			else if(topName=="")
			{
				alert("Sorry, you forgot to enter your name. ");
				return false;
			}
			else if(topEmail=="")
			{
				alert("Oops! I seems you forgot to leave us your email.");
				return false;
			}
			else if(emailValidator(top_Email, "Please can you -re-check if your email ID is valid.")==false)
			{
				return false;
			}
			else if(topMobile!="" && IsNumeric(topMobile)==false )
			{
				alert("Invalid Phone Number");
				return false;
			}
			else
			{
				alert("Thank you very much for your Feedback!");	
				CloseLightBox();
				return true;
			}
		}
		else if(a=="s")
		{
			var type=document.getElementById("feedbackType1").value;
			var description=document.getElementById("topdescription1").value;
			var topName=document.getElementById("topName1").value;
			var topEmail=document.getElementById("topEmail1").value;
			var storeName=document.getElementById("storeName").value;
			var top_Email=document.getElementById("topEmail1");
			var topMobile1=document.getElementById("topMobile1").value;
			if(type=="")
			{
				alert("Please help classify your Feedback Type.");
				return false;
			}
			else if(storeName=="")
			{
				alert("Please mention the Store Name / Location");
				return false;
			}
			else if(topName=="")
			{
				alert("Sorry, you forgot to enter your name.");
				return false;
			}
			else if(topEmail=="")
			{
				alert("Oops! I seems you forgot to leave us your email.");
				return false;
			}
			else if(description=="")
			{
				alert("Please give us a few details");
				return false;
			}
			else if(emailValidator(top_Email, "Please can you -re-check if your email ID is valid.")==false)
			{
				return false;
			}
			else if(topMobile1!="" && IsNumeric(topMobile1)==false)
			{
				alert("Invalid Phone Number");
				return false;
			}
			else
			{
				CloseLightBox();
				alert("Thank you very much for your Feedback!");	
				return true;
			}	
		}
}
</script>
{/literal}
<div id="fscr">
  <div id="feedback-form">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td><table width="100%" border="0" cellspacing="20" cellpadding="0">
		      <tr>
		        <td width="90" align="left"><span class="float-left"><img src="images/logo-feedback.jpg" style="border:none; box-shadow:none;" /></span></td>
		        <td><h2 style=" margin-bottom: 0px;
    padding: 0 0 0 0;">Feedback <span>Please</span></h2></td>
		        <td align="right"><span class="btn-close float-right"><a href="#" onclick='CloseLightBox()'>X</a></span></td>
	          </tr>
		      </table></td>
	      </tr>
		  <tr>
		    <td bgcolor="#dedede">
            <table width="100%" border="0" cellspacing="20" cellpadding="0">
		      <tr>
		        <td>
                
                
                <div>
           	<ul id="tabmenu">
            	<li><a href="#" id="form-tab1" class="active" onclick="formtab(1)">Our (beta) Website</a></li>
                <li><a href="#" id="form-tab2" onclick="formtab(2)" class="">Our Stores</a></li>
                <div style="clear:both"></div>
            </ul>
            <div class="tab-content">
            	<div id="form-con1" style="display: block; ">
            	  <form id="formtop" name="formtop" method="post" action="feedback.php?t=website" onsubmit="return checkfeedback('w');" >
            	    <table width="100%" border="0" cellspacing="10" cellpadding="0">
            	      <tr>
            	        <td width="240" align="right"><strong>Feedback Type</strong></td>
            	        <td>
            	          <ul class="radio">
                                <li id="rd1" onclick="radio(1)">Complaint</li>
                                <li id="rd2" onclick="radio(2)">Question</li>
                                <li id="rd3" onclick="radio(3)">Idea</li>
                                <li id="rd4" onclick="radio(4)">Praise</li>
            	           		<div style="clear:both;"></div>
            	            </ul>
                            <input type="hidden" value="" id="feedbackType" name="feedbackType">
            	          </td>
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
            	        <td align="right"><input type="submit" name="button" id="button" value="Submit" style="background:none; padding:0; margin:0; background-color:#6840a0; border:none; border-radius:4px; width:100px; height:36px; line-height:36px; color:#FFF; font-weight:bold;" /></td>
          	        </tr>
          	        </table>
          	      </form>
                </div>
                
                <div id="form-con2" style="display:none; ">
               	 <form id="formtop" name="formtop1" method="post" action="feedback.php?t=store" onsubmit="return checkfeedback('s');" >
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
<!--                       <tr>
               	       <td align="right"><strong>Store Name</strong></td>
               	       <td><label for="textfield2"></label>
               	         <select name="storename"> <input name="storeName" id="storeName" value="BEL Road" style="background:none; padding:0; margin:0; background-color:#e5e5e5; border:solid 1px #d7d7d7; border-radius:4px; width:408px; height:36px; line-height:36px;" /></select></td>
             	       </tr>-->
               	     <tr>
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
         </div>
              </td>
	          </tr>
	        </table></td>
	      </tr>
    </table>
		
    
  </div>

</div>


{literal}

<script  type="text/javascript">
function OpenLightBox() {
		document.getElementById('fscr').style.display = "inline";
		
}
function CloseLightBox() {

		document.getElementById("fscr").style.display = "none";
}



</script>

{/literal}
 
 
    <div id="header_content_wrapper" >
      <h1 class="logo" style="position:relative;" ><a href="index.php">Printo</a><div class="beta float-right" style="font-family: Arial, Helvetica, sans-serif;
position:absolute; top:0; right:-25px;
font-size: 12px;
line-height: 33px;
text-align: right;
text-transform: lowercase;
font-weight: normal;"> &beta;eta </div></h1>
      <div class="call_text"><a href="skype:+918040010200" style="color:#F79321;"><span><img src="images/icon_phone.png" style="padding-right:8px; margin-bottom:-3px;"/></span>Now simply call us on : <span class="style1">+91 (80) 400 10 200</span></a></div>
      {if $sessuid ne ''}<div class="user-login-box float_left">{$sessuname}</div>{/if}
      <div class="clear_both"></div>
      
      <div id="nav" >
        <ul class="main" >
          <li class="home" ><a href="index.php" class="{$nav_home}">Home</a></li>
          <li class="home" ><a href="index.php" >Products</a>
          	<div class="product-menu">
            	<ul class="float-left first">
                	<!--<li><a href="#">Business Cards</a>
                    <li><a href="#">Brochure</a>
                    <li><a href="#">Letterheads</a>
                    <li><a href="#">Envelops</a>
                    <li><a href="#">Posters</a>
                    <li><a href="#">Flyers</a>-->
                    
                    
                    <li><a href="brochures_a4_2fold.php" >Brochures (3 Panel)</a></li>
                    <li><a href="brochures_a4.php" >Brochures</a></li>
                    <!--<li><a href="brochures_a5.php" >Brochure A5</a></li>  -->     
                  <!--  <li><a href="business_cards_double.php">Business Cards (double sided)</a></li>-->
                    <li><a href="Business_cards_single.php">Business Cards (single sided)</a></li>
                    <li><a href="corporate_calendars.php">Calendars</a></li>
                    <li><a href="corporate_dairies.php">Corporate Diaries</a></li>
                            <!-- <li><a href="documents.php"> Documents</a></li>   -->
                 	<li><a href="envelopes.php">Envelopes</a></li>
                    <li><a href="flyers_a4.php" >Flyers - Regular</a></li>
               </ul>
               
               <ul class="float-left">
                	<!--<li><a href="#">Business Cards</a>
                    <li><a href="#">Brochure</a>
                    <li><a href="#">Letterheads</a>
                    <li><a href="#">Envelops</a>
                    <li><a href="#">Posters</a>
                    <li><a href="#">Flyers</a>-->
                    
        
                    <!--<li><a href="flex_banner.php">Flex Banners</a></li>-->
                    
                    <li><a href="flyers_a5.php" >Flyers - Small</a></li>
                    <li><a href="http://www.printo.in/store/framease" target="_blank" >Framease</a></li>
                    <li><a href="http://www.printo.in/store/canvas" target="_blank" >FotoArts</a></li>
                    <li><a href="glow_signage.php">Glow Signage</a></li>
                    <li><a href="id_card.php">ID Cards</a></li>
                      <li><a href="poster_mounted.php">Display Graphics</a></li>                  
                    
              <li><a href="letter_heads.php">Letterheads</a></li>      
               </ul>
               
               <ul class="float-left">
                	<!--<li><a href="#">Business Cards</a>
                    <li><a href="#">Brochure</a>
                    <li><a href="#">Letterheads</a>
                    <li><a href="#">Envelops</a>
                    <li><a href="#">Posters</a>
                    <li><a href="#">Flyers</a>-->
                    
                 
                    
                    <li><a href="http://www.printo.in/store/mugs" target="_blank" >Mugs</a></li>
                    
                    <li><a href="poster_a4.php" >Large Prints / Posters</a></li>
                   
                    <li><a href="flyers_a4_rack.php" >Info Leaflets</a></li>
                    <li><a href="standee_indoor.php" >Standees - Indoor</a></li>
                    <li><a href="standee_outdoor.php" >Standees - Outdoor</a></li>
                    <li><a href="http://www.printo.in/store/tshirt" target="_blank" >T Shirts</a></li>

                    
               </ul>
            
            
            <div class="clear-both"></div>
            </div>
          
          
          
          
          </li>
       <!--   <li><a href="http://gifts.printo.in" target="_blank" class="{$nav_gi}"  >Gifting Ideas</a></li>-->
          <li><a href="business.php" class="{$nav_bs}" >Business Solutions</a></li>
          <li><a href="locations.php"  class="{$nav_sl}"  ><span>Store Locator</span></a></li>
        </ul>
        

        
        
        
        <ul class="account" >
         {if $sessuid ne ''} <li><a href="user_dashboard.php" onmouseout="MM_menuStartTimeout(1000);" onmouseover="MM_menuShowMenu('MMMenuContainer0630104314_0', 'MMMenu0630104314_0',0,24,'index_r2_c2');" class="last my-account">My Account</a>
         
         
         
         
         
         
         
         
            <div id="MMMenuContainer0630104314_0">
	<div id="MMMenu0630104314_0" onmouseout="MM_menuStartTimeout(1000);" onmouseover="MM_menuResetTimeout();">
		<a href="user_profile.php" id="MMMenu0630104314_0_Item_0" class="MMMIFVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');">
			Update&nbsp;Profile
		</a>
		<a href="user_changepassword.php" id="MMMenu0630104314_0_Item_1" class="MMMIVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');">
			Change&nbsp;Password
		</a>
		<a href="user_logoff.php" id="MMMenu0630104314_0_Item_2" class="MMMIVStyleMMMenu0630104314_0" onmouseover="MM_menuOverMenuItem('MMMenu0630104314_0');">
			Logoff
		</a>
	</div>
</div>
         
         
         

         
         
         
         
         
         
         
         <!--
         
         
          <ul>
         	<li><a href="user_profile.php">Update&nbsp;Profile</a></li>
            <li><a href="user_changepassword.php">Change&nbsp;Password</a></li>
            <li><a href="user_logoff.php">Logoff</a></li>
         </ul>
         -->
         </li>
         <li><a href="user_files.php" class="last my-account">My Files({$my_files})</a>
         
         
        
         
         
         
         </li>
         {else}
         <li><a href="user_login.php" class="last my-account" ><span>Login</span></a><!--<a href="user_registration.php" ><span>Register</span></a> --></li>
         {/if}
         
         <li><a href="viewcart.php" class="cart" ><span>Cart({$total_item})</span></a></li>
        </ul>
      </div>
    </div>
    
