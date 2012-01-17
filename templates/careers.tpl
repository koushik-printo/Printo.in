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

<script type="text/javascript" src="js/jquery.min.js"></script>
		  <script type="text/javascript" src="js/jquery.selectbox-0.6.1.js"></script>						
		<script type="text/javascript">
			$(function(){
				$("select").selectbox();
			});	
		</script>
        
<script type="text/javascript" src="js/accordian.pack.js"></script>

{/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
    <div class="content-box-main" >
      <div class="breadcrumb" >
        <ul>
          <li class="first" ><a href="../printo" >Home</a></li>
          <li>Careers</li>
        </ul>
      </div>
      <br />
      <br />
      <img src="images/careers.jpg" width="940" height="268" /><br />
      <br />
      <p>If you are a dreamer, like to take on challenges and have the will to conquer the world, you are at the right place.<br />
        Here are some exciting opportunities to work with us: </p>
     
      <div id="basic-accordian" >

        <div ><h3>Customer Service Representative</h3></div>

        <div class="divider"></div>
        
        <div> <strong>Job Description :</strong>
          <ul>
            <li class="upload_document_two">Excellent DTP skills - Good knowledge of Photoshop, Corel Draw, Illustrator and MS Office.
            </li>
            <li class="upload_document_two">Superb communication skills - English and Hindi. </li>
            <li class="upload_document_two">Positive attitude.</li>
            <li class="upload_document_two">Enthusiasm to learn. </li>
            <li class="upload_document_two">Passion to interact with people. 
            </li>
          </ul>
<br />
            
          <strong>Candidate profile :
          </strong>
          <ul>
            <li class="upload_document_two">Assisting customers in basic DTP and design modification 
            </li>
            <li class="upload_document_two">Operating all printing, photocopying and personal computing equipment within the store in order to fulfill 		customer needs</li>
            <li class="upload_document_two">Resolving customer issues politely  </li>
          </ul>
        </div>
        
        
        
        
        
         <p>&nbsp;</p>
        
        
        
         <div ><h3>Shift Manager</h3>
         </div>

        <div class="divider"></div>
        
        <div> <strong>Job Description :</strong>
          <ul>
            <li class="upload_document_two">At least 1 year of experience in a Print Shop or Pre-Press</li>
            <li class="upload_document_two">Graphic design qualifications </li>
            <li class="upload_document_two">Very good knowledge of all graphic arts software such as Corel Draw,   Adobe Illustrator, InDesign, Photoshop, Quark Express, PageMaker, etc. </li>
            <li class="upload_document_two">Good spoken and written English </li>
          </ul>
<br />
            
          <strong>Candidate profile :
          </strong>
          <ul>
            <li class="upload_document_two">Technical support on print related issues (creation, printing and finishing) as well as print queue management in the store </li>
            <li class="upload_document_two">Handling digital printing equipment </li>
            <li class="upload_document_two">Managing and training a team of less-skilled personnel at all levels &ndash; management to operator </li>
          </ul>
        </div>
        
        
        
        
        
        
        
        
        <p>&nbsp;</p>
        
        
         <div ><h3>Store Manager</h3>
         </div>

        <div class="divider"></div>
        
        <div> <strong>Job Description :</strong>
          <ul>
            <li class="upload_document_two">Expertise in using graphic art software such as   Corel Draw, Adobe Illustrator, InDesign, Photoshop, Quark Express,   PageMaker, etc. </li>
            <li class="upload_document_two">At least 1 year of store managerial experience </li>
            <li class="upload_document_two">Should have led a team of at least 5 to 6 people </li>
            <li class="upload_document_two">Experience in retail verticals is an advantage  
            </li>
          </ul>
<br />
            
          <strong>Candidate profile :
          </strong>
          <ul>
            <li class="upload_document_two">Ensure smooth running of the retail outlets as the highest level of management in the store </li>
            <li class="upload_document_two">Present a basic written report on store performance in a given format as per requirement </li>
            <li class="upload_document_two">Solve general problems and resolve customer grievances </li>
            <li class="upload_document_two">Monitor sales, impact sale increase, cash management, marketing, customer handling, etc.</li>
            <li class="upload_document_two">Hire required resources at store as well as corporate level </li>
          </ul>
        </div>
        
         <p>&nbsp;</p>
        
         <div ><h3>Account Executive</h3>
         </div>

        <div class="divider"></div>
        
        <div> <strong>Job Description :</strong>
          <ul>
            <li class="upload_document_two">Follow up on leads generated by stores / colleague or customer references </li>
            <li class="upload_document_two">Qualify corporate customers correctly </li>
            <li class="upload_document_two">Ensure end-to-end service delivery to corporate customers </li>
            <li class="upload_document_two">Take job specifications accurately </li>
            <li class="upload_document_two">Quote price and timelines correctly (after receiving approval from Corp Account Manager) </li>
            <li class="upload_document_two">Follow up with Production Hub / Store on progress of the order and update customer constantly </li>
            <li class="upload_document_two">Follow up with customer on payment </li>
            <li class="upload_document_two">Follow process at all times </li>
            <li class="upload_document_two">Generate leads</li>
          </ul>
<br />
            
          <strong>Candidate profile :
          </strong>
          <ul>
            <li class="upload_document_two">Excellent communication skills </li>
            <li class="upload_document_two">Strong process orientation </li>
            <li class="upload_document_two">Demonstrated capabilities of working towards and achieving sales targets </li>
            <li class="upload_document_two">Ability to multi-task </li>
            <li class="upload_document_two">Inclination towards gaining technical knowledge </li>
          </ul>
        </div>
        
        
        
        
         <p>&nbsp;</p>
         <div ><h3>Marketing Executive </h3>
         </div>

        <div class="divider"></div>
        
        <div> 
          <p><strong>Job Description :</strong>
          </p>
          <p>An exciting opportunity to be part of a fast-paced, high-growth environment. We are looking for passionate, high energy team players who can handle marcomm and branding assignments. </p>
          <ul>
            <li class="upload_document_two">To help the marketing manager in   implementing the corporate marketing   strategy, keeping in mind Printo&rsquo;s   core product and service offerings. </li>
            <li class="upload_document_two">Assist in the implementation of   marketing plans including budgets,   timelines and expected ROI, to help   in reviews and report on   successes, failures of promos and their   reasons. </li>
            <li class="upload_document_two">To participate in training the   corporate sales representative in terms   of which customers to approach   with which particular service /   product offerings. </li>
            <li class="upload_document_two">To help in coordinating with an external marketing or advertising agency to develop high quality marketing collateral. </li>
            <li class="upload_document_two">To participate in conceptualising promos &ndash; regional and/or countrywide &ndash; and track their implementation and effectiveness. </li>
            <li class="upload_document_two">To take feedback from, and coordinate with store managers regarding promotional and marketing activities in their locality. </li>
            <li class="upload_document_two">To train in-store personnel in the correct manner and procedure of projecting the Printo brand and offerings in their store. </li>
            <li class="upload_document_two">To help in ensuring brand   consistency in every form of communication &ndash;   outdoor signs, indoor signs   and other marketing collateral. </li>
            <li class="upload_document_two">To help in the marketing of Printo&rsquo;s online presence. </li>
            <li class="upload_document_two">Will be required to travel within the city and country on a regular basis. </li>
            <li class="upload_document_two">Management vs. Operational Split: 25:75 </li>
          </ul>
          <p><br />
          <strong>Candidate profile : </strong></p>
          <p><strong>Skills &amp; Attributes</strong> :
          </p>
          <ul>
            <li class="upload_document_two">Excellent oral and written communication skills in English </li>
            <li class="upload_document_two">Ability to work cohesively with various departments </li>
            <li class="upload_document_two">Should be comfortable using Microsoft Excel, Power Point and Word </li>
            <li class="upload_document_two">Preferred if conversant with graphic art software such as Adobe Photoshop and Corel Draw, Illustrator. </li>
          </ul>
<br />
          <strong>Educational Qualifications</strong> :
          <ul>
            <li class="upload_document_two">Preferably an MBA in marketing, or a diploma in Marcomm. Not an essential, especially for experienced candidates </li>
          </ul>
<br />
          <strong>Candidate profile : </strong> 
          <ul>
            <li class="upload_document_two">Preferably one or two years sales and marketing experience, preferably   in a graphic art or printing industry, or any leading MNC. Smart fresh   graduates or post-graduates. </li>
          </ul>
        
        </div>
        
         <p>&nbsp;</p>
        
        
         <div ><h3>Online Marketing Executive </h3>
         </div>

        <div class="divider"></div>
        
        <div> 
          <p><strong>Job Description :</strong></p>
          <p> Printo.in, an online business unit offering digital printing products and services for SOHO customers and SMB customers, is currently on the look out for an enthusiastic and young online marketing executive. He/She needs to have the drive to lend him towards the growth of the online department and to devise ways and means to propagate the business objectives and translate them into profits.</p>
          <p><strong>Candidate profile :
            </strong>
          </p>
          <ul>
            <li class="upload_document_two">A couple of years experience product or service marketing should   suffice. He/ She must be passionate with work and must be an avid   communicator. He has to be the &lsquo;hands on guy/gal&rsquo;, willing to execute a   plan and should be a fast learner. The ideal candidate should have a   good understanding on web as a medium, some smart web marketing   techniques and the most importantly the customer and thereby the market. </li>
            <li class="upload_document_two">The position is open at our corporate office in Bangalore </li>
            <li class="upload_document_two">The candidate should be willing to travel across locations to generate new business leads. </li>
          </ul>
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      
      </div>
      <!--End of accordion parent-->
       <p>&nbsp;</p>
      <p>If you are interested in working with us, submit your details in the form below and we will get back to you promptly.</p>
     
      <table width="940" border="0" class="form">
        <tr>
          <td height="25" colspan="4" bgcolor="#229ed8" class="section"><strong>Submit Your Details</strong></td>
        </tr>
        <tr>
          <td width="241" align="right"><label for="label">Name <span class="red">*</span></label></td>
          <td width="209"><input name="entry_" type="text" class="ss-q-short" id="entry_" value="" size="25" /></td>
          <td width="241" align="right"> Contact Number <span class="red">*</span> </td>
          <td width="229"><input name="entry_2" type="text" class="ss-q-short" id="entry_3" value="" size="25" /></td>
        </tr>
        <tr>
          <td align="right">Email <span class="red">*</span></td>
          <td><input name="entry_3" type="text" class="ss-q-short" id="entry_4" value="" size="25" /></td>
          <td align="right">Total work experience (years) <span class="red">*</span> <br />
            (e.g. 1.5 years or 3 years)
            <p></p></td>
          <td><input name="entry_6" type="text" class="ss-q-short" id="entry_11" value="" size="25" /></td>
        </tr>
        <tr>
          <td align="right">Last (or current) CTC drawn(monthly)<span class="red">*</span><br />
            NOT your &quot;take-home&quot; salary</td>
          <td><input name="entry_6" type="text" class="ss-q-short" id="entry_9" value="" size="25" /></td>
          <td align="right">Current location (city, state) <span class="red">*</span></td>
          <td><input name="entry_5" type="text" class="ss-q-short" id="entry_7" value="" size="25" /></td>
        </tr>
        <tr>
          <td align="right">Applying for<span class="red">*</span></td>
          <td><select name="Applying for *2" id="Applying for *2">
            <option>Customer Service Representative</option>
            <option>Shift Manager</option>
            <option>Store Manager</option>
            <option>Account Executive</option>
            <option>Marketing Executive</option>
            <option>Online Marketing Executive</option>
            <option>Production Executive</option>
            <option>Junior Print Professional</option>
          </select></td>
          <td align="right"><label for="other_option:6">Other:</label></td>
          <td><input name="entry_4" type="text" class="ss-q-short" id="entry_6" value="" size="25" /></td>
        </tr>
        <tr>
          <td align="right">Are you willing to relocate to Bangalore? <span class="red">*</span></td>
          <td><select name="Applying for *3" id="Applying for *3">
            <option selected="selected">Yes</option>
            <option>No</option>
            <option>I'm already in Bangalore</option>
          </select></td>
          <td align="right"><label for="other_option:6">Other:</label></td>
          <td><input name="entry_7" type="text" class="ss-q-short" id="entry_12" value="" size="25" /></td>
        </tr>
        <tr>
          <td align="right">How did you hear about Printo?<span class="red">*</span></td>
          <td><select name="Applying for *4" id="Applying for *4">
            <option selected="selected">Web search</option>
            <option>Friend</option>
            <option>Job portal</option>
            <option>Visited a store</option>
            <option>Job consultant</option>
          </select></td>
          <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right">What do you know about Printo? <span class="red">*</span></td>
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="4"><p>
            <textarea id="entry.20.single" class="field" cols="75" rows="8" name="entry.20.single2"></textarea>
          </p></td>
        </tr>
        <tr>
          <td colspan="4"><table width="100" border="0">
            <tr>
              <td style="border-top-style:none"><div class="visual-actions" > <a class="btn-blue" href="#" ><span><span>Submit</span></span></a> </div></td>
            </tr>
          </table></td>
        </tr>
      </table>
    </div>
  </div>
  <div id="footer_frame" >
  
  
  
    {include file="bottom.tpl"}
  </div>
</div>



{include file="footer.tpl"}
