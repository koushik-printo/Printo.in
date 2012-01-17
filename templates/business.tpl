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
          <li>Business Solutions</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">Business <span >Solutions</span></h2>
            <div class="sub_cont ul-style">
              <h3>Why Printo?</h3>
              <div>
                <p>There are numerous reasons why corporates choose us as their printing partner, among those the major reason is that we understand your business printing challenges, so we have designed our services that keep things off your head -- so you can focus your energy on growing your company, not managing your printing resources and equipments.</p>
                
                <h4>Who is Printo?<br />
                </h4>
                <ul><li class="upload_document_two"> Printo is India&rsquo;s first professional printing solutions company. </li>
                  <li  class="upload_document_two"> <strong>A one-stop provider of all your print requirements</strong>&nbsp;- We provide a single window to address all printing requirements of your organization, from your Business Cards to your Direct Mailers and all small and large formats B/w &amp; Colour Printing. </li>
                  <li class="upload_document_two"> <strong>Capable of addressing all small and large volume requirements</strong>&nbsp;- Using different technologies, we can provide excellent value for both small volume and large volume requirements. </li>
                  <li class="upload_document_two"> <strong>Providing innovative mass customized printing products</strong>&nbsp;- The advantages you get are three-fold; single vendor for all your printing requirements, consistent quality and turn-around-time, improved control of costs and consistency. We achieve this through our Online ordering system. </li>
                </ul>
                <h4><br />
                  How do we do it?<br />
                </h4>
                <p>Printo delivers through a combination of the following:</p>
                
                
                <ul>
                  <li class="upload_document_two"><strong>Centralized, high-volume and large-format print facility</strong> - We have a Hub to take care of all large-volume requirements. It functions 24x7 when required.</li>
                  <li class="upload_document_two"><strong>Retail network of Printo stores</strong> - We have a network of 17 stores in 2 cities – Bangalore and Hyderabad.</li>
                  <li class="upload_document_two"><strong>Captive in-plant Printo shops</strong> - We have a print shop on the Infosys campus in Electronic city for their exclusive use.</li>
                </ul><br />

                <h4>Our Value<br />
                </h4>
                <ul>
                  <li class="upload_document_two"><strong>Solutions approach:</strong><br />
                    You provide Final Product specs, Budget &amp; Timeline only, Printo takes care of everything else</li>
                  <li  class="upload_document_two"><strong>Consistency – Branding, Communication, Deliverables</strong> - Since Printo is your single-window provider, branding consistency can be maintained across multiple forms of printed Communication and multiple geographies. IP protection is also built into the process. All customer documents are shredded after use and all customer files are deleted until they are requested for archival.</li>
                  <li  class="upload_document_two"><strong>Control – Budget, Cost, Quality, Timeline and IP</strong> - Most printing is ordered in smaller volumes and multiple instances (except for items like annual reports), making it very difficult to track from a cost perspective. Moreover the pricing is fixed by one department (Procurement/Admin) while ordering is done by a different department. Hence validation is difficult. With a single vendor like us, it becomes easy. For example, today Infosys has a clear track of which department is ordering from Printo and what is their spend.<br />
                      <br />
                    Our Turn Around Times are consistent because we track and record it, available to clients for review.<br />
                  </li>
                </ul>
                <h4><br />
                  Infrastructure<br />
                </h4>
                <ul>
                  <li  class="upload_document_two"><strong>Production:</strong><br />
                    Top-of-the-line equipment - Our infrastructure consists of production-grade printing equipment from Xerox and HP and automatic finishing equipment from Renz.</li>
                  <li  class="upload_document_two"><strong>Intranet:</strong><br />
                    Connectivity, Redundancy - Our bandwidth investments facilitate easy transfer of large volume data and provide redundancy across stores.</li>
                  <li  class="upload_document_two"><strong>Job management:</strong><br />
                    Proprietary software - With our proprietary software, we can achieve Variable Data Printing and automated customization even through our online portal.</li>
                  <li  class="upload_document_two"><strong>Online ordering:</strong><br />
                    Web store - We have an intelligent online ordering system that makes it very easy to order while controlling consistency of branding across print products.<br />
                    <br />
                    Pricing control - Our ordering system helps monitor printing expenses by department and costs-centers.<br />
                    <br />
                    Template-based personalization - We can provide user-level access control, workflow automation and budget restriction for corporates.<br />
                    <br />
                    User management and Audit trails - Every order will have an Audit trail.</li>
                </ul>
                <h4><br />
                  Engagement<br />
                </h4>
                <ul>
                  <li  class="upload_document_two"><strong>Corporate Sales Team:</strong><br />
                    Account Executives with named accounts – We assign dedicated Sales Team only for corporate customers for better accountability and execution excellence.</li>
                  <li  class="upload_document_two"><strong>Online ordering:</strong><br />
                    User-defined automated customization on standard templates – We provide a dedicated micro-site for large customers with customizable pre-configured products and solutions.</li>
                  <li  class="upload_document_two"><strong>Corporate Value Card:</strong><br />
                    Easy ordering through Printo retail outlets for urgent requirements – We provide a dedicated micro-site for large customers with customizable pre-configured products and solutions for managing and tracking their orders.</li>
                </ul>
                <h4><br />
                  Pedigree<br />
                </h4>
                <p><strong>Printo is a professional company…</strong>
                </p>
                <ul>
                  <li  class="upload_document_two"><strong>Managed by a board</strong> - Run by professionals with a service-delivery background.</li>
                  <li  class="upload_document_two"><strong>Backed by Sequoia Capital Partners</strong> - One of the largest venture funds in the world.</li>
                  <li  class="upload_document_two"><strong>Customers</strong> - Wipro, Infosys, Café Coffee Day, LJ Hooker, Cisco, Ashok Leyland and many more:</li>
                </ul>
                <p><img src="images/customers.jpg" /></p>
              </div>
            </div>
            <!--- end sub_cont --->
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
