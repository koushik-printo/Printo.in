{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<div style="height:1px; width:1px; display:none;" id="imgDiv"></div>
<div id="hiddenFlds" ></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
{literal}<script type="text/javascript" src="js/comp/cal/jquery.main.design.js"></script>{/literal}
  <div id="hiddenImg" style='width:1px; height:1px; display:none;'></div>
  <div id="content_frame" >

  <form class="label-horizontal" name="form1" id="form1" action="" method="post" enctype="multipart/form-data">
			<div id="hdnflds" style="height:1px; width:1px; display:none;"></div>
            <div class="breadcrumb">
					<ul>
						<!--<li class="first" ><a href="index.php" >Home</a></li>
						<li>Marketing</li>-->
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
            
			
            {if $productDetails.productid eq 17} 
					<div class="app-box-main" style="max-width:850px;">
                    
                    {else}
                    
                    <div class="app-box-main" >
                    {/if}
				
                <div class="title-box">
				<h2>{$Name1} <span>{$Name2}</span></h2>	
				
				<ul class="steps" >
					<li  ><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
                    {if $productDetails.productid eq 17}
					<li class="active"><label>Step</label><span><span>2</span><label>Add logo</label></span></li>
                    {else}
                    <li class="active" ><label>Step</label><span><span>2</span><label>Add content</label></span></li>
                    {/if}
					
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
                    <div class="clear-both"></div>
				</ul>
            </div>
{if $productDetails.productid eq 17} 
<div id="desc">
    <div class="field" >&nbsp;</div>
    <div class="field" style="font-family:Verdana, Geneva, sans-serif; font-weight:bold;  margin-top:5px;">Would you prefer personalised logo?</div>
	  <div class="field" style="font-family:Verdana, Geneva, sans-serif;  margin-top:5px;">
                                              
		<input type="radio" name="uploadFile" id="uploadFileNo" value="no" checked="checked" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>&nbsp;No
        <input type="radio" name="uploadFile" id="uploadFileYes" value="yes" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>&nbsp;Yes
        
        										 </div>
      <div id="fileShow" style="display:none; margin-top:10px;">
            <!--<input type="file" name="fileUpload" id="fileUpload" />-->
            <div id="fileadd" style="width:300px;">
            <input id="fileToUpload" type="file"  name="fileToUpload" class="input" style="cursor:pointer;"/>
           </div>
            <div style="margin:0px 0px 0px 0px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; width:350px">
            <br/>
            <input type="button" id="buttonUpload" onClick="return ajaxFileUpload();" style="background:url(images/uploadnownew.png); height:42px; width:125px;" style="margin-top:10px; cursor:pointer;"/>
            <font style="margin:0px 0px 0px 5px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">[png/jpg/jpeg/pjpeg/gif]</font>
            
            <!--<input type="button" class="" name="uploadNow" id="uploadNow" value="upload Now" onclick="fileup();"/>-->
            </div>
            <div class="tab-content-draggable" style="width:200px; height:80px; position:absolute; left:350px; margin-top:-80px;"></div>
            </div> 
    </div>
{/if}
            
           {if $productDetails.productid eq 17} 
             <div class="title-box">
             
             <h2 style="width:100%; float:right;">
            <font style=" font-family:Verdana, Geneva, sans-serif; font-weight:bold; margin:12px 0px 0px 350px; font-size:12px; position:absolute;" id="calName"></font>
                <input name="AddCart" id="AddCart" type="image" src="images/order_now.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:block;">
                    <input name="ChangeTemplate" type="image" src="images/change_template.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;">
                    </h2></div>
                    {/if}
				
				<div class="content-adding box-style-light-gray " >

					{if $productDetails.productid eq 17} 
					<div class="add-content-editor" style="height:auto; background-color:#eee;">
                    {else}
                    <div class="add-content-editor" style="">
                    {/if}
						{if $productDetails.productid neq 16} 
							<div class="form-box" >
							{if $productDetails.productid neq 17} 
                            <div class="form-wrapper" >
								<!-- Business card form start -->
                                		
                                			<div class="fields"><font color="#37C6EB" size="-1"><strong>(Use Tab or click outside box to preview each field)</strong></font></div>
                                		
										{if $productDetails.productid eq 1} 
											<div class="fields" >
											<label>Name</label>
											<div class="field" >
                                            	{if $fldname != ''}
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
                                                {else}
                                              	<input name="fldname" type="text" id="fldname1" value="FirstName LastName" onclick="blankThat(this.id);" title="FirstName LastName"/>
                                                {/if}
                                                
											</div>
										</div> 
										
											<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
                                            	{if $flddesig != ''}
												<input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
                                                {else}
                                              	<input name="flddesig" type="text" id="flddesig1"  value="Designation" onclick="blankThat(this.id);" title="Designation"/>
                                                {/if}
												
											</div>
										</div>
										
											<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
                                            {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            {/if}
												
											</div>
										</div>
										
											<div class="fields" >
											<label>Website</label>
											<div class="field" >
                                             {if $fldwebsite != ''}
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
                                                {else}
                                              	<input name="fldwebsite" type="text" id="fldwebsite1"  value="Website" onclick="blankThat(this.id);"  title="Website"/>
                                            {/if}
												
											</div>
										</div>
										
											<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
                                            {if $fldmobile != ''}
                                            <input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
                                            {else}
                                            <input name="fldmobile" type="text" id="fldmobile1"  value="Mobile Number" onclick="blankThat(this.id);"  title="Mobile Number"/>
                                            {/if}
												
											</div>
										</div>
										
											<div class="fields" >
											<label>Telephone / Other</label>
											<div class="field" >
                                            	 {if $fldteleno != ''}
                                                <input name="fldteleno" type="text" id="fldteleno" value="{$fldteleno}" />
                                                {else}
                                                <input name="fldteleno" type="text" id="fldteleno1"  value="Telephone" onclick="blankThat(this.id);" title="Telephone"/>
                                           		{/if}
												
											</div>
										</div>
										

											<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
                                            {if $fldemail != ''}
                                               <input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
                                                {else}
                                                <input name="fldemail" type="text" id="fldemail1"  value="E-mail" onclick="blankThat(this.id);"  title="E-mail"/>
												{/if}
                                                
											</div>
										</div>
										
											<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
                                            {if $fldaddline1 != ''}
                                               	<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
                                                {else}
                                                <input name="fldaddline1" type="text" id="fldaddline11"  value="Address 1" onclick="blankThat(this.id);"  title="Address 1"/>
												{/if}
                                                
												
											</div>
										</div>
										
											<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
                                           		{if $fldaddline2 != ''}
                                               	<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
                                                {else}
                                                <input name="fldaddline2" type="text" id="fldaddline21"  value="Address 2" onclick="blankThat(this.id);"   title="Address 2"/>
												{/if}
                                                
												
											</div>
										</div>
								
                                			<div class="fields" >
											<label>Address 3</label>
                                          
											<div class="field" >
                                            {if $fldaddline2 != ''}
                                               <input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
                                                {else}
                                                <input name="fldaddline3" type="text" id="fldaddline31"  value="Address 3" onclick="blankThat(this.id);"   title="Address 3"/>
												{/if}
                                       <!--<h4> >> Preview</h4>-->
                                                <div><font size="-2" > (may not be available in all designs) </font></div>
											</div>
                                            </div>
                                            
                                        {/if}
                                        <!-- Business card form End -->
                                        
                                        <!-- Letter heads card form start -->
                                        {if $productDetails.productid eq 3} 
                  
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
                                            {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            {/if}
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Website</label>
											<div class="field" >
                                             {if $fldwebsite != ''}
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
                                                {else}
                                              	<input name="fldwebsite" type="text" id="fldwebsite1"  value="Website" onclick="blankThat(this.id);"  title="Website"/>
                                            {/if}
												
											</div>
										</div>
										
		
										<div class="fields" >
											<label>Telephone / Other</label>
											<div class="field" >
                                            	 {if $fldteleno != ''}
                                                <input name="fldteleno" type="text" id="fldteleno" value="{$fldteleno}" />
                                                {else}
                                                <input name="fldteleno" type="text" id="fldteleno1"  value="Telephone" onclick="blankThat(this.id);" title="Telephone"/>
                                           		{/if}
												
											</div>
										</div>
										

										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
                                            {if $fldemail != ''}
                                               <input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
                                                {else}
                                                <input name="fldemail" type="text" id="fldemail1"  value="E-mail" onclick="blankThat(this.id);"  title="E-mail"/>
												{/if}
                                                
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
                                            {if $fldaddline1 != ''}
                                               	<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
                                                {else}
                                                <input name="fldaddline1" type="text" id="fldaddline11"  value="Address 1" onclick="blankThat(this.id);"  title="Address 1"/>
												{/if}
                                                
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
                                           		{if $fldaddline2 != ''}
                                               	<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
                                                {else}
                                                <input name="fldaddline2" type="text" id="fldaddline21"  value="Address 2" onclick="blankThat(this.id);"   title="Address 2"/>
												{/if}
                                                
												
											</div>
										</div>
								
                                		<div class="fields" >
											<label>Address 3</label>
                                          
											<div class="field" >
                                            {if $fldaddline3 != ''}
                                               <input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
                                                {else}
                                                <input name="fldaddline3" type="text" id="fldaddline31"  value="Address 3" onclick="blankThat(this.id);"   title="Address 3"/>
												{/if}
                                       <!--<h4> >> Preview</h4>-->
                                                <div><font size="-2" > (may not be available in all designs) </font></div>
											</div>
                                            </div>
                                        
                                        {/if}
                                         <!-- Letter heads card form end -->
                                       
                                       <!-- Envelopes  form start -->
                                        {if $productDetails.productid eq 10} 
           
                                            
                                            <div class="fields" >
                                                <label>Company Name</label>
                                               <div class="field" >
                                            {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            {/if}
												
											</div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Website</label>
                                                <div class="field" >
                                             {if $fldwebsite != ''}
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
                                                {else}
                                              	<input name="fldwebsite" type="text" id="fldwebsite1"  value="Website" onclick="blankThat(this.id);"  title="Website"/>
                                            {/if}
												
											</div>
                                            </div>
                                            
                         
                                            <div class="fields" >
                                                <label>Telephone / Other</label>
                                               <div class="field" >
                                            	 {if $fldteleno != ''}
                                                <input name="fldteleno" type="text" id="fldteleno" value="{$fldteleno}" />
                                                {else}
                                                <input name="fldteleno" type="text" id="fldteleno1"  value="Telephone" onclick="blankThat(this.id);" title="Telephone"/>
                                           		{/if}
												
											</div>
                                            </div>
                                            
                                         
                                            
                                            <div class="fields" >
                                                <label>E-mail</label>
                                               <div class="field" >
                                           		 {if $fldemail != ''}
                                               <input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
                                                {else}
                                                <input name="fldemail" type="text" id="fldemail1"  value="E-mail" onclick="blankThat(this.id);"  title="E-mail"/>
												{/if}
                                                
											</div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Address 1</label>
                                               <div class="field" >
                                            	{if $fldaddline1 != ''}
                                               	<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
                                                {else}
                                                <input name="fldaddline1" type="text" id="fldaddline11"  value="Address 1" onclick="blankThat(this.id);"  title="Address 1"/>
												{/if}
                                                
												
											</div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Address 2</label>
                                               <div class="field" >
                                           		{if $fldaddline2 != ''}
                                               	<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
                                                {else}
                                                <input name="fldaddline2" type="text" id="fldaddline21"  value="Address 2" onclick="blankThat(this.id);"   title="Address 2"/>
												{/if}
                                                
												
											</div>
                                            </div>
                                    
                                    
                                        {/if}
                                         <!-- Envelopes  form end -->
                                        
                                         
                                         
							</div>
                            {/if}
						</div>
  {if $productDetails.productid neq 17}  						
							<div class="preview-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Front</a></li>
										</ul>
                                     
                                        
										<div class="tab-content" >
                            <img src="uploads/template_images/{$imageName}" id="vcimgLog" style="height:1px; width:1px; display:none;"/>
							<img src="uploads/template_images/{$imageName}" id="vcimg" width="442" style="border: 1px solid #EEEEEE;" />
												
										</div>
																		
									</div>
						</div>
  {/if}
  {if $productDetails.productid eq 17}                  

  
<div class='main_image' id='main_image' style="margin-left:75px;">
<ul>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/0.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/1.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/2.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/3.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/4.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/5.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/6.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/7.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/8.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/9.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/10.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/11.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/12.png" /></div></li>

</ul>
</div>


 {/if}

                        
                  
                        {else}
                        
                        
                        	<div class="previewD-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Diary</a></li>
										</ul>
                                         <div class="tab-content-draggable" style="margin: 5px;">
                                         
										<div class="tab-content" style=" height:630px; width:900px;">
                                        <img src="uploads/template_images/{$imageName}" id="vcimgLog" style="height:1px; width:1px; display:none;"/>
												<img src="uploads/template_images/{$imageName}" id="vcimg" width="900" height="628" style="border: 1px solid #EEEEEE;" />
										</div>
                                        </div>
																				
									</div>
						</div>
                        
                        	<div class="clear_both"></div>
                            
                        	<div class="form-box" >
							<div class="form-wrapper" >
								<!-- Business card form start -->
                                
                                <div class="fields"><font color="#37C6EB" size="-1"><strong>(Use Tab or click outside box to preview each field)</strong></font></div>
                                
                                         <!-- Diary  form start -->
                                        {if $productDetails.productid eq 16} 
                                            <div class="fields" >
                                                <label>Name</label>
                                                <div class="field" >
                                                  {if $fldname != ''}
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
                                                {else}
                                              	<input name="fldname" type="text" id="fldname1" value="FirstName LastName" onclick="blankThat(this.id);" title="FirstName LastName"/>
                                                {/if}
                                                </div>
                                                
                                                 <div class="field" style="display:none;">
                                               <img src="images/indraArrow.png" alt="Preview" title="Preview"  class="genarate" style="width:15px; margin:5px 0px 0px 30px; cursor:pointer;" />
                                                </div>
                                                
                                                
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Company Name</label>
                                                
                                             <div class="field" >
                                              {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            	{/if}
                                                </div>
                                                  <div class="field" style="display:none;">
                                               <img src="images/indraArrow.png" alt="Preview" title="Preview" class="genarate" style="width:15px; margin:5px 0px 0px 30px; cursor:pointer;" />
                                                </div>
                                                
                                            </div>
                                              <div class="fields" >
                                                <label>Logo</label>
                                                
                                             <div class="field" style="margin-bottom:15px;">
                                              
		<input type="radio" name="uploadFile" id="uploadFile" value="no" checked="checked" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>No
        <input type="radio" name="uploadFile" id="uploadFile" value="yes" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>Yes
        
        										 </div>
                                                 
            								<div id="fileShow" style="display:none; margin-top:35px;">
           
            <div id="fileadd" style="width:300px;">
            <input id="fileToUpload" type="file"  name="fileToUpload" class="input" style="cursor:pointer;"/>
           </div>
            <div>
            <input type="button" id="buttonUpload" onClick="return ajaxFileUpload();" value="Upload" style="margin-top:10px; cursor:pointer;"/>
  
            </div>
            </div>                                              
             </div>
                                           
                                               
                                            </div>
                                            
                                        {/if}
                                         <!-- Diary  form end -->
                                         
							</div>
						</div>   
                        
						{/if}
					</div>
					
				</div>
				
				<div class="actions" >
                {if $productDetails.productid eq 17} 
                <input name="cal" id="cal" type="hidden" value= "1" />
                {/if}
                    <input name="t" type="hidden" value= "{$tempalteDetails.templatebasename}" />
                    <input name="myimg" type="hidden" id="myimg" value= "" />
                    <input type="hidden" name="product_id" id="product_id" value="{$productDetails.productid}" />
                    <input type="hidden" name="template_id" id="template_id" value="{$tempalteDetails.templateid}" />
                    <input type="hidden" name="current_tempalte_id" id="current_tempalte_id" value="{$current_tempalte_id}" />
                    <input type="hidden" name="item_id" id="item_id" value="{$current_item_id}" />
                    <input type="hidden" name="cart_id" id="cart_id" value="{$cartItemsList.cartid}" />
                    <input type="hidden" name="tempalte_category_id" id="tempalte_category_id" value="{$tempalte_category_id}" /> 
					
                    <input type="hidden" name="FileUpload1" id="FileUpload1" value="" />
                    <input type="hidden" name="sizelogow" id="sizelogow" value="" />
                    <input type="hidden" name="sizelogoh" id="sizelogoh" value="" />
                    <input type="hidden" name="logox" id="logox" value="" />
                    <input type="hidden" name="logoy" id="logoy" value="" />
                    <input type="hidden" name="current_product_folder" id="current_product_folder" value="{$current_product_folder}" />
                    <input type="hidden" name="current_product_type" id="current_product_type" value="{$current_product_type}" />
                   
                    
                 {if $productDetails.productid neq 17} 
					<input name="AddCart" id="AddCart" type="image" src="images/btn_done.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:none;"  />
                {else}
                    <input name="AddCart" id="AddCart" type="image" src="images/order_now.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:block;"  />
                 {/if}       
                    <input name="ChangeTemplate" type="image" src="images/change_template.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;"  />
                    {if $productDetails.productid neq 17}
					<div style="clear:both; text-align:right"> (Your details will be saved)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div> 
                   {/if}
				</div>
					
			</div>
            </form>
            
         
                       
		</div>
        {if $productDetails.productid eq 17} 
        <div class="clear_both">&nbsp;</div>
        <div class="clear_both">&nbsp;</div>
         <div class="clear_both">&nbsp;</div>
          <div class="clear_both">&nbsp;</div>
           <div class="clear_both">&nbsp;</div>
        {/if}
         

  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}