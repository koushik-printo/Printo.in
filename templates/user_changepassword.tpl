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
            <h2 style="padding-left:0px;">User <span>Change Password</span></h2>
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
											<label>Old Password</label>
											<div class="field" >
												<input type="password" name="old_password" value="{$cur_old_password}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Password</label>
											<div class="field" >
												<input type="password" class="big" name="user_password" value="{$cur_user_password}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>Confirm Password</label>
											<div class="field" >
												<input type="password" name="confirm_password" value="{$cur_confirm_password}" />
											</div>
										</div>
										
										<div class="fields" >
											<label>&nbsp;</label>
											<div class="field" >
                                                 <input name="ChangePassword" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " />
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
