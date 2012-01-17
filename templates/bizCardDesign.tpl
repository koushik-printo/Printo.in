{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{literal}

<link rel="stylesheet" type="text/css" href="css/fontnew.css"/>
<link rel="stylesheet" type="text/css" href="css/new_css/dragresize.css"/>
<link rel="stylesheet" type="text/css" href="css/new_css/indra_class.css"/>
<link rel="stylesheet" type="text/css" href="css/new_css/jquery-ui-1.8.12.custom.css"/>
<link rel="stylesheet" type="text/css" href="css/new_css/zoomer.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/new_css/newmlColorPicker1.css" media="screen" charset="utf-8" />
<link rel="stylesheet" type="text/css" href="css/new_css/ImageEditor.css" />
<link rel="stylesheet" type="text/css" href="css/new_css/ui.spinner.css" />
    
<script type="text/javascript" src="js/comp_js/jQuery.min.1.6.js"></script>
<script type="text/javascript" src="js/spinner.js"></script>
<script type="text/javascript" src="js/comp_js/jquery_editDiv.js"></script>
<script type="text/javascript" src="js/comp_js/dragresize_commented.js"></script>
<script type="text/javascript" src="js/comp_js/newmlcolorpicker1.js"></script>
<script type="text/javascript" src="js/comp_js/newcolorpickerzoomer.js"></script>
<script type="text/javascript" src="js/comp_js/eye.js"></script>
<script type="text/javascript" src="js/comp_js/utils.js"></script>
<script type="text/javascript" src="js/comp_js/jquery_design1.js"></script>
<script type="text/javascript" src="js/comp_js/ui.spinner.js"></script>

<script type="text/javascript" src="js/comp_js/hackathon.js"></script>


	
{/literal}
<div id="hiddenFlds" ></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  
  <div id="content_frame" >
  <img id="cross_logo" src="images/cross_circle.png" style="position:absolute; height:1px; width:1px; display:none; cursor:pointer;" />
  <img src="images/loading.gif" style="position:absolute;  display:none; height:1px; width:1px; " /> 
  
  <form class="label-horizontal" name="form_edit" id="form_edit" action="editgraph.php" method="post" enctype="multipart/form-data">
			<div id="hdnflds" style="height:1px; width:1px; display:none;"></div>
            <div class="breadcrumb">
					<ul>
						
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
            
			<div class="app-box-main" >
				
                <div class="title-box">
				<h2>CUSTOMISE <span>BIZCARD</span></h2>
                
                          
				
				<ul class="steps" >
					<li  ><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
					<li class="active" ><label>Step</label><span><span>2</span><label>Add content</label></span></li>
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
                    <div class="clear-both"></div>
				</ul>
            </div>
             
				<div class="content-adding box-style-light-gray" style="height:470px">

					
					<div class="add-content-editor">
					
						<div class="form-box" style="width:200px;">
							<!--<div class="form-wrapper" style="width:200px;">-->
                            
								<!-- Business card form start -->
                                       
                                    
                            <div class="left-navigation" style="min-height:446px;">
                                        <h2 style="height:35px; width:200px; font-size:12px; color:#fff;">Design Box</h2>
                                        
                                        <ul>
                                        <li class="first active-sublink noUse"></li>
                                        <li class="first active-sublink" style="cursor:pointer;" id="add_textbox"><a style="margin-top:55px; background-image: url();"><span>Add Text</span></a ></li>
                                        
                                        <li class="active-sublink" style="cursor:pointer;" ><a style="background-image: url();"><span style="font-size:10px;">Color</span></a>
                                        <ul style="background-color:#eee;">
                                            <li><div class='color_box' style=" height:155px;"></div></li> 
                                        </ul>
                                        </li>
                                        	
                                        <li class="active-sublink" style="cursor:pointer;"><a style="background-image: url();"><span style="font-size:10px;">Size</span></a>
                                        <ul style="background-color:#eee;" id="spinnerUl">
                                            <li><input type="text" id="spinnerfast" size="18" value="20" readonly="readonly"/></li> 
                                        </ul>
                                        </li>
                                        <li class="active-sublink" style="cursor:pointer;"><a style="background-image: url();"><span style="font-size:10px;">Align</span></a>
                                        <ul style="background-color:#eee;" id="">
                                            <li><a><div class='' onclick='alignDiv(this.id)' id='left'>Left</div></a></li>
                                            <li><a><div class='' onclick='alignDiv(this.id)' id='center'>Center</div></a></li>
                                            <li><a><div class='' onclick='alignDiv(this.id)' id='right'>Right</div></a></li>
                                        </ul>
                                        </li>
                                        
                                        <li class="active-sublink" style="cursor:pointer;">
                                        <a style="background-image: url();"><span style="font-size:10px;">Font</span></a>
                                        <ul style="background-color:#eee; height:250px; width:220px; overflow:auto;">
                                            <li><a><div class='Aladdin_Regular' onclick='getClass(this)'>Aladdin Regular</div></a></li>
                                            <li><a><div class='Airmole_Shaded' onclick='getClass(this)'>Airmole Shaded</div></a></li>
                                            <li><a><div class='AirCut_Light' onclick='getClass(this)'>AirCut Light</div></a></li>
                                            <li><a><div class='Airmole' onclick='getClass(this)'>Airmole</div></a></li>
                                            <li><a><div class='Airmole_Antique' onclick='getClass(this)'>Airmole Antique</div></a></li>
                                            <li><a><div class='Airmole_Stripe' onclick='getClass(this)'>Airmole Stripe</div></a></li>
                                            <li><a><div class='AlanDen' onclick='getClass(this)'>Alan Den</div></a></li>
                                            <li><a><div class='Alexis_Grunge' onclick='getClass(this)'>Alexis Grunge</div></a></li>
                                            
                                            <li><a><div class="Aquaduct_Warp" onclick="getClass(this)">Aquaduct Warp</div></a></li>
                                            <li><a><div class="arachnid" onclick="getClass(this)">Arachnid</div></a></li>
                                            <li><a><div class="Amano" onclick="getClass(this)">Amano</div></a></li>
                                            <li><a><div class="Argos_Regular" onclick="getClass(this)">Argos Regular</div></a></li>
                                            <li><a><div class="Arialic_Hollow" onclick="getClass(this)">Arialic Hollow</div></a></li>
                                            <li><a><div class="Arvigo" onclick="getClass(this)">Arvigo</div></a></li>
                                            <li><a><div class="Averen" onclick="getClass(this)">Averen</div></a></li>
                                           <li><a><div class="BabOonjaZzbaSsoOn" onclick="getClass(this)">BabOonjaSsoOn</div></a></li>
                                            
                                            
                                        </ul>
                                        
                                        </li>
                                        <li class="active-sublink" style=""> <a style="background-image: url();"><span style="background-image:url();"><iframe src="uploadimg.php?type=small&showid=current_selected_text&textfield=smallImg" frameborder="0" scrolling="No" id="iframid1" height="50" class="radiotxt" style="height:30px;"></iframe></span></a></li>
                                        <li class="active-sublink" id="remove_box" style="cursor:pointer;"><a style="background-image: url();"><span>Delete Box </span></a></li>

                                        <!--<li class="active-sublink"> <a style="background-image: url();"><span>Flip</span></a></li>-->
                                        <li class="active-sublink" style="cursor:pointer;"><a style="background-image: url();" onclick="prevSave()">Preview</a></li>
                                        
                                        </ul>
                            
                            
                            
                            
                            </div>
                                     
                                     
                                     
                                     
                                 <!-- Business card form End -->
                                        

                                       
                                        
                                         
                                         
							<!--</div>-->
						</div>
						
						<div class="preview-tabs" style="width:720px; height:470px; position:absolute; visibility:hidden;" id="wholeArea">
							<div class="product-details-tab bc-preview-tab" >
										<ul style="border:0px;">
											<li><a class="active" >Front</a></li>
										</ul>
                                       
                                        
	
							
                            <div style="width:690px; height:394px; padding-top:5px;" >
							<!--<img src="images/bc-10-big-b.jpg" id="vcimg" width="630" height="350" style="border: 1px solid #EEEEEE;" />-->
                           
					<div id="debug_" style="display:none;"></div>
					<textarea id="htmlvalue" name="htmlvalue" style="display:none;"></textarea>
                    <textarea id="userhtmlvalue" name="userhtmlvalue" style="display:none;"></textarea>
                	<div class="main_imagboxedit" id="middleArea">

<!--===============================================detail for current element============================================-->


		<input name="editid" id="editid" type="hidden" value="<?php echo $_POST['tempId'];?>"/>
		<input name="cardid" id="cardid" type="hidden" value=""/>
		<input name="userid" id="userid" type="hidden" value=""/>
		<input name="cardname" id="cardname" type="hidden" value="Test"/>
		<input name="parentid" id="parentid" type="hidden" value=""/>
		<input type="hidden" name="pag" id="pag" />
		<input type="hidden" name="current_selected_text" id="current_selected_text" value="draggable7_div" />
		<input type="hidden" name="backImg" id="backImg" />		
		<input type="hidden" name="smallImg" id="smallImg" />
		<input type="hidden" name="backheight" id="backheight" value="600" />
		<input type="hidden" name="backwidth" id="backwidth" value="400" />
		<input type="hidden" name="frontside" id="frontside" value="admin/category_image/"/>
		<input type="hidden" name="frontsidethumb" id="frontsidethumb" value="admin/category_image/thumb2/"/>
		<input type="hidden" name="backcolor" id="backcolor" />
		<input type="hidden" name="envelope1" id="envelope1" value="admin/envelop/back/envelop_1.png"  />
		<input type="hidden" name="envelope" id="envelope" value="admin/envelop/print/envelop_1.png"  />
		<input type="hidden" name="seal" id="seal" value="admin/seal/thumb/seal_28.png" />
		<input type="hidden" name="catTitle" id="catTitle" value="" />
		<input type="hidden" name="subcatTitle" id="subcatTitle" value="" />

		<input type="hidden" name="defaultText" id="defaultText" value="Double Click to Type" />

		<input type="hidden" name="backcolor" id="backcolor" value="" />
		<input type="hidden" name="backheight" id="backheight" value="600" />
		<input type="hidden" name="backwidth" id="backwidth" value="400" />
		


<!--============================================detailk for currentelement========================================================-->
<!--<div class="sponsor"> -->

<div class="content_main" id="workingarea" style="width:690px; height:394px;">


<div id="draggable0_div" class="temp" style="width:690px; height:394px; position:absolute;;">

<img src="indra_test/demo_xml/{$editname}.jpg" id="draggable0_text" style=" background: none repeat scroll 0% 0% transparent; text-align: left; font-size: 20px; overflow: hidden; border: medium none; width:690px; height:394px; position:absolute;"/>



<div style="font-weight:normal;font-size:20px;padding-left:10px;" id="draggable0_htmWrapper">

<div id="draggable0_htmWrapper_child">
<input type="hidden" name="draggable_textt[]" value="images/bc-10-big-b.jpg" id="draggable0_textt" />
<input type="hidden" value="10,10,200,30" id="draggable0_XY" name="XY_value[]" />
<input type="hidden" value="20" id="draggable0_fontsize" name="fontsize_value[]" />
<input type="hidden" value="0" id="draggable0_left" name="left_value[]" />
<input type="hidden" value="0" id="draggable0_top" name="top_value[]" />
<input type="hidden" value="234" id="draggable0_leftorig" name="leftorig_value[]" />
<input type="hidden" value="169" id="draggable0_toporig" name="toporig_value[]" />
<input type="hidden" value="394" id="draggable0_height" name="height_value[]" />
<input type="hidden" value="690" id="draggable0_width" name="width_value[]" />
<input type="hidden" value="255,255,255" id="draggable0_fontcolor" name="color_value[]" />
<input type="hidden" value="1" id="draggable0_border" name="border_value[]" />
<input type="hidden" id="draggable0_smallpic" name="smallpic[]" />
<input type="hidden" value="2" id="draggable0_line_space" name="line_space[]" />
<input type="hidden" value="Arial" id="draggable0_oldClass" name="oldClass[]" />
<input type="hidden" value="1" id="draggable0_leftAlign" name="leftAlign[]" />
<input type="hidden" value="0" id="draggable0_rightAlign" name="rightAlign[]" />
<input type="hidden" value="0" id="draggable0_centerAlign" name="centerAlign[]" />
<input type="hidden" value="0" id="draggable0_justifyAlign" name="justifyAlign[]" />
<input type="hidden" id="draggable0_tint" value="0" name="tint_value[]" />
<input type="hidden" id="draggable0_brightness" value="0" name="brightness_value[]" />
<input type="hidden" id="draggable0_saturation" value="0" name="saturation_value[]" />
<input type="hidden" id="draggable0_contrast" value="0" name="contrast_value[]" />
</div></div>

	</div>
 
{section name=foo start=0 loop=10 step=1}

{if ${$t}{$smarty.section.foo.index}{$text}}

<div id="draggable{$smarty.section.foo.index+1}_div" class="drsElement drsMoveHandle" style="
{if ${$t}{$smarty.section.foo.index}{$id} == 'fldcname'}
width: 340px; height: 50px;
{else if ${$t}{$smarty.section.foo.index}{$id} == 'fldname'}
width: 270px; height: 40px;

{else}
width: 200px; height: 30px;
{/if}
 z-index: 999999; -moz-background-inline-policy: -moz-initial; text-align: left;  left: {${$t}{$smarty.section.foo.index}{$x}}px; top:{${$t}{$smarty.section.foo.index}{$y}}px; color: {${$t}{$smarty.section.foo.index}{$color}}; border: 0px dotted rgb(51, 51, 51);">

<div contenteditable="false" class="Arial" id="draggable{$smarty.section.foo.index+1}_text" style="
{if ${$t}{$smarty.section.foo.index}{$id} == 'fldcname'}
width: 340px; height: 50px;
{else if ${$t}{$smarty.section.foo.index}{$id} == 'fldname'}
width: 270px; height: 40px;

{else}
width: 200px; height: 30px;
{/if}
 z-index: 999999;  text-align: left; font-size: {${$t}{$smarty.section.foo.index}{$size}}px; overflow: hidden; border: medium none;">
{${$t}{$smarty.section.foo.index}{$text}}
</div>

<div style="font-weight:normal;font-size:20px;padding-left:10px;" id="draggable{$smarty.section.foo.index+1}_htmWrapper">

<div id="draggable{$smarty.section.foo.index+1}_htmWrapper_child">
<input type="hidden" name="draggable_textt[]" value="Designation" id="draggable{$smarty.section.foo.index+1}_textt" />
<input type="hidden" value="10,10,200,30" id="draggable{$smarty.section.foo.index+1}_XY" name="XY_value[]" />
<input type="hidden" value="{${$t}{$smarty.section.foo.index}{$size}}" id="draggable{$smarty.section.foo.index+1}_fontsize" name="fontsize_value[]" />
<input type="hidden" value="{${$t}{$smarty.section.foo.index}{$x}}" id="draggable{$smarty.section.foo.index+1}_left" name="left_value[]" />
<input type="hidden" value="{${$t}{$smarty.section.foo.index}{$y}}" id="draggable{$smarty.section.foo.index+1}_top" name="top_value[]" />
<input type="hidden" value="" id="draggable{$smarty.section.foo.index+1}_leftorig" name="leftorig_value[]" />
<input type="hidden" value="" id="draggable{$smarty.section.foo.index+1}_toporig" name="toporig_value[]" />
<input type="hidden" value="
{if ${$t}{$smarty.section.foo.index}{$id} == 'fldcname'}
50
{else if ${$t}{$smarty.section.foo.index}{$id} == 'fldname'}
40
{else}
30
{/if}
" id="draggable{$smarty.section.foo.index+1}_height" name="height_value[]" />
<input type="hidden" value="
{if ${$t}{$smarty.section.foo.index}{$id} == 'fldcname'}
340
{else if ${$t}{$smarty.section.foo.index}{$id} == 'fldname'}
270
{else}
200
{/if}
"
 id="draggable{$smarty.section.foo.index+1}_width" name="width_value[]" />
<input type="hidden" value="" id="draggable{$smarty.section.foo.index+1}_fontcolor" name="color_value[]" />
<input type="hidden" value="1" id="draggable{$smarty.section.foo.index+1}_border" name="border_value[]" />
<input type="hidden" id="draggable{$smarty.section.foo.index+1}_smallpic" name="smallpic[]" />
<input type="hidden" value="2" id="draggable{$smarty.section.foo.index+1}_line_space" name="line_space[]" />
<input type="hidden" value="Arial" id="draggable{$smarty.section.foo.index+1}_oldClass" name="oldClass[]" />
<input type="hidden" value="1" id="draggable{$smarty.section.foo.index+1}_leftAlign" name="leftAlign[]" />
<input type="hidden" value="0" id="draggable{$smarty.section.foo.index+1}_rightAlign" name="rightAlign[]" />
<input type="hidden" value="0" id="draggable{$smarty.section.foo.index+1}_centerAlign" name="centerAlign[]" />
<input type="hidden" value="0" id="draggable{$smarty.section.foo.index+1}_justifyAlign" name="justifyAlign[]" />
<input type="hidden" id="draggable{$smarty.section.foo.index+1}_tint" value="0" name="tint_value[]" />
<input type="hidden" id="draggable{$smarty.section.foo.index+1}_brightness" value="0" name="brightness_value[]" />
<input type="hidden" id="draggable{$smarty.section.foo.index+1}_saturation" value="0" name="saturation_value[]" />
<input type="hidden" id="draggable{$smarty.section.foo.index+1}_contrast" value="0" name="contrast_value[]" />
</div>
</div>

</div>

{/if}
{/section}


</div>



 <input type="hidden" id="workingarea_XY" name="workingarea" value="" /><input type="hidden" id="indra" name="indra" value="12" />

<!--</div>-->
</div>
							
												
										</div>

																		
									</div>
						</div>
                       
                        
                        
                        
                        
                        
                        
						</div>
                        
						
					</div>
					
				</div>
				<a class="btn-blue" style="margin-left:800px; width:120px;" href="#"><span><span>Order Now</span></span></a>
				<div class="actions" >
                
                    
                  
				</div>
					
			</div>
            </form>
            
         
                       
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>

{include file="footer.tpl"}