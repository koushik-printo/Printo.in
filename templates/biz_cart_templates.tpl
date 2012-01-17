{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type="text/javascript" src="js/jquery-plus-jquery-ui.js"></script>
<script type="text/javascript" src="/printo.in/v1_2/js/jquery.selectbox-0.6.1.js"></script>	
<script type="text/javascript">

function MM_jumpMenu(targ,selObj,restore){ 
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}


$(function(){
	
	if(!$.browser.msie) { 
//	 $('.app-box-main').css('width','850px');
	}
	else {
	$('.app-box-main').css('width','920px');
	$('#pagiHead').find('tr td').css('width','50%');
	$('.title-box').find('h2').css('width','95%');
	$("#tempList").css('width','920px');
	}
	//alert($.browser.name);
	if($.browser.msie){
	if(document.documentMode && document.documentMode < 8) {
		
		$("#tempList").css('width','920px');
		
		
		} 
	
	}


		$('div.templates-wrapper a').bind('mouseover', function(event, ui)
			{
				var target = $('div.templates-wrapper a.active');
				target.removeClass('active').css('cursor','pointer').attr('alt','Click to Proceed').attr('title','Click to Proceed');
				var target = $(event.currentTarget);
				target.addClass('active'); 
				var target = $('img#frontpreview').attr('src',this.id);
			
				
			}
		);
		
		$('div.templates-wrapper a').bind('click', function(event, ui)
			{
				var name=this.name;
							
				var calType=$('#calType').val();
				window.location="bizCardDesign.php?name="+name;
				
				
			}
		)
		

	if($("select").length>0)
	$("select").selectbox();

	if($("img#frontpreview").length>0) {
 	var session_bc_t = 
	jQuery("a#"+session_bc_t).addclass("active");
	jQuery('img#frontpreview').attr('src',"images/"+ session_bc_t +".jpg");
	}
	
 });


</script>
{/literal}


<input type="hidden" name="calType" id="calType" value="A5"/>
<input type="hidden" name="imageFolder" id="imageFolder" value=""/>
<!-- Load Sample Style Sheet ( You can delete this line if you don't need it. ) -->
<link type="text/css" href="css/ui-sui.css" rel="stylesheet">
<div id="hiddenFlds" style="position:absolute; width:1px; height:1px; display:none;"></div>
<div id="displayoverlay" style="position:absolute; width:1px; height:1px; z-index:1000;"></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>

  <div id="content_frame" >
			<!--<div class="breadcrumb" ></div>-->
            {if $cur_product_id!='17' && $cur_product_id!='16'}
            <div class="breadcrumb">
					<ul>
						<li class="first" ><a href="index.php" >Home</a></li>

						<li>Products</li>
						<li class="last">
                        	{if $cur_product_id=='3'}
                            Letter Heads
                            {elseif $cur_product_id=='1'}
                            Business Cards
                            {elseif $cur_product_id=='10'}
                            Envelopes
                            {elseif $cur_product_id=='16'}
                            Diary
                            {/if}
                        </li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
            {/if}
            
            
			<div class="app-box-main" >
				
				
                <div class="title-box">
                <h2 >{$Name1} <span>{$Name2}</span></h2>	
				<ul class="steps" >
					<li class="active" ><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
                    {if $cur_product_id=='17'}
					<li><label>Step</label><span><span>2</span><label>Add logo</label></span></li>
                    {else}
                    <li><label>Step</label><span><span>2</span><label>Add content</label></span></li>
                    {/if}
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
				</ul>
                <div class="clear-both"></div>
				</div>
				<div class="template-chooser box-style-light-gray " >
					
						
					<div class="category-chooser" >
			
					{if $cur_product_id neq '17'}	
                    <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)" >
               <option value="cart_templates.php?pid={$cur_product_id}&tcid_ex=1">All Templates</option>
            		{section name=nr loop=$templatecategoryList}
                		<option value="biz_cart_templates.php?pid={$cur_product_id}&tcid={$templatecategoryList[nr].templatecategoryid}" {if $cur_tempalte_category_id eq $templatecategoryList[nr].templatecategoryid} selected {/if}>{$templatecategoryList[nr].templatename}</option>
                	{/section}
              </select>

             		{/if}
					</div>
					
					<div class="templates-list" >

						<div class="templates" style="width:auto" >
                        <div>
                        <table id="pagiHead" bgcolor="#f2f2f2" cellpadding="5" width="100%"><tr><td>&nbsp;&nbsp;
                        {* display pagination header *}
    Items {$paginate.first}-{$paginate.last} out of {$paginate.total} displayed.
    </td>
    <td><!--{if $cur_product_id neq '17'}<div style="float:right">{* display pagination info *}
   {paginate_prev} {paginate_middle} {paginate_next}</div>{/if}-->
    <div style="clear:both;"></div></td>
    
    </tr></table>
    </div>
   
    					
                          <div class="templates-wrapper bus_crd_wrapper" >
                         
							<ul id="tempList">


                                
<li><a id="" name="VC00122"><span><span>VC00122<br/><img src="indra_test/demo_xml/VC00122.jpg" border="0" width="264" height="149"/></span></span></a></li>  
<li><a id="" name="VC00176BL"><span><span>VC00176BL<br/><img src="indra_test/demo_xml/VC00176BL.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VCAC001"><span><span>VCAC001<br/><img src="indra_test/demo_xml/VCAC001.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VCCN001"><span><span>VCCN001<br/><img src="indra_test/demo_xml/VCCN001.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VCGN003"><span><span>VCGN003<br/><img src="indra_test/demo_xml/VCGN003.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VCIT015GR"><span><span>VCIT015GR<br/><img src="indra_test/demo_xml/VCIT015GR.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VCIT037"><span><span>VCJW0011<br/><img src="indra_test/demo_xml/VCIT037.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VC00125BL"><span><span>VC00125BL<br/><img src="indra_test/demo_xml/VC00125BL.jpg" border="0" width="264" height="149"/></span></span></a></li> 
<li><a id="" name="VC00177B"><span><span>VC00177B<br/><img src="indra_test/demo_xml/VC00177B.jpg" border="0" width="264" height="149"/></span></span></a></li> 
                               

                     
                         
							</ul>
						</div>
                        <div style="clear:both;"></div>
						<!--{if $cur_product_id neq '17'}  <div style="float:right; padding-bottom:20px;">{* display pagination info *}
   {paginate_prev} {paginate_middle} {paginate_next}</div>{/if}-->
    <div style="clear:both;"></div>
					  </div>

						
					</div>
					
				</div>
				
				<div class="actions">       
				{if $cur_product_id neq '17'}
                  <a href="javascript:window.history.back();" style="float:left; margin:0;" ><img src="images/btn_back.jpg" width="87" height="45" /></a>
                  {else}
                  <a href="corporate_calendars.php" style="float:left; margin:0;" ><img src="images/btn_back.jpg" width="87" height="45" /></a>
                  {/if}
                  <div style="clear:both"></div>
				</div>
					
			</div>
  </div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
 </div>

{include file="footer.tpl"}
