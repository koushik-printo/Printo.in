{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<script type="text/javascript" src="/printo.in/v1_2/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="/printo.in/v1_2/js/poll_plugin.js"></script>
{literal}
<script type="text/javascript">
//--> for polling from here

function startpoll() {
          // Start a polling loop with an id of 'loop' and a counter.
  var i = 0;
  //var element = $("#s").val();
  var filename = document.getElementById('s');

  $.doTimeout( 'loop', 1000, function(){
        $.post("/printo.in/v1_2/business-printing/business-card/create/getstatus.asp?s="{/literal}{$cusr_sess_id}{literal}, function(data) {
                  if (data == "Success") {
                  imgloader();
                //  $('#polling_response span').html( data );
                  $.doTimeout( 'loop' );  
                }
         });
    return true;}
)};

//--> for polling above
$.ajax({
  url: "/printo.in/v1_2/business-printing/business-card/create/test.html",
  context: document.body,
  success: function(){
    $(this).addClass("done");
  }
});
        function imgloader () {
                        $("#vcimg").attr("src", "/printo.in/timg/"{/literal}{$cusr_sess_id}{literal}".jpg?" + (new Date()).getTime());
        }
        function pollforupdate() {
                        var t=setTimeout("imgloader()",1500);   
        }
 $(document).ready(function() {
//   1st time for carry forward of sessions
		$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );
//	 below for event trap
 $("input").change(function() {
		$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );
   });
 });

</script>
{/literal}
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
          <!--design start-->
          <div class="products box-style-light-gray" >
          <form action="" method="post" name="form1" class="label-horizontal"> 
            <h3>Cart Design</h3>
            
            <div class="listing_row">
            <div class="listing_column1">Selected Product : </div>
            <div class="listing_column2">{$productDetails.productname}</div>
            </div>
           <div class="listing_row">
            <div class="listing_column1">Selected template : </div>
            <div class="listing_column2">{$tempalteDetails.templatebasename}</div>
            </div>
            <div class="listing_row">
            <div class="listing_column1">&nbsp;</div>
            <div class="listing_column2"><input name="AddCart" type="submit" value="Add to Cart" />
              <input type="hidden" name="product_id" id="product_id" value="{$productDetails.productid}" />
              <input type="hidden" name="template_id" id="template_id" value="{$tempalteDetails.templateid}" />
              <input type="hidden" name="tempalte_category_id" id="tempalte_category_id" value="{$tempalte_category_id}" /> 
            </div>
            </div>
            
            <div class="listing_row">
            <hr size="1" />
            </div>
            
            <div class="listing_row">
            <div class="listing_column1"><div class="form-box" >
							<div class="form-wrapper" >
								
								<!--<form name="form1" id="form1" class="label-horizontal" > -->
										<!-- no fonts for now 
										<div class="fields" >
											<label>Fonts</label>
											<div class="field" >
												<select id="category-select" >
													<option>Agriculture &amp; Farming</option>
													<option>Information Technology</option>
													<option >Engineering</option>	
													<option>Agriculture &amp; Farming</option>
													<option>Information Technology</option>
													<option >Engineering</option>	
													<option>Agriculture &amp; Farming</option>
													<option>Information Technology</option>
													<option >Engineering</option>							
												</select>
											</div>
										</div>
										-->
										

										<div class="fields" >
											<label>Name</label>
											<div class="field" >
												<input name="fldname" type="text" id="fldname" value=" " />

											</div>
										</div>
										
										<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
												<input name="flddesig" type="text" id="flddesig"  value=" " />
											</div>
										</div>

										
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
												<input name="fldcname" type="text" id="fldcname" value=" " />
											</div>
										</div>
										
										<div class="fields" >
											<label>URL</label>

											<div class="field" >
												<input name="fldwebsite" type="text" id="fldwebsite"  value=" " />
											</div>
										</div>
										
										<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
												<input name="fldmobile" type="text" id="fldmobile" value= " " />

											</div>
										</div>
										
										<div class="fields" >
											<label>Telephone</label>
											<div class="field" >
												<input name="fldteleno" type="text" id="fldteleno"  value= " " />
											</div>
										</div>

										
										<!-- no fax field for now 
										<div class="fields" >
											<label>Fax</label>
											<div class="field" >
												<input type="text" />
											</div>
										</div>

										-->
										
										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
												<input name="fldemail" type="text" id="fldemail"  value= " " />
											</div>
										</div>
										
										<div class="fields" >

											<label>Address 1</label>
											<div class="field" >
												<input name="fldaddline1" type="text" id="fldaddline1"  value= " " />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >

												<input name="fldaddline2" type="text" id="fldaddline2"  value= " " />
											</div>
										</div>
										
										<div class="fields file" >
											<label>Logo</label><input name="t" type="hidden" value= "VCAC003" />
											<input name="s" type="hidden" id="s" value= "{$cusr_sess_id}" />
											<div class="field" >
												<input type="file" />
												
											</div>
                                            </div>	

<div class="fields file" >
											<label>Optional Fields</label>
											<div class="field" >
												Qty : 
												  <input type="text" name="mypr_qty" value="" />
											  <br />
												<input type="checkbox" name="mypr_dummy1" value="1" /> Dummy1 
                                              <br /><input type="checkbox" name="mypr_dummy2" value="1" /> Dummy2 
						</div>
                                            
							</div>												
								<!--</form> -->
							</div>
						</div> </div>
            <div class="listing_column2">
            <div class="preview-tabs" >
                        <div class="product-details-tab bc-preview-tab" >
                            <ul>
                                <li><a href="#" class="active" >Front</a></li>
                                <li><a href="#" >Back</a></li>											
                            </ul>

                            <div class="tab-content" >
                                <img src="/printo.in/v1_2/images/VCAC002.jpg" width="350" height="200" id="vcimg" />
                            </div>
                        </div>
					</div>
            </div>
            </div>
            
          </form> 
          </div>
          <!--design end--> 
         
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>
	  <script type="text/javascript" src="/printo.in/v1_2/js/jquery.selectbox-0.6.1.js"></script>	
      {literal}					
		<script type="text/javascript">
			$(function(){
				$("select").selectbox();
			});	
		</script>
        {/literal}
{include file="footer.tpl"}