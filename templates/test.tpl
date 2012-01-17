{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type='text/javascript' src="js/main/jquery.easySlider1.5.js"></script>
<script type='text/javascript'>
function populateIframe(id,path){
	
			ifrm = document.getElementById(id);
			//ifrm.src = "includes/download.php?path="+path;
			ifrm.src = "includes/download.php?path=genFile/genSave/1234.pdf";
}


</script>

{/literal}


                        
<iframe id="frame1" style="display:none"></iframe>
<div id="displayoverlay" style="position:fixed; height:1px; width:1px; z-index:1000;"></div>
<div id="hiddenImg" style="height:1px; width:1px; display:none;"></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  <div id="content_frame" >
		
			<div class="content-box-main" >
				

				
					<div class="content-box-l" >
        {include file="left_nav.tpl"}
      </div>
					<div class="content-box-r" >
        <div class="inner-wrapper" >
        
         
          <!--<div class="inner-page-content-l box-style-light-gray" >-->
            <h2>Enquery <span>List</span></h2>
            <div class="product-details-tab" >
              
              <div class="tab-content" >
                <div id="tab01">
              
                  <div id="a5_cal">
                  {section name=nr loop=$tblenquiryList}
                  {assign var=name value=$tblenquiryList[nr].Name}
                  {assign var=email value=$tblenquiryList[nr].email}
                  {assign var=product value=$tblenquiryList[nr].product}
                  {assign var=quantity value=$tblenquiryList[nr].quantity}
                  {assign var=amount value=$tblenquiryList[nr].amount}
                  {assign var=date value=$tblenquiryList[nr].assignedTime}
                  {assign var=description value=$tblenquiryList[nr].description}
                  {assign var=attachment value=$tblenquiryList[nr].attachment}
                  
                  
                  
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-bottom:20px;">
                    <thead>
                      <tr>
                        <td width="110">Query</td>
                        <td width="200">&nbsp;</td>
                        <td width="200">&nbsp;</td>
                        <td width="200">&nbsp;</td>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Name : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; ">{$name}</td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Email : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$email}</td>
                      </tr>
                       <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Product : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$product}</td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Quantity : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$quantity}</td>
                      </tr>
                       <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Amount : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$amount}</td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Date : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$date}</td>
                      </tr>
                       <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Description : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">
                        <span style="width: 150px; max-height: 70px; padding-left: 5px; padding-right: 5px; float: left; overflow: auto;">
                        {$description}</span>
                        </td>
                        <td align="left" valign="top" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">
                        <a href="javascript:populateIframe('frame1','{$attachment}')">
                        <img src="images/attachment.png" height="18" style="outline:none; border: 0px solid #EEE; box-shadow: 0 0 0px #aaa;
                        -moz-box-shadow: 0 0 0px #aaa; -webkit-box-shadow: 0 0 0px #aaa; cursor:pointer" title="Download Attachment" 
                        alt="Download Attachment" class="download_file"/></a></td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$attachment}
                        <input type="hidden"  value="{$attachment}"/></td>

                      </tr>
                      
                      </tbody>
                  </table>
                  
                  {/section}
                  
                  
                  {section name=nr loop=$responsedataList}
                  {assign var=responserName value=$responsedataList[nr].responserName}
                  {assign var=responseTime value=$responsedataList[nr].responseTime}
                  {assign var=estAmount value=$responsedataList[nr].estAmount}
                  {assign var=estDelivery value=$responsedataList[nr].estDelivery}
                  {assign var=responseData value=$responsedataList[nr].responseData}
                  
                  
                  
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-bottom:20px;">
                    <thead>
                      <tr>
                        <td width="110">Response</td>
                        <td width="200">&nbsp;</td>
                        <td width="200">&nbsp;</td>
                        <td width="200">&nbsp;</td>
                        
                      </tr>
                    </thead>
                    
                    <tbody>
                      <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Response By : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; ">{$responserName}</td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Date : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$responseTime}</td>
                      </tr>
                      <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Amount : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$estAmount}</td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Delivery Estimation : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">{$estDelivery} {if $estDelivery > 1}days {else} day{/if}
                        </td>
                      </tr>
                       <tr>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">Description : </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">
                        <span style="width: 150px; max-height: 70px; padding-left: 5px; padding-right: 5px; float: left; overflow: auto;">
                        {$responseData}</span>
                        </td>
                        <td align="left" valign="top" style="font:Verdana, Geneva, sans-serif; font-weight:bold;">&nbsp;
                        </td>
                        <td align="left" valign="middle" style="font:Verdana, Geneva, sans-serif;">&nbsp;</td>
                      </tr>
                      
                      </tbody>
                  </table>
                  
                  {/section}
                                 
                  
                  </div>
                </div>
              </div>
            </div>
            
          <!--</div>-->
        </div>
      </div>
			</div>
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
