{config_load file="test.conf" section="setup"}
<!-- below line is commented by Indrajit das-->
<!--/*{*/ include file="header.tpl" title=foo/*}*/-->
<div class="proUpload"> Give about 3 MM of bleed around your artwork.
                  Keep important text/objects (like phone numbers) within the 'Safe Area' (see template for reference)
                  Colours you see on the screen could vary on print. please ensure your artwork is in CMYK colours to reduce this variance
                  Photographs/Images must be in 300 DPI to avoid pixilation/jagged edges
<br />
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
                                     {/literal}
                                    <div class="prod-infos">
                                      <p class="head">Artwork Specifications </p>
                                      <div class="upld">
                                        <div class="right_side">
                                          <p class="red">Full bleed Size</p>
                                          91.4 MM X 53.3 MM<br />
                                          <br />
                                          The area that will be cut off after the job is printed <br />
                                          and cut down to the finished size.<br />
                                          <br />
                                          <p class="red">Final print size</p>
                                          89 MM X 51 MM<br />
                                          <br />
                                          Final size of the print when you receive it<br />
                                          <br />
                                          <p class="red">Safe area</p>
                                          86 MM X 48 MM<br />
                                          <br />
                                          All text and important design elements should come within this area, <br />
                                          so there is no chance of it being trimmed<br />
                                          <br />
                                        </div>
                                        <div class="left">
                                          <div class="pro"> <img src="images/bleed.png" width="225" height="140" /></div>
                                          <br />
                                          <div class="key">Key</div>
                                          <br />
                                          <div class="full_bleed"><img src="images/full_bleed.gif" width="28" height="7" />&nbsp;Full Bleed</div>
                                          <div class="trim"><img src="images/trim.gif" width="28" height="7" />&nbsp;Trim</div>
                                          <div class="safe_margin"><img src="images/safe_margin.gif" width="28" height="7" />&nbsp;Safe Area</div>
                                          <br />
                                          <div class="files">Download a template</div>
                                          <br />
                                          <div class="corel"><a href="download.php?f=/downloads/templates/bc_ds_artwork_specification.cdr" ><img src="images/corel.png" width="20" height="20" /></a>&nbsp; <a href="downloads/templates/bc_ds_artwork_specification.ai" ><img src="images/ai.gif" width="20" height="19" /></a></div>
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
                                      <!--<div class="visual-actions" > <a class="btn-blue" href="cart_user_files.php?pid=1" ><span><span>Continue</span></span></a> </div> -->
                                    </div>
                </div>
{include file="footer.tpl"}
