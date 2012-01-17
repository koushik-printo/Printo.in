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
            <h2 style="padding-left:0;">My <span>Files</span> </h2>
         
            <div class="listing_row">
			
			<form name="frm" action="" method="post">
			
            <table width="100%" border="0" cellspacing="1" cellpadding="5">
            <tr style="font-size:13px; font-weight:bold; color:#FFF;">
              <td width="6%" bgcolor="#229ed8" >No</td>
    <td bgcolor="#229ed8" >File Name</td>
    <td bgcolor="#229ed8">Type of File</td>
    <td bgcolor="#229ed8">No of Pages </td>
    <td bgcolor="#229ed8">Page Size </td>
    <td bgcolor="#229ed8">Product Name</td>
	 <td bgcolor="#229ed8">Order /Request <br /> Quote</td>
  </tr>
  {if $userFilesList ne ''}
            {section name=nr loop=$userFilesList}
			
			{assign var=val value=$val+1}
  <tr bgcolor="{cycle values="#ebebeb,#f4f4f4"}">
    <td><input type="checkbox" name="chk_product[]" value="{$userFilesList[nr].fileid}"   />&nbsp;{$val}</td>
    <td>{if $userFilesList[nr].originalname eq ''}
    {$userFilesList[nr].filename}
    {else}
    {$userFilesList[nr].originalname}
    {/if}    </td>
    <td>{$userFilesList[nr].filetype}</td>
    <td>{if $userFilesList[nr].noofpages eq ''}N/A{else}{$userFilesList[nr].noofpages}{/if}</td>
    <td>{if $userFilesList[nr].pagesize eq '' or $userFilesList[nr].pagesize eq '0.00 x 0.00'}N/A{else}{$userFilesList[nr].pagesize}{/if}</td>
    <td>{if $userFilesList[nr].uploadmode eq 'plupload'}
	<select name="product_ids[]" style="width:160px; border:none;">
    <option value="">Choose Product</option>
	{section name=nr1 loop=$productList}
	<option value="{$productList[nr1].productid}_{$userFilesList[nr].fileid}" {if $userFilesList[nr].productid eq $productList[nr1].productid} selected {/if} >{$productList[nr1].productname}</option>
	{/section}
	</select> {else} {$userFilesList[nr].productname}  {/if}	</td>
	<td>{if $userFilesList[nr].uploadmode eq 'plupload'}
    <a href="request_quote.php?uid={$userFilesList[nr].userid}&fid={$userFilesList[nr].fileid}">Enquire Now</a>
    {else}
    <a href="user_files_reorder.php?ufile={$userFilesList[nr].fileid}&pid={$userFilesList[nr].productid}">Order Now</a>
    {/if}    </td>
  </tr>
  {/section}
  {else}
   <tr>
    <td colspan="7">No Files Added</td>
  </tr>
   {/if}
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  	<td colspan="5"><table width="50%" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td>
          {if $userFilesList ne ''}
          <input name="updatefile" type="image" src="images/btn_update_files.jpg" style="background:none; border:none; padding:0; " />{/if}</td>
          <td>{if $userFilesList ne ''}
          <input name="deletefile" type="image" src="images/btn_delete-file.jpg" style="background:none; border:none; padding:0; " />{/if}</td>
          <td><a href="user_upload_files.php"><img src="images/btn_upload_new-files.jpg" border="0" /></a></td>
        </tr>
      </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
			</form>
 </div>
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
