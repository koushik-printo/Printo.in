{config_load file="test.conf" section="setup"} 
<!-- below line is commented by Indrajit das--> 
<!--/*{*/ include file="header.tpl" title=foo/*}*/-->
<div class="proUpload"> Give at least 5 MM of bleed around your artwork.
  Keep important text  within the 'Safe Area' (see template for reference)
  Colours you see on the screen could vary on print. please ensure your artwork is in CMYK colours to reduce this variance
  Photographs/Images must be in 300 DPI to avoid pixilation/jagged edges. <br />
  <br />
  {literal}
  <style>
									.prod-infos{background: url("../images/pro_infoBg.jpg") repeat-x scroll 0 0 #C4E9FB;
    border: 1px solid #D5D5D5;
    margin-bottom: 10px;
    padding: 0 0 0 15px;
    position: relative;
	}
									</style>
                                    <script>
function myart(){
	
	var a = document.getElementById('listing').value;
	if(a==2)
		{
		document.getElementById('a5_soft').style.display='none';
		document.getElementById('a5_hard').style.display='block';
		document.getElementById('b5_soft').style.display='none';
		document.getElementById('b5_hard').style.display='none';
		}else if(a==3){
		document.getElementById('a5_soft').style.display='none';
		document.getElementById('a5_hard').style.display='none';
		document.getElementById('b5_soft').style.display='block';
		document.getElementById('b5_hard').style.display='none';
		}else if(a==4){
		document.getElementById('a5_soft').style.display='none';
		document.getElementById('a5_hard').style.display='none';
		document.getElementById('b5_soft').style.display='none';
		document.getElementById('b5_hard').style.display='block';
		}else{
		document.getElementById('a5_soft').style.display='block';
		document.getElementById('a5_hard').style.display='none';
		document.getElementById('b5_soft').style.display='none';
		document.getElementById('b5_hard').style.display='none';
		}
		
	}
</script>
  {/literal}
  <div class="prod-infos">
    <p class="head">Artwork Specifications</p>
    <p><select name="select" id="listing" onchange="myart();">
        <option value="1">A5 - Soft Cover</option>
        <option value="2">A5 - Hard Cover</option>
        <option value="3">B5 - Soft Cover</option>
        <option value="4">B5 - Hard Cover</option>
      </select></p>
      <p>&nbsp;</p>
    <div class="upld">
    <div id="a5_soft">
      <div class="right_side">
        <p class="red">Full bleed Size</p>
        230 MM X 320 MM<br />
        The area that will be cut off after the job is printed and cut down to the finished size.<br />
        <p class="red">Final print size</p>
        220 MM X 310 MM<br />
        Final size of the print when you receive it<br />
        <p class="red">Safe area</p>
        210 MM X 300 MM<br />
        All text and important design elements should come within this area, so there is no chance of it being trimmed<br />
      </div>
      <div class="left">
        <div class="pro"><img src="images/bleed.png" width="225" /></div>
        <br />
        <div class="key">Key</div>
        <br />
        <div class="full_bleed"><img src="images/full_bleed.gif" width="28" height="7" />&nbsp;Full Bleed</div>
        <div class="trim"><img src="images/trim.gif" width="28" height="7" />&nbsp;Trim</div>
        <div class="safe_margin"><img src="images/safe_margin.gif" width="28" height="7" />&nbsp;Safe Area</div>
        <br />
        <div class="files" style="display:none;">Download a template</div>
        <br />
        <div class="corel" style="display:none;"><a href="download.php?f=/downloads/templates/lh_artwork_specification.cdr"><img src="images/corel.png" width="20" height="20" /></a>&nbsp; <a href="downloads/templates/lh_artwork_specification.ai"><img src="images/ai.gif" width="20" height="19" /></a></div>
      </div>
      </div>
      <div id="a5_hard" style="display:none;">
      <div class="right_side">
        <p class="red">Full bleed Size</p>
        230 MM X 320 MM<br />
        The area that will be cut off after the job is printed and cut down to the finished size.<br />
        <p class="red">Final print size</p>
        220 MM X 310 MM<br />
        Final size of the print when you receive it<br />
        <p class="red">Safe area</p>
        210 MM X 300 MM<br />
        All text and important design elements should come within this area, so there is no chance of it being trimmed<br />
      </div>
      <div class="left">
        <div class="pro"> <img src="images/bleed.png" width="225" /></div>
        <br />
        <div class="key">Key</div>
        <br />
        <div class="full_bleed"><img src="images/full_bleed.gif" width="28" height="7" />&nbsp;Full Bleed</div>
        <div class="trim"><img src="images/trim.gif" width="28" height="7" />&nbsp;Trim</div>
        <div class="safe_margin"><img src="images/safe_margin.gif" width="28" height="7" />&nbsp;Safe Area</div>
        <br />
        <div class="files" style="display:none;">Download a template</div>
        <br />
        <div class="corel" style="display:none;"><a href="download.php?f=/downloads/templates/lh_artwork_specification.cdr"><img src="images/corel.png" width="20" height="20" /></a>&nbsp; <a href="downloads/templates/lh_artwork_specification.ai"><img src="images/ai.gif" width="20" height="19" /></a></div>
      </div>
      </div>
      <div id="b5_soft" style="display:none;">
      <div class="right_side">
        <p class="red">Full bleed Size</p>
        250 MM X 370 MM<br />
        The area that will be cut off after the job is printed and cut down to the finished size.<br />
        <p class="red">Final print size</p>
        240 MM X 360 MM<br />
        Final size of the print when you receive it<br />
        <p class="red">Safe area</p>
        230 MM X 350 MM<br />
        All text and important design elements should come within this area, so there is no chance of it being trimmed<br />
      </div>
      <div class="left">
        <div class="pro"> <img src="images/bleed.png" width="225" /></div>
        <br />
        <div class="key">Key</div>
        <br />
        <div class="full_bleed"><img src="images/full_bleed.gif" width="28" height="7" />&nbsp;Full Bleed</div>
        <div class="trim"><img src="images/trim.gif" width="28" height="7" />&nbsp;Trim</div>
        <div class="safe_margin"><img src="images/safe_margin.gif" width="28" height="7" />&nbsp;Safe Area</div>
        <br />
        <div class="files" style="display:none;">Download a template</div>
        <br />
        <div class="corel" style="display:none;"><a href="download.php?f=/downloads/templates/lh_artwork_specification.cdr"><img src="images/corel.png" width="20" height="20" /></a>&nbsp; <a href="downloads/templates/lh_artwork_specification.ai"><img src="images/ai.gif" width="20" height="19" /></a></div>
      </div>
      </div>
      <div id="b5_hard" style="display:none;">
      <div class="right_side">
        <p class="red">Full bleed Size</p>
        255 MM X 385 MM<br />
        The area that will be cut off after the job is printed and cut down to the finished size.<br />
        <p class="red">Final print size</p>
        245 MM X 375 MM<br />
        Final size of the print when you receive it<br />
        <p class="red">Safe area</p>
        235 MM X 365 MM<br />
        All text and important design elements should come within this area, so there is no chance of it being trimmed<br />
      </div>
      <div class="left">
        <div class="pro"> <img src="images/bleed.png" width="225" /></div>
        <br />
        <div class="key">Key</div>
        <br />
        <div class="full_bleed"><img src="images/full_bleed.gif" width="28" height="7" />&nbsp;Full Bleed</div>
        <div class="trim"><img src="images/trim.gif" width="28" height="7" />&nbsp;Trim</div>
        <div class="safe_margin"><img src="images/safe_margin.gif" width="28" height="7" />&nbsp;Safe Area</div>
        <br />
        <div class="files" style="display:none;">Download a template</div>
        <br />
        <div class="corel" style="display:none;"><a href="download.php?f=/downloads/templates/lh_artwork_specification.cdr"><img src="images/corel.png" width="20" height="20" /></a>&nbsp; <a href="downloads/templates/lh_artwork_specification.ai"><img src="images/ai.gif" width="20" height="19" /></a></div>
      </div>
      </div>
      <div class="note">
        <p class="red">Note: </p>
        <p class="document">The file should be in CMYK and remember to convert  images to CMYK as well. </p>
        <p class="document">Images should be 300 DPI (pre-flight check recommended) </p>
        <p class="document">Please remove objects &amp; layers that are not required (check wireframe view) </p>
        <p class="document">Ensure you have proof-read for spelling, grammar and punctuation errors. </p>
        <p class="document">Please remember to delete the reference lines given in this template as well! </p>
        <p class="document">Make a .zip file with all images, associated fonts etc. before uploading. </p>
      </div>
      <!--- end note ---> 
    </div>
    <!-- <div class="visual-actions" > <a class="btn-blue" href="cart_user_files.php?pid=3" ><span><span>Continue</span></span></a> </div> --> 
  </div>
</div>
{include file="footer.tpl"} 