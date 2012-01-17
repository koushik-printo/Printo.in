{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >
				
					<div class="breadcrumb" >
        <ul>
          <li class="first" ><a href="index.php" >Home</a></li>
          <li>Learn</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">How to make your <span class="style8 style8">files print ready?<br />
            </span></h2>
            <div class="sub_cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td class="learn_head_text">Submitting print ready artwork will save you time &amp; wastage!</td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td class="produ_cont_gry"></td>
                </tr>
                <tr>
                  <td><ul>
                    <li class="upload_document_two">Print ready artwork should be saved as: A high resolution (300+ dpi) PDF</li>
                    <li class="upload_document_two">Include crop/trim & fold/crease marks (Printers Marks)</li>
                    <li class="upload_document_two">Include a minimum of 3mm bleed (where design elements come till the edge of the page or where borders are involved)</li>
                    <li class="upload_document_two">Ensure you have ‘curved’ the fonts before you convert to PDF (so even if we don’t have your font, there will be no problem!)</li>
                  </ul></td>
                </tr>
                <tr>
                  <td height="10" class="boarder_one_pix"></td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">Artwork guidelines</td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">When you upload your artwork it must conform to a few basic guidelines, so you get the best quality output. Don't worry, if you are not familiar here are a few basic guidelines.</td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">Resolution</td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">Before giving us your artwork, please note that a photograph or other pixel-based image should ideally be 300 dpi - anything less may print with a pixilated 'jaggy' look. Please check the resolution of your images carefully - just because they look good on screen doesn't mean they'll print properly! </td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">Bleed &amp; Printers Marks</td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">If you know all about creating artwork and are comfortable adding 3mm bleed and crop marks then great, if not, then take a moment to read this: </td>
                </tr>
                <tr>
                  <td class="why_cont_gry">You need to ensure that there is an overlap of at least 3mm out from the edge of your finished artwork. This is the 'bleed' that will be trimmed off. You don't really need to add trimming guide marks (crop marks) just supply the artwork the correct finished size plus the 3mm bleed</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_cont_gry">If important elements of your design are placed too close to the edge of the paper, not only will it look unprofessional, but there's a chance they may get trimmed off. So we ask that you avoid placing text or any other vital elements of your design within 3mm of the edge of the paper. That doesn't mean you can't extend a background image or colour into this area. That's fine of course. But please don't put your contact details along the very edge of the sheet. We'd hate your phone number to end up on our cutting room floor!</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><img src="images/bleed_area.jpg" width="645" height="407" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_cont_gry">This diagram shows what you need to allow for bleed and trim. The 'Safe area'  should always be at least 3mm and ideally 5mm in from the trimmed size, - (black outline.) <br />
                    The bleed area should extend atleast 3mm beyond the printed Final Print Size area.</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_printo_gray_text_two">Your responsibility!</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_cont_gry">Remember, any artwork you send to us will be printed 'as is' so check it thoroughly for spelling errors etc. Although we guarantee to give the best representation of your artwork in printed form we cannot add or change anything if you are supplying it yourself.</td>
                </tr>
                <tr>
                  <td class="boarder_one_pix">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>
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
