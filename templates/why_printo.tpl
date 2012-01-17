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
          <li>Why Printo</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">Why <span class="style8 style8">Printo?</span></h2>
            <div class="sub_cont">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td ><h3>Why customers swear by Printo?</h3></td>
                </tr>
                <tr>
                  <td class="who_heading_two">Large and growing enterprises depend heavily on print as an effective form of communication and quite challenging to manage. Typical challenges include reducing costs, managing delivery timelines, managing transaction costs, monitoring quality and evaluating multiple print vendors each fiscal. Given this challenge, firms are increasingly turning to Printo for a solution.</td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td ><h4>So why is buying print such a hassle?</h4></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td ><strong>A) Print itself is variegated</strong></td>
                </tr>
                <tr>
                  <td height="5"></td>
                </tr>
                <tr>
                  <td>Print remains the largest communications spend for most industries across the globe. It varies</td>
                </tr>
                <tr>
                  <td height="8"></td>
                </tr>
                <tr>
                  <td><ul>
                    <li class="upload_document_two">in size (labels/engineering drawings)</li>
                    <li class="upload_document_two">in quantity (letterheads/poster)</li>
                    <li class="upload_document_two">in material (paper/vinyl /cloth)</li>
                    <li class="upload_document_two">in uniqueness (newsletters/ID card)</li>
                    <li class="upload_document_two">in cost (flyers/gift items)</li>
                    <li class="upload_document_two">in intellectual property(posters/ business plans)</li>
                    <li class="upload_document_two">in packaging (brochures/engineering drawings)</li>
                    <li class="upload_document_two">in transportability (manuals/ceramic mugs)</li>
                    <li class="upload_document_two">in quality (business forms/ coffee table book) & </li>
                    <li class="upload_document_two">in durability (notepads/sign boards)</li>
                  </ul></td>
                </tr>
                <tr>
                  <td class="boarder_one_pix">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td ><strong>B) The supply chain is fragmented</strong></td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">Printers are specialists focusing on their specific type of printing; from web offset to screen. Some types of printing needs involve manual process and craft, while others need mechanical precision and speed. Moreover each process requires specific machinery, which in turn binds a printer to only certain types of jobs. This is further compounded by outdated practices in management, employment and manufacturing, exposing them to legal compliance liabilities.</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td ><h4>Printo solves the problem</h4></td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
                <tr>
                  <td>Printo makes the process of buying and managing print easy:</td>
                </tr>
                <tr>
                  <td><ul>
                    <li class="upload_document_two">Single vendor for all print needs, across regions</li>
                    <li class="upload_document_two">Guaranteed on-time delivery</li>
                    <li class="upload_document_two">Consistent print quality</li>
                    <li class="upload_document_two">Complete control of print costs</li>
                  </ul></td>
                </tr>
                <tr>
                  <td height="8"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">Printo helps large and growing organisations reduce transaction and management costs by using automated systems on the buy and sell side. This means minimised intervention for reconciliation of invoices and POs and a consistent On Time To Spec (OTTS) performance. [In 2009-10 Printo delivered an OTTS of over 99.3%.]</td>
                </tr>
                <tr>
                  <td height="8"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">Printo's mantra of <em><strong>Under Promise and Over Deliver</strong></em> is actualised by our process and business model. We deliver using 3 simple principles:</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><h4>Process is God</h4></td>
                </tr>
                <tr>
                  <td height="8"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">We view print as a business problem and tackle it using process,
                    technology and technical expertise.</td>
                </tr>
                <tr>
                  <td><ul>
                    <li class="upload_document_two">Printo's proprietary software system tracks jobs by the minute; from pre-press to delivery.</li>
                    <li class="upload_document_two">A state of the art digital print hub with skilled project managers to monitor print production.</li>
                    <li class="upload_document_two">Printo outsources jobs to a strong network of print providers across the country, who are chosen after evaluation of their process and quality standards.</li>
                    <li class="upload_document_two">Printo consistently scores its supplier network to ensure that our customers get the best quality and prices from our partners.</li>
                  </ul></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_cont_gry"><strong>Get in the Customer's shoes:</strong> We view printing from the customer's point of view, rather than inside out. Our questions are not what our machines can produce and at what cost. We ask what does the customer want, at what price and when?</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_cont_gry"><strong>Build a great team:</strong> Printo prides in a team that respects process as a tool to enable the best of breed printing technology. Our team consists of some of the best brains in print technology, cost management and service delivery.</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td ><h4>Printo's Partnerships:</h4></td>
                </tr>
                <tr>
                  <td height="8"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry"><p>Printo's supplier network has been carefully nurtured over the past 4 years. We work with suppliers who have a cultural understanding of quality, timelines and business ethics. All our suppliers are regularly evaluated using a supplier scorecard that takes data from our Printo HubQ™ software and generates an OTTS (On Time To Spec) report. Moreover, regular site inspections to our partners’ facility and quality inspections of every job produced by them, helps us get the best out of our partner relationships. Our print-partners are in effect evaluated by the same yardstick by which we are evaluated by our customers.<br />
                          <br />
                    Printo has access to the best in class print facilities and technologies in-house and with its partners. From Xerox's and HP's high end digital presses to Mitsubishi and Heidelberg offset presses and from high speed folding and creasing finishers to automated screen printing equipment, Printo has the ability to deliver on an exceptionally wide product range. </p>
                      <p>Printo's Vendor Partners benefit from the increased business volume without any marketing spend and Printo benefits from lower costs due to demand aggregation across customers.<br />
                          <br />
                        The most important aspect of Printo's Vendor Partner Network is our ability to provide customers with almost unlimited capacity on demand and an unbeatable redundancy.<br />
                        Monitoring and managing print jobs across this network is really at the core of our promise to deliver on time, every time!</p></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><h4>Printo's HubQ™</h4></td>
                </tr>
                <tr>
                  <td height="8"></td>
                </tr>
                <tr>
                  <td class="why_cont_gry">The Printo HubQ is a proprietary technology-enabled process developed by our team to manage and deliver customer jobs across the Printo network. The HubQ tracks timelines, job specifications and digital files. Printo manages hundreds of jobs a day and thousands each month, keeping track of the movement of each print product across the supply chain, using HubQ. <br />
                      <br />
                    Each Printo job carries an imprint, which enables us to verify and carry an audit trail of a job, much after it is delivered and consumed by our customers. The HubQ process provides the underpinning of our accountability and on-time assurance.</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><h4>Printo is Green</h4></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="why_cont_gry">Printo respects the environment and understands that the only way to grow is by taking a sustainable approach. Our primary digital production hub has incorporated green principles in waste management and energy conservation. 90% of our area is cooled by non-freon, low energy techniques developed especially for Printo by an environmental engineering specialist firm. All waste at Printo is segregated and disposed to ensure optimum recycling of paper and safe disposal of any synthetic products. Finally, our wide range of eco-friendly, FSC (Forest Stewardship Council) certified paper solutions can offer customers the choice of responsible printing.</td>
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
                  <td><table width="170" border="0">
                    <tr>
                      <td style="border-top-style:none"><div class="visual-actions" > <a class="btn-blue" href="enquiry.htm" ><span><span>Send an Enquiry</span></span></a> </div></td>
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
