{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="content-box-main" >
      <div class="content-box-l" >
        {include file="user_left.tpl"}
      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
        
          <!--products start-->
          <div class="products box-style-light-gray" >
            <h2  style="padding-left:0px;">Update <span>Profile</span></h2>
            <form name="form1" method="post" action="" class="label-horizontal" >
            {if $err_msg ne ''}
            <div class="fields" >
											<label>&nbsp;</label>
											<div class="field" >
												{$err_msg}
											</div>
										</div>
                               {/if}         
										{if $action_message ne ''}
            	<div class="fields" >
											<label>&nbsp;</label>
											<div class="field" >
												{$action_message}
											</div>
										</div>
                               {/if}
										<div class="fields" >
											<label>Email</label>
											<div class="field" >
												{$cur_user_email}<input type="hidden" class="big" name="user_email" value="{$cur_user_email}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>First Name</label>
											<div class="field" >
												<input type="text" class="big" name="user_fname" value="{$cur_user_fname}" />
											</div>
										</div>
										
                                        <div class="fields" >
											<label>Last Name</label>
											<div class="field" >
												<input type="text" class="big" name="user_lname" value="{$cur_user_lname}" />
											</div>
										</div>
                                        
										<div class="fields" >
											<label>Phone</label>
											<div class="field" >
												<input type="text" name="user_phone" value="{$cur_user_phone}" />
											</div>
										</div>
										
                                        <div class="fields" >
											<label>Address</label>
											<div class="field" >
												<textarea name="user_address" class="big"  rows="5" cols="40">{$cur_user_address}</textarea>
											</div>
										</div>
                                        
                                        <div class="fields" >
											<label>City</label>
											<div class="field" >
												<input type="text" name="user_city" value="{$cur_user_city}" />
											</div>
										</div>
                                        <div class="fields" >
											<label>State</label>
											<div class="field" >
												<input type="text" name="user_state" value="{$cur_user_state}" />
											</div>
										</div>
                                        <div class="fields" >
											<label>Pincode</label>
											<div class="field" >
												<input type="text" name="user_pincode" value="{$cur_user_pincode}" />
											</div>
										</div>
                                        
										<div class="fields" >
											<label>&nbsp;</label>
											<div class="field" >
                                                <input name="UpdateProfile" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " />
											</div>
										</div>
										
																	
								</form>
          </div>
          <!--products end--> 
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
