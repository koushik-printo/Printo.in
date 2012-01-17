{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<META HTTP-EQUIV="refresh" CONTENT="4">
<script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>
<script type="text/javascript" src="/printo.in/v1_2/js/poll_plugin.js"></script>
{literal}
<script language="javascript">
function startpoll(tid,fname) {
	  // Start a polling loop with an id of 'loop' and a counter.
	  var i = 0;
	    $.doTimeout( 'loop', 1000, function(){
			//--		
		  $.post("/printo.in/cude/getpdfstatus.asp?filename="+fname, function(data) {
		 //alert(data);
							 var myval=data.substring(0,7);
							// alert(myval);
					if (myval == "Success") {
						//document.location.href="cart_user_files_preview.php?dt="+data;
						document.location.href="cart_user_files_preview.php?itemid="+tid+"&dt="+data;
						//return true; 
					};
			//--
			});

		});
};
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
          <li>Upload Process</li>
        </ul>
      </div>
				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
          <div class="inner-page-content-l box-style-light-gray" >
            <h2 style="padding-left:19px">Upload Process</h2>
            <p>&nbsp;</p>
<p><img src="/printo.in/cude/res/gears_animated.gif" width="141" height="141" /></p>
<p>PROCESSING YOUR FILE </p>
{literal}
<script language="javascript">
  startpoll({/literal}{$current_item_id}{literal},{/literal}"{$current_filename}"{literal});
</script>
{/literal}
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
