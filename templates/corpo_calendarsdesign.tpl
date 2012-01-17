{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type="text/javascript" src="js/comp/pips/jquery.main.design.js"></script>
{/literal}


<div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<div style="width:1px; height:1px; display:none;" id="hiddenImg"></div>
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
          <li class="last" >Customised<span> Calendars</span></li>
        </ul>
      </div>
				
	  <div class="content-box-l">
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper-design" >
          <div class="inner-page-content-l box-style-light-gray" >

                
                <div class="title-box-design">
                <div style="margin-top:-12px;">
                <h2>NAME <span>CALENDARS</span></h2>
                </div>
                <div class="">
                <div class="steps-design" >
					<span class="active" ><label>Step</label><span>1</span><label style="color:#F68B11; font-weight:bold;">Select Images
                    </label>
                    </span>
					<span class="inactive"><label>Step</label><span>2</span>
                    <label style="color:; font-weight:bold; margin: 3px 0px 0px 25px;">Confirm</label></span>
				</div>
                </div>
				</div>
           <div style="padding:2px;">
           
           
             <div style="width:490px; height:50px;  font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:11px;">
           <div style="width:390px; float:left; height:20px; position:absolute; left:28px;">
          		Click an image to enlarge.  </br>
             	Drag selected images to the boxes on the right.

           </div>
           
             <div style="width:290px; float:left; height:20px; position:absolute; left:540px; cursor:pointer;" onclick="popular();">
          		<a style="text-decoration:underline; color:#2F7190;">Prefill with our popular images</a>   </br>
             	
           </div>
           
           
           </div>

         </div>
         
          <div class="prod-infos-design">
          <span class="scrollArea">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="float:left;" >
   
             <tr> 
    	<td ><img src="i_pips/img/basketball.jpg" id="46" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/grafitti.jpg" id="49" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/la_skyline.jpg" id="45" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
          <tr> 
    	<td ><img src="i_pips/img/note2.jpg" id="43" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/plane.jpg" id="48" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/street.jpg" id="47" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
     <tr> 
    	<td ><img src="i_pips/img/berlinopera.jpg" id="31" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/cake.jpg" id="38" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/chinatown.jpg" id="40" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
        <tr> 
    	<td ><img src="i_pips/img/clockwork.jpg" id="41" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/golf.jpg" id="42" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/wall.jpg" id="39" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
    <tr> 
    	<td ><img src="i_pips/img/banner.jpg" id="44" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/stairs.jpg" id="15" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/Tank.jpg" id="13" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
      <tr> 
    	<td ><img src="i_pips/img/SHIP.jpg" id="12" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/Nevada2.jpg" id="37" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/IntlCar.jpg" id="6" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
   
    <tr > 
    	<td><img src="i_pips/img/newship.jpg" alt="" id="34" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/shirt.jpg" id="16" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/airport.jpg" id="27" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>

    <tr> 
    	<td ><img src="i_pips/img/airportgate.jpg" id="35" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/boat.jpg" id="17" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/Car.jpg" id="26" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
        <tr> 
    	<td ><img src="i_pips/img/chip.jpg" id="18" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/coffee.jpg" id="7" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/curved_bldg.jpg" id="4" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
    <tr> 
    	<td ><img src="i_pips/img/demonstration.jpg" id="23" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/ET.jpg" id="19" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/ford.jpg" id="20" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
        <tr> 
    	<td ><img src="i_pips/img/genius.jpg" id="14" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/goldbar.jpg" id="21" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/LondonTube.jpg" id="9" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
        <tr> 
    	<td ><img src="i_pips/img/MetroBoard.jpg" id="24" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/Nevada.jpg" id="5" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/stadium.jpg" id="3" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
    </tr>
     <tr> 
    	<td ><img src="i_pips/img/Nevada2.jpg" id="37" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/newspaper.jpg" id="36" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/Note.jpg" id="11" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>
     <tr> 
    	<td ><img src="i_pips/img/oldwall.jpg" id="39" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/picadily.jpg" id="31" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/pondy.jpg" id="30" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
    </tr>
     <tr> 
    	<td ><img src="i_pips/img/PYRAMID.jpg" id="2" width="120px" height="80px" style="margin:5px; " class="picimg"/></td>
        <td><img src="i_pips/img/restaurant.jpg" id="22" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>
        <td><img src="i_pips/img/Road.jpg" id="8" width="120px" height="80px" style="margin:5px;" class="picimg"/></td>

    </tr>


 
        
    
    </table>
    
    </span>
    </div>
    
         <div class="prod-list-design">
    
          	  <div class="prod-list-design-div"> 
 				<div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Jan" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Jan</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Mar" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Mar</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="May" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">May</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Jul" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Jul</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Sep" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Sep</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Nov" style="width:90px; height:58px;"  class="chgimg"/><font class="fontclass">Nov</font></div>
                         
                </div>
            
               <div class="prod-list-design-2div" > 
 				<div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Feb" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Feb</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Apr" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Apr</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Jun" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Jun</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Aug" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Aug</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Oct" style="width:90px; height:58px;" class="chgimg"/><font class="fontclass">Oct</font></div>
                <div class="prod-list-design-subdiv">
                <img src="images/blueBack.jpg" id="Dec" style="width:90px; height:58px;"  class="chgimg"/><font class="fontclass">Dec</font></div>
                
                    
            
                </div>
                <form id="myform" name="myform" action="corporate_calendarsbasic.php?pid=18"  method="POST">
				<input type="hidden" id="imageID" name="imageID" value="" />
                <div class="prod-list-design-next"><a href="javascript: submitform()" class="btn-blue" style="margin:2px 15px 0px 0px"><span><span >Next</span></span></a></div>
         		</form>

            </div>
            
            <img src="images/bluenext.png" id="" class="prod-list-arrow"/>
       
          

            
            
            
            
            
            <div class="xtra-content" >

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
