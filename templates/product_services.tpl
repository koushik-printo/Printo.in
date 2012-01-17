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
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
			
			<div class="content-box-main" >
				
					<div class="breadcrumb" >
        <ul>
          <li class="first" ><a href="index.php" >Home</a></li>
          <li>Product Services</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">Products &amp; <span class="style8 style8">Services</span></h2>
            <div class="sub_cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="product_head_text">Printo's Services & Products</td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td class="why_printo_sml_txt_orange">Print Procurement</td>
  </tr>
  <tr>
    <td height="5"></td>
  </tr>
  <tr>
    <td class="why_cont_gry">Large and growing customers use Printo to reduce their print procurement challenges. Printo offers procurement management services for regular print requirements as well as one-off transactions. In constant effort to rationalise print vendors, in certain cases customers also transfer their vendor relationships to Printo, thus retaining any experience curve value developed over the years.</td>
  </tr>
  <tr>
    <td height="10" class="boarder_one_pix"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="why_printo_gray_text">Products by Business Function</td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td class="produ_cont_gry"></td>
  </tr>
  <tr>
    				<td><ul>
				  
                      <li class="upload_document_two">Marketing - Brochures, flyers, mailers, high quality presentations</li>
                      <li class="upload_document_two">Finance - Annual reports, board packs</li>
                      <li class="upload_document_two">Administration - Business stationery, visiting cards, letterheads and envelopes.</li>
                      <li class="upload_document_two">Human Resources - Certificates, training manuals, joining kits</li>
					  <li class="upload_document_two">Technology & Research - Product Manuals, wide format prints</li>
					  <li class="upload_document_two">Event Management - Personalised invites, banners, standees, press kits, giveaways</li>
					  <li class="upload_document_two">Facilities - Canvas prints, signage, name boards, maintenance drawings</li>
					   						  
                  </ul></td>
  </tr>
  <tr>
    <td height="10" class="boarder_one_pix"></td>
  </tr>
  <tr>
    <td class="why_printo_gray_text_two">&nbsp;</td>
  </tr>
  <tr>
    <td class="why_printo_gray_text_two">Products by Industry</td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
  <tr>
   				  <td><ul>
				  
                      <li class="upload_document_two">Healthcare - Patient record management and in-clinic marketing.</li>
                      <li class="upload_document_two">Finance - Loan approval and record management, pass books, fund documents, annual reports</li>
                      <li class="upload_document_two">Retail - Category and indoor signage, promotional material, gift cards, magnetic signs</li>
                      <li class="upload_document_two">Training - Large-sized training & product manuals, logistics and packaging</li>
					  
					  <li class="upload_document_two">BPO/ Technology - Employee business card (automated) requisition, certificates, ID cards</li>
					   						  
                  </ul></td>
  </tr>
  <tr>
    <td height="10" class="boarder_one_pix"></td>
  </tr>
  <tr>
    <td class="why_printo_gray_text_two">&nbsp;</td>
  </tr>
  <tr>
    <td class="why_printo_gray_text_two">Specialised Products</td>
  </tr>
  <tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td class="why_cont_gry"><strong>Personalised Printing</strong> - mass customisation solutions using variable data printing (VDP) technologies, combining the benefits of high volume print prices with the effectiveness of personalised digital printing.</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="why_cont_gry"><strong>Calendars &amp; Diaries</strong> - Customised for the company and Personalised for recipients. Our diaries and calendars are 'evergreen' and even single copies may be printed on demand.</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Eco Friendly Printing</strong> - Organic inks and eco-solvent printing on FSC (Forest Stewardship Certified) and non-synthetic media.</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="boarder_one_pix">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="150" border="0">
                  <tr>
                    <td style="border-top-style:none"><div class="visual-actions" >	
			<a class="btn-blue" href="request_quote.php" ><span><span>Send a Enquiry</span></span></a>																					
			</div></td>
                  </tr>
                </table></td>
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
