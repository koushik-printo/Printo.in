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
<script type="text/javascript" src="js/jquery-plus-jquery-ui.js"></script>


<!-- Load Sample Style Sheet ( You can delete this line if you don't need it. ) -->
<link type="text/css" href="css/ui-sui.css" rel="stylesheet">

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
          <!--Templates start-->
          <div class="products box-style-light-gray" >
          <form name="form1" method="post" action="">
            <h3>Select your template</h3>
            {if $err_msg ne ''}
            <div class="listing_top">{$err_msg}</div>
            {/if}
            
            <div class="listing_row">
            <table width="100%" border="0" cellspacing="1" cellpadding="1">
  <tr>
    <td> <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
               <option value="cart_templates.php?pid={$cur_product_id}">All Templates</option>
            {section name=nr loop=$templatecategoryList}
                <option value="cart_templates.php?pid={$cur_product_id}&tcid={$templatecategoryList[nr].templatecategoryid}" {if $current_tempalte_category_id eq $templatecategoryList[nr].templatecategoryid} selected {/if}>{$templatecategoryList[nr].templatename}</option>
                {/section}
              </select></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="1" cellpadding="1">
      <tr>
        <td width="70%" valign="top">
        <div class="templates-wrapper">
        <table width="100%" border="0" cellspacing="1" cellpadding="1">
         {assign var=cnt value=0}
            {section name=nr loop=$tempaltesList}
            {if $cnt mod '3' eq '0'}
  <tr>
    <td><input name="template" type="radio" value="{$tempaltesList[nr].templateid}" />{$tempaltesList[nr].templatebasename}<br /><a href="#" id="{$tempalteFolder}{$tempaltesList[nr].templateimage}"><img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" width="100" height="80" border="0" /></a></td>
     {elseif $cnt mod '3' eq '1'}
    <td><input name="template" type="radio" value="{$tempaltesList[nr].templateid}" />{$tempaltesList[nr].templatebasename}<br /><a href="#" id="{$tempalteFolder}{$tempaltesList[nr].templateimage}"><img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" width="100" height="80" border="0" /></a></td>
     {elseif $cnt mod '3' eq '2'}
    <td><input name="template" type="radio" value="{$tempaltesList[nr].templateid}" />{$tempaltesList[nr].templatebasename}<br /><a href="#" id="{$tempalteFolder}{$tempaltesList[nr].templateimage}"><img src="{$tempalteFolder}{$tempaltesList[nr].templateimage}" width="100" height="80" border="0" /></a></td>
  </tr>
    {/if}
            {assign var=cnt value=$cnt+1}
            {/section}
</table>
 </div>
        </td>
        <td width="30%" align="center" valign="top" bgcolor="#F3F3F3">Preview : <br />
            <img id="frontpreview" src="images/t.jpg"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right"><input name="Next" type="submit" value="Next >> " /><input name="product_id" type="hidden" value="{$cur_product_id}" />
              <input type="hidden" name="tempalte_category_id" id="tempalte_category_id" value="{$current_tempalte_category_id}" /></td>
  </tr>
</table>

            </div>
         </form>
         
          </div>
          <!--Templates end--> 
         
        </div>
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
		(function(){ jQuery('div.templates-wrapper a').bind('click', function(event, ui){var target = jQuery('div.templates-wrapper a.active'); target.removeClass('active'); var target = jQuery(event.currentTarget); target.addClass('active'); 
var target = jQuery('img#frontpreview').attr('src',this.id);		 var target = jQuery('a#step2link').attr("href", "step_2.asp?t="+this.id); event.preventDefault()});})();
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
