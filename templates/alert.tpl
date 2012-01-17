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
        {include file="left_nav.tpl"}
      </div>
      <div class="content-box-r" >
        <div class="inner-wrapper" > 
          <!--products start-->
          <div class="products box-style-light-gray" >
            <p><font color="#F79321" size="+2">Thank you!</font></p>
           <p><font size="+1" color="898989">
           
            {$actionmessage}
            {$googletext}
            </font>
            </p>
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
