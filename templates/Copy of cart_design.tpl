{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>
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
        $.post("/printo.in/v1_2/business-printing/business-card/create/getstatus.asp", function(data) {
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
		
		$.post("/printo.in/v1_2/getsession.asp", function(data) {
				 var mysess = data;
				  $("#vcimg").attr("src", "/printo.in/timg/"+mysess+".jpg?" + (new Date()).getTime());
				  $("#myimg").attr("value", mysess);
         });
		 
                       
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
  <form class="label-horizontal" name="form1" id="form1" action="" method="post" >
			<!--<div class="breadcrumb" ></div>-->
            <div class="breadcrumb">
					<ul>
						<li class="first" ><a href="index.php" >Home</a></li>
						<li>Marketing</li>
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
            
			<div class="app-box-main" >
				
                <div class="title-box">
				<h2>{$Name1} <span>{$Name2}</span></h2>	
				
				<ul class="steps" >
					<li  ><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
					<li class="active" ><label>Step</label><span><span>2</span><label>Add content</label></span></li>
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
                    <div class="clear-both"></div>
				</ul>
                </div>
                
				
				<div class="content-adding box-style-light-gray " >
					
					<!--<div class="app-breadcrumb" >
						
						<h3>Now add content</h3>
						
						<ul>
							<li>Double Sided</li>
							<li>Architecture</li>
							<li>Modern <span>BC 21421</span></li>
						</ul>
						
					</div> -->
					
					<div class="add-content-editor" >
						
						<div class="form-box" >
							<div class="form-wrapper" >
								<!-- Business card form start -->
                                
                                <div align="center">Fill in the text fields and click Preview</div>
                                
										{if $productDetails.productid eq 1} 
										<div class="fields" >
											<label>Name</label>
											<div class="field" >
                                            	{if $fldname != ''}
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
                                                {else}
                                              	<input name="fldname" type="text" id="fldname" value="FirstName LastName" />
                                                {/if}
											</div>
										</div>
										
										<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
												<input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
												<input name="fldcname" type="text" id="fldcname" value="{$fldcname}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>URL</label>
											<div class="field" >
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
												<input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Telephone</label>
											<div class="field" >
												<input name="fldteleno" type="text" id="fldteleno"  value="{$fldteleno}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Fax</label>
											<div class="field" >
												<input name="fldfax" type="text" id="fldfax"  value="{$fldfax}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
												<input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
												<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
												<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
											</div>
										</div>
								
                                <div class="fields" >
											<label>Address 3</label>
											<div class="field" >
												<input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
											</div>
										</div>
                                        {/if}
                                        <!-- Business card form End -->
                                        
                                        <!-- Letter heads card form start -->
                                        {if $productDetails.productid eq 3} 
                                        <div class="fields" >
											<label>Name</label>
											<div class="field" >
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
												<input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
												<input name="fldcname" type="text" id="fldcname" value="{$fldcname}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>URL</label>
											<div class="field" >
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
												<input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Telephone</label>
											<div class="field" >
												<input name="fldteleno" type="text" id="fldteleno"  value="{$fldteleno}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Fax</label>
											<div class="field" >
												<input name="fldfax" type="text" id="fldfax"  value="{$fldfax}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
												<input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
												<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
												<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
											</div>
										</div>
								
                                <div class="fields" >
											<label>Address 3</label>
											<div class="field" >
												<input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
											</div>
										</div>
                                        {/if}
                                         <!-- Letter heads card form end -->
                                       
                                       <!-- Envelopes card form start -->
                                        {if $productDetails.productid eq 10} 
                                        <div class="fields" >
											<label>Name</label>
											<div class="field" >
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
												<input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
												<input name="fldcname" type="text" id="fldcname" value="{$fldcname}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>URL</label>
											<div class="field" >
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
												<input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Telephone</label>
											<div class="field" >
												<input name="fldteleno" type="text" id="fldteleno"  value="{$fldteleno}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Fax</label>
											<div class="field" >
												<input name="fldfax" type="text" id="fldfax"  value="{$fldfax}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
												<input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
												<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
												<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
											</div>
										</div>
								
                                <div class="fields" >
											<label>Address 3</label>
											<div class="field" >
												<input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
											</div>
										</div>
                                        {/if}
                                         <!-- Letter heads card form end -->
                                         
							</div>
						</div>
						
						<div class="preview-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Front</a></li>
										</ul>
										<div class="tab-content" >
												<img src="uploads/template_images/{$tempalteDetails.templateimage}" id="vcimg" width="442" style="border: 1px solid #EEEEEE;" />
												
										</div>
																				
									</div>
						</div>
						
					</div>
					
				</div>
				
				<div class="actions" >
                    <input name="t" type="hidden" value= "{$tempalteDetails.templatebasename}" />
                    <input name="myimg" type="hidden" id="myimg" value= "" />
                    <input type="hidden" name="product_id" id="product_id" value="{$productDetails.productid}" />
                    <input type="hidden" name="template_id" id="template_id" value="{$tempalteDetails.templateid}" />
                    <input type="hidden" name="item_id" id="item_id" value="{$current_item_id}" />
                    <input type="hidden" name="cart_id" id="cart_id" value="{$cartItemsList.cartid}" />
                    <input type="hidden" name="tempalte_category_id" id="tempalte_category_id" value="{$tempalte_category_id}" /> 
					
					
					<input name="AddCart" type="image" src="images/btn_done.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;"  />
                    <input name="ChangeTemplate" type="image" src="images/change_template.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;"  />
                    
                   <div style="clear:both;"></div> 
				</div>
					
			</div>
            </form>
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