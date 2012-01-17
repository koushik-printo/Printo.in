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
            <h2 style="padding-left:0;">User <span>Dashboard</span></h2>
            <h3>Welcome to your personal area! </h3>
            You may use this section to keep your details updated, track your files and also track your orders.<br/>
          If there is something that you would like us to include in this section, please email us at <a href="mailto:online@printo.in">online@printo.in.</a>
          <br/>
          <br/>
          <br/>
          <br/><br/>
          <br/>
          <br/>
          </div>
          <h4><!--products end--> 
          </h4>
        </div>
      </div>
    </div>
  </div>
  <div id="footer_frame" >
    <h4>
      {include file="bottom.tpl"}
    </h4>
  </div>
</div>

{include file="footer.tpl"}
