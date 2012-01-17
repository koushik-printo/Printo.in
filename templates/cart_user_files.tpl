{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<!-- <script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>-->
 {literal}
 <script language="javascript">
$.post("/printo.in/v1_2/getsession.asp");
</script>

<script type="text/javascript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
        </script>
        
{/literal}

<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" > 
    <!--<div class="breadcrumb" ></div>-->
    <div class="app-box-main" >
    <div class="title-box">
      <h2>Custom <span>Uploads</span></h2>
      <ul class="steps" >
        <li class="active" >
          <label>Step</label>
          <span><span>1</span>
          <label>Upload Your File</label>
          </span></li>
        <li>
          <label>Step</label>
          <span><span>2</span>
          <label>Review Your File</label>
          </span></li>
        <li>
          <label>Step</label>
          <span><span>3</span>
          <label>Confirm Order</label>
          </span></li>
          <div class="clear-both"></div>
      </ul>
      </div>
      <div class="template-chooser box-style-light-gray " >
       
        
        <div class="templates-list" >
          <div class="templates" >
            <div class="templates-wrapper" >
              
            </div>
          </div>
          <div class="align-center" style="width:780px;">
          
          <div style="float: left; min-width: 380px; text-align: center;">{$catImage}</div>
          
          <div class="preview" style="width:380px; float:left; padding-left:20px;">
            <div class="preview-wrapper">
            <form name="form1"  method="post" action="" enctype="multipart/form-data">
              <div class="glow-bg">
               <h2 style="padding-left:0;" >{$Name1} <span></span></h2>
               <!--{if $userFilesList ne ''}
               {section name=kr loop=$userFilesList}
		<p><input name="userselfile" type="radio" value="{$userFilesList[kr].fileid}" />&nbsp;&nbsp;{$userFilesList[kr].filename}</p>
        {/section}
        <p>OR</p>
         {/if} -->
                {if $err_msg ne ''}
                             <div class="fields">
                             <label>{$err_msg}</label>
                             </div>
                             {/if}
                 <div class="fields" style="padding-top:30px;" >
                  <label style="float:left; padding-top:4px; padding-right:10px;">Choose your file:</label>
                  <div class="field" style="float:left;" >
                    <input name="userfile" type="file" /><input name="product_id" type="hidden" value="{$product_id}" /><br/><br /><img src="images/Logo_icons.png" alt="Allowed Extensions: .PDF, .AI, .PSD, .CDR, .INDD, .TIFF" height="25px" vspace="5px" border="0"/>
					<!--Please use PDF. AI, cdr, Indd. file only Only PDFs please!-->
                  </div>
				  <div class="clear_both"></div>
                </div>
                  <div class="actions" >
                 
                   <!--<a href="#" onclick="MM_openBrWindow('{$artfilename}','{$Name1}{$Name2}','scrollbars=yes,width=650,height=500')" ><img src="images/btn_upload-specification.jpg"/></a>-->
                   <div class="clear_both"></div>
                   <div style="padding-top:30px;">
<div style="padding-left:0px; float:left; padding-top:8px;"><a href="#" style="float:none; margin:0; " onclick="MM_openBrWindow('{$artfilename}','{$Name1}{$Name2}','scrollbars=yes,width=650,height=500')" >Artwork Specification</a><br/> (.PDF, .AI, .PSD, .CDR, .INDD, .TIFF)</div>
					
                    <div>
                     <input name="UploadNow" type="image" src="images/btn-upload-now.jpg" style="background-image:none; padding:0; margin-left:10px; margin-bottom:0; margin-right:0;  border:none; float:right;"  />
                    </div>
					</div>
                   <div class="clear_both"></div>
                  </div>
                <div class="clear_both"></div>
                <div class="back">  </div>
              </div>
              </form>
            </div>
          </div>
<div style="clear:both;">
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
