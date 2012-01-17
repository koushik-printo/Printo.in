{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}
<script type="text/javascript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
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
				
				<h2>Business <span>Card</span></h2>	
				
				<ul class="steps" >
					<li class="active" ><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
					<li><label>Step</label><span><span>2</span><label>Add content</label></span></li>
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
				</ul>
				
				<div class="template-chooser box-style-light-gray " >
					
					<div class="type-chooser" >
						<h3>Choose Card Type</h3>
						<div class="type" >
							<a href="#" class="single" ><span>Single Side</span></a>
							<a href="#" class="double active" ><span>Double Side</span></a>
						</div>
					</div>
					
					<div class="category-chooser" >
						
						<select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
               <option value="cart_templates.php?pid={$cur_product_id}">All Templates</option>
            {section name=nr loop=$templatecategoryList}
                <option value="cart_templates.php?pid={$cur_product_id}&tcid={$templatecategoryList[nr].templatecategoryid}" {if $current_tempalte_category_id eq $templatecategoryList[nr].templatecategoryid} selected {/if}>{$templatecategoryList[nr].templatename}</option>
                {/section}
              </select>
												
						<ul class="sub-category" >
							<li><a href="#" class="active" >Modern</a></li>
							<li><a href="#" >Classic</a></li>
							<li><a href="#" >Floral</a></li>
							<li><a href="#" >Clean</a></li>
							<li><a href="#" >Typo</a></li>
						</ul>
						
					</div>
					
					<div class="templates-list" >
						
						<div class="templates" >
							<div class="templates-wrapper" >
							<ul>
                            {section name=nr loop=$tempaltesList}
								<li><a href="#" ><span><span><img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" width="100" height="80" border="0" /></span></span></a></li>
								{/section}
							</ul>
							</div>
						</div>
						
						<div class="preview" >
							
							<div class="preview-wrapper" >
								<div class="glow-bg" >
									<h3>Preview</h3>
									<h4>Front</h4>
									<div class="front" >
										<img src="images/bc-10-f.jpg" />
									</div>
									
									<h4>Back</h4>
									<div class="back" >
										<img src="images/bc-10-b.jpg" />
									</div>
								</div>																
							</div>
							
						</div>
						
					</div>
					
				</div>
				
				<div class="actions">
					Door Deliver in 7 days.
					<a href="step-2.html" class="btn-blue" ><span><span>Next</span></span></a>	
					<a href="../index.html" class="btn-gray prev" ><span><span>Back</span></span></a>
				</div>
					
			</div>
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}
