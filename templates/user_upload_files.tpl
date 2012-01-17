{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="js/pluploads/jquery.ui.plupload/css/jquery.ui.plupload.css" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://bp.yahooapis.com/2.4.21/browserplus-min.js"></script>

<script type="text/javascript" src="js/pluploads/plupload.js"></script>
<script type="text/javascript" src="js/pluploads/plupload.silverlight.js"></script>
<script type="text/javascript" src="js/pluploads/plupload.gears.js"></script>
<script type="text/javascript" src="js/pluploads/plupload.flash.js"></script>
<script type="text/javascript" src="js/pluploads/plupload.browserplus.js"></script>
<script type="text/javascript" src="js/pluploads/plupload.html4.js"></script>
<script type="text/javascript" src="js/pluploads/plupload.html5.js"></script>
<script type="text/javascript" src="js/pluploads/jquery.ui.plupload/jquery.ui.plupload.js"></script>

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
            <h2 style="padding-left:0;">Upload<span> Files</span></h2>
            
          
            <form  method="post" action="user_upload_files_check.php">
	<div id="uploader">
		<p>You browser doesn't have Flash, Silverlight, Gears, BrowserPlus or HTML5 support.</p>
	</div><br /><br />
    <input name="Submit" type="image" src="images/btn_submit.jpg" style="background:none; border:none; padding:0; " />
    <input name="product_id" type="hidden" value="{$product_id}" />
</form>
{literal}
<script type="text/javascript">
// Convert divs to queue widgets when the DOM is ready
alert($.browser.mozilla);
$(function() {
	$("#uploader").plupload({
		// General settings
		runtimes : 'flash,browserplus,silverlight,gears,html4',
		url : 'includes/utility/upload.php',
		max_file_size : '1000mb',
		max_file_count: 20, // user can add no more then 20 files at a time
		chunk_size : '1mb',
		unique_names : true,
		multiple_queues : true,

		// Resize images on clientside if we can
		resize : {width : 320, height : 240, quality : 90},
		
		// Rename files by clicking on their titles
		rename: true,
		
		// Sort files
		sortable: true,

		// Specify what files to browse for
		filters : [
			{title : "Image files", extensions : "jpg,gif,png,jpeg"},
			{title : "PDF files", extensions : "pdf"},
			{title : "Design files", extensions : "cdr,ai,tiff"},
			{title : "Zip files", extensions : "zip,rar"}
		],

		// Flash settings
		flash_swf_url : 'js/pluploads/plupload.flash.swf',

		// Silverlight settings
		silverlight_xap_url : 'js/pluploads/plupload.silverlight.xap'
	});

	// Client side form validation
	$('form').submit(function(e) {
		var uploader = $('#uploader').plupload('getUploader');

		// Validate number of uploaded files
		if (uploader.total.uploaded == 0) {
			// Files in queue upload them first
			if (uploader.files.length > 0) {
				// When all files are uploaded submit form
				uploader.bind('UploadProgress', function() {
					if (uploader.total.uploaded == uploader.files.length)
						$('form').submit();
				});

				uploader.start();
			} else
				alert('You must at least upload one file.');

			e.preventDefault();
		}
	});

});
</script>
{/literal}
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
