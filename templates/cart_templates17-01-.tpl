{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}

<script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-plus-jquery-ui.js"></script>

<script type="text/javascript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
function calMenu(targ,selObj,restore){ //v3.0
if($(selObj).val()==0)
$('#calType').val('A5');
if($(selObj).val()==1)
$('#calType').val('Long');
if($(selObj).val()==2)
$('#calType').val('Square');
}

//-->

$(function(){
	
	$(document).find('a').each(function() {
		
		var imagePath=$(this).attr('id');
		var folderName= imagePath.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
		var splitFolder=folderName.replace(/\\/g,'/').replace( /.*\//, '' );
		
		var folderTypePath= folderName.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
		var folderType=folderTypePath.replace(/\\/g,'/').replace( /.*\//, '' );
		
		if(folderType=="A5"){
			$(this).css('background-color','#eee');
			}
	
    });
	
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
                		<option value="cart_templates.php?pid={$cur_product_id}&tcid={$templatecategoryList[nr].templatecategoryid}" {if $cur_tempalte_category_id eq $templatecategoryList[nr].templatecategoryid} selected {/if}>{$templatecategoryList[nr].templatename}</option>
                	{/section}
              </select>

             		{/if}
					</div>
					
					<div class="templates-list" >

						<div class="templates" style="width:auto" >
                        <div>
                        <table bgcolor="#f2f2f2" cellpadding="5" width="100%"><tr><td>&nbsp;&nbsp;
                        {* display pagination header *}
    Items {$paginate.first}-{$paginate.last} out of {$paginate.total} displayed.
    </td>
    <td>{if $cur_product_id neq '17'}<div style="float:right">{* display pagination info *}
   {paginate_prev} {paginate_middle} {paginate_next}</div>{/if}
    <div style="clear:both;"></div></td>
    
    </tr></table>
    </div>
    {if $cur_product_id eq '17'}
    <div >&nbsp;</div>
    <div>
    <table bgcolor="#f2f2f2" cellpadding="5" width="100%">
    <tr><td style="text-align:center; width:340px;">
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:16px;">Compact</div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:12px;">Professional & Compact Design</div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:10px;">Size : 5.5&quot; x 5.5&quot; </div>
	</td>
    <td style="text-align:center; width:180px;">
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:16px;">Classic</div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:12px;">The Classic Calendar</div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:10px;">Size : 8.26&quot; x 5.8&quot; </div>
    </td>
    <td style="text-align:center; ">
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:16px;">Long</div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:12px;">Elegant & Unique Look </div>
    <div style="font-family:Verdana, Geneva, sans-serif; font-weight:bold; font-size:10px;">Size : 10&quot; x 4&quot;</div>
    </td>
    
    </tr></table>
    </div>
    {/if}
    					{if $cur_product_id eq '17'}
						  <div class="templates-wrapper bus_crd_wrapper" style="margin-left:40px;">
                          {else}
                          <div class="templates-wrapper bus_crd_wrapper" >
                          {/if}
                          
							<ul>
                            {assign var=cnt value=0}
           					{section name=nr loop=$tempaltesList}
            
            				{if $cur_product_id eq '' && $cur_product_id neq '3' && $cur_product_id neq '16' && $cur_product_id neq '10' && $cur_product_id neq '17'}
            
                                        {if $cnt eq 0}
                                        {assign var=tempid value=$tempaltesList[nr].templateid}
                                        <li>
                                        <a class="active"  id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}">
                                        <span><span>{$tempaltesList[nr].templatebasename}<img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" border="0" /></span></span></a></li>
                                        {else}
                                        <li><a id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}"><span><span>{$tempaltesList[nr].templatebasename}<img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" border="0" /></span></span></a></li>
                                        {/if}
                                        
							{elseif $cur_product_id eq '3'}
                                		
                                        {if $cnt eq 0}
                                        {assign var=tempid value=$tempaltesList[nr].templateid}
                                        <li>
                                        <a class="active"  id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}">
                                        <span><span class="ltrhd">{$tempaltesList[nr].templatebasename}<img src="phpthumb/phpThumb.php?src=../{$tempalteFolder}{$tempaltesList[nr].templateimage}&amp;w=225&amp;h=400" border="0" /></span></span></a></li>
                                        {else}
                                        <li><a id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}"><span><span class="ltrhd">{$tempaltesList[nr].templatebasename}<img src="phpthumb/phpThumb.php?src=../{$tempalteFolder}{$tempaltesList[nr].templateimage}&amp;w=225&amp;h=400" border="0" /></span></span></a></li>
                                        {/if}
                                        
                                        
                            {elseif $cur_product_id eq '16'}
                                		
                                        {if $cnt eq 0}
                                        {assign var=tempid value=$tempaltesList[nr].templateid}
                                        <li>
                                        <a class="active"  id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}">
                                        <span><span class="dr">{$tempaltesList[nr].templatebasename}<img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}"  width="250"  border="0" /></span></span></a></li>
                                        {else}
                                        <li><a id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}"><span><span class="dr">{$tempaltesList[nr].templatebasename}<img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" border="0"  width="250"  /></span></span></a></li>
                                        {/if}
                                        
                        	{elseif $cur_product_id eq '17'}
                            
                                	   {if $cnt eq 0}
                                        {assign var=tempid value=$tempaltesList[nr].templateid}
                                        <li>
                                        
                                        <a style="position:relative; margin-top:22px;" class="active"  id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}">
                                        <span ><span class="dr" style="padding:0px; padding-top:5px; font-family:Verdana, Geneva, sans-serif; font-weight:normal; font-size:12px;">{$tempaltesList[nr].templatebasename}<img src="images/{$tempaltesList[nr].templateimage}"  width="250"  border="0" style= "border: 0px solid #EEE; box-shadow: 0 0 0px #aaa;" /></span></span></a></li>
                                        {else}
                                        <li>
                                        
                                        <a style="position:relative; margin-top:22px;" id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}"><span><span class="dr" style="padding:0px; padding-top:5px; font-family:Verdana, Geneva, sans-serif; font-weight:normal; font-size:12px;">{$tempaltesList[nr].templatebasename}<img src="images/{$tempaltesList[nr].templateimage}" border="0"  width="250"  style= "border: 0px solid #EEE; box-shadow: 0 0 0px #aaa;"/></span></span></a></li>
                                        {/if} 
                                        
                            {else}
                                
            						   {if $current_template_id eq $tempaltesList[nr].templateid}
             							{assign var=tempid value=$tempaltesList[nr].templateid}
								<li><a class="active"  id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}"><span><span>{$tempaltesList[nr].templatebasename}<br/><img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" width="264" height="149" border="0" /></span></span></a></li>
                                		{else}
                 {assign var=tempid value=$current_template_id}
                                <li><a id="{$tempalteFolder}{$tempaltesList[nr].templateimage}" name="pid={$cur_product_id}&tid={$tempaltesList[nr].templateid}&tcid={$cur_tempalte_category_id}&itemid={$current_item_id}"><span><span>{$tempaltesList[nr].templatebasename}<br/><img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" border="0" width="264" height="149"/></span></span></a></li>
                                		{/if}    
                                
                          	{/if}      
                <!--For letter head portion only -->  
                
                
                                
                           {assign var=cnt value=1}
                           {/section}
								
							</ul>
						</div>
                        <div style="clear:both;"></div>
						{if $cur_product_id neq '17'}  <div style="float:right; padding-bottom:20px;">{* display pagination info *}
   {paginate_prev} {paginate_middle} {paginate_next}</div>{/if}
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
{literal}
<script type="text/javascript" src="js/jquery.js"></script>						
<script type="text/javascript">
			$(function(){
				$("select").selectbox();
			});	
		</script>
<script type="text/javascript">

	/* ------ Code generated by IxEdit (ixedit.com). ------ */
	if(window.ixedit){ixedit.deployed = true};
	if(window.jQuery){jQuery(function(){
		(function(){ jQuery('div.templates-wrapper a').bind('mouseover', function(event, ui)
			{
				var target = jQuery('div.templates-wrapper a.active');
				target.removeClass('active');
				var target = jQuery(event.currentTarget);
				target.addClass('active'); 
				var target = jQuery('img#frontpreview').attr('src',this.id);
			
				
			}
		);
		
		jQuery('div.templates-wrapper a').bind('click', function(event, ui)
			{
				var name=this.name;
				var arr=name.split("&");
				var newArr=arr[0].split("=");
				if(newArr[1]==17)
				{
				var imagePath=$(this).attr('id');//alert(imagePath);
				var folderName= imagePath.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
				var splitFolder=folderName.replace(/\\/g,'/').replace( /.*\//, '' );
				
				var folderTypePath= folderName.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
				var folderType=folderTypePath.replace(/\\/g,'/').replace( /.*\//, '' );
				/*if(folderType=="classic")
				folderType=1;
				if(folderType=="Long")
				folderType=2;
				if(folderType=="compact")
				folderType=3;*/
				$('#calType').val(folderType);
				
					
				var calType=$('#calType').val();
				//alert(calType);
				window.location="cart_design.php?"+this.name+"&folder="+splitFolder+"&type="+calType;
				
				
					
				}
				else
				window.location="cart_design.php?"+this.name;
				
			}
		)
		
		
		
		})();
	})};
</script>
<script type="text/javascript">
 $(document).ready(function() {
 	var session_bc_t = 
	jQuery("a#"+session_bc_t).addclass("active");
	jQuery('img#frontpreview').attr('src',"images/"+ session_bc_t +".jpg");
 });
</script>
{/literal}
{include file="footer.tpl"}
