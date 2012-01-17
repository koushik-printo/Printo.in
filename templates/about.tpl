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
          <li>About</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">Who <span>we are </span></h2>
            <div class="sub_cont">
              <p style="margin-top: 15px"> </p>
              <div class="who_we_cont_left">
                <div>
                  <h3>Printo provides businesses with world-class printing solutions. We are:</h3>
                </div>
                <div >
                  <ul>
                    <li class="upload_document_two">India's first and fastest growing network of print and document shops.</li>
                    <li class="upload_document_two">India's first branded retail chain that provides services of international standard.</li>
                    <li class="upload_document_two">A professional, board-managed company co-founded by experts from the document printing and the IT services industries.</li>
                  </ul>
                </div>
                <div class="who_heading">
                  <h3>Print On Demand</h3>
                </div>
                <div class="who_heading_two">With us, you can print on demand. What does this mean? It means that you can print business communications, which are absolutely current and updated, whenever you need them and in the quantities that you need. No longer do you need to order in thousands when your requirement is in hundreds or tens.Print exactly what you need, no more no less.</div>
                <div class="who_heading">
                  <h3>Convenient &amp; Quick</h3>
                </div>
                <div class="who_heading_two">At Printo, printing is affordable, hassle free, and quick. How? Simply because we use the latest digital printing technology that allows smaller print runs with no setup costs. Now, you need not manage different vendors to create high-resolution designs, to source paper, or to cut, bind or package—one stop at Printo does it all. We offer high quality prints and great convenience at competitive rates. And, you won't have to wait for days to get your documents.</div>
                <div class="who_heading">
                  <h3>Great Product Range</h3>
                </div>
                <div class="who_heading_two">
                  <p>Besides the regular colour and B/W prints, we offer custom products for your personal and business print needs. We have a library of product designs to suit all occasions and moods. You can select a design and then modify it by adding your own message, changing colours, inserting pictures, and more.<br />
                      <br />
                    Customised photo calendars, diaries, invitation or greeting cards, brochures or leaflets, business cards, or posters—we can print them all. Be it a single print or over a thousand, our skilled staff can do the job in almost no time. You could walk out with your order in less than 30 minutes! And we never compromise on quality. Compare this with your current document printing process, and you will see the difference.<br />
                    <br />
                    Our products help you save time and money, while offering great quality.</p>
                </div>
                <div class="who_heading">
                  <h3>Document Outsourcing</h3>
                </div>
                <div class="who_heading_two">
                  <p>You can print professional documents such as corporate presentations, manuals, and training booklets with us, irrespective of the quantities involved, be it cutting, collating, or binding, you can leave it all to us. Privacy and copyright protection are guaranteed.<br />
                      <br />
                    You can also place your order online, and what's even better is that we can deliver the prints anywhere in India, thus making print buying as easy and stress-free as possible.</p>
                  <br />
                  <p>If you are a company with large and periodic print requirements, then we have a solution to your document and printing woes. You can sign up for a corporate account and avail of the following benefits:</p>
                  <div class="who_points_two">                    <strong>Service Level Agreements with guaranteed delivery turnaround
                    </strong>
                    <ul>
                    <li class="upload_document_two">Hassle-free ordering (online or over telephone)</li>
                    <li class="upload_document_two">Volume based price discounts and credit terms</li>
                    <li class="upload_document_two">Volume based price discounts and credit terms</li>
                    </ul>
                  </div>
                </div>
                <div class="who_heading">
                  <h3>Just a little bit more ... </h3>
                </div>
                <div class="who_heading_two">
                  <p>Printo is all set to have more than 250 retail outlets across India, making it possible for you to avail of our fast and predictable services at multiple and convenient locations across major cities. You could visit the store nearest to you and place your order, or do it online at www.printo.in ... whichever you prefer.</p>
                  <br />
                  <p>If you would like to know more about us, send us an email at online@printo.in, and we'll answer your queries. Remember, we go the extra mile to bring innovative ideas that make printing easy and fun. Try us and experience the difference!</p>
                </div>
                <div class="who_heading">
                  <h3>Printo - The Company</h3>
                </div>
                <div class="who_heading_two">
                  <p>Printo was founded in late 2005 and is headquartered in Bangalore, India. Our first store was launched in 2006, in Koramangala, Bangalore. Since then, Printo has launched stores in Bangalore, Mumbai, Pune and Hyderabad. We intend to dot the Indian landscape with over 250+ Printo stores. Besides our retail stores, Printo reaches out to its customers through an interactive website (www.printo.in) and a corporate marketing team.<br />
                      <br />
                    Printo has a simple mission: put a smile on the customer's face by making his/her printing experience extremely easy. And the toughest part of our business is exactly that—trying to make print ordering &quot;easy&quot;. Hence we've brought together an experienced team of professionals across industry segments, from retail, software, printing and manufacturing.</p>
                  <p><br />
                    Our management team is backed by experienced investors, who have helped build large companies, starting from at various stages of growth.</p>
                </div>
              </div>
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
