{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>
<script type="text/javascript" src="/printo.in/v1_2/js/poll_plugin.js"></script>
<!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>-->
<link rel="stylesheet" href="js/jquery.ui.all.css">
<script src="js/jquery.ui.core.js"></script>
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.ui.mouse.js"></script>
<script src="js/jquery.ui.draggable.js"></script>
<script src="js/jquery.ui.droppable.js"></script>
{literal}
<script type="text/javascript">

 $(function() {
	 

//   1st time for carry forward of sessions
$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );

//	 below for event trap
 $("input").change(function() {
		$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );
		
		
	
   });
   
						
	
	$(".tab-content-draggable").prepend('<img  src="images/da_spiral.png" style="position:absolute; height: 630px; width:900px;" />') ;

 });


//--> for polling from here

		 
function startpoll() {//alert("startpoll call");
	
	
          // Start a polling loop with an id of 'loop' and a counter.
  var i = 0;
  //var element = $("#s").val();
  var filename = document.getElementById('s');

  $.doTimeout( 'loop', 1000, function(){
        $.post("/printo.in/v1_2/business-printing/business-card/create/getstatus.asp", function(data) {//alert("data = "+data);
                  if (data == "Success") {
					  
                  imgloader();
                //  $('#polling_response span').html( data );
                  $.doTimeout( 'loop' );  
                }
         });
    return true;}
)

};

//--> for polling above
$.ajax({
  url: "/printo.in/v1_2/business-printing/business-card/create/test.html",
  context: document.body,
  success: function(){
    $(this).addClass("done");
  }
});
        function imgloader () {
		
		$.post("/printo.in/v1_2/getsession.asp", function(data) {//alert("/printo.in/timg/"+data+".jpg?" + (new Date()).getTime());
				 var mysess = data;
				  $("#vcimg").attr("src", "/printo.in/timg/"+mysess+".jpg?" + (new Date()).getTime());
				  $("#myimg").attr("value", mysess);
				 // $("#AddCart").css("display","block");
         });
		 
                       
        }
        function pollforupdate() {
                        var t=setTimeout("imgloader()",1500);   
        }
		/*function previewshow() {
                        $("#AddCart").css("display","block");   
        }*/


</script>

<script type="text/javascript">
function blankThat(a)
{	
if(document.getElementById(a).value == document.getElementById(a).title)
document.getElementById(a).value="";
}

</script>
<link href="ajaxUpload/ajaxfileupload.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="ajaxUpload/ajaxfileupload.js"></script>
<!--<script type="text/javascript" src="js/voucher1.js"></script>
    <script type="text/javascript" src="js/compress1.js"></script>-->
    
	<script type="text/javascript">
	
function showUpload(str)
{


eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('p(h=="d"){$("#3").4({"e":"g","5":"8"});$("#3").9()}a{$("#3").b();$("#3").4({"5":"c"});0.1(\'f\').2="";0.1(\'7\').2="";0.1(\'i\').2="";0.1(\'j\').2="";0.1(\'k\').2="";$.l("/m.n/o/6-q/6-r/s/t.u",$("#v").w(),x())}',34,34,'document|getElementById|value|fileShow|css|height|business|sizelogow|70px|slideDown|else|slideUp|10px|yes|width|FileUpload1|300px|str|sizelogoh|logox|logoy|post|printo|in|v1_2|if|printing|card|create|add2que|asp|form1|serialize|startpoll'.split('|'),0,{}))


}
	



function loading(){
		
			var reqTop=$("#fileadd").offset().top,
			reqLeft=$("#fileadd").offset().left,
			reqWidth=$("#fileToUpload").width(),
			absoluteLeft= reqLeft + reqWidth + 30,
			absoluteTop=reqTop;
			
			if($("#loading").length==0)
			$("#fileadd").prepend('<img id="loading" src="images/loading.gif" style="position:absolute;  display:block; height:30px; width:30px; left:'+absoluteLeft+'px; top:'+absoluteTop+'px; float:right;" />');
		
		
		}
	
	function ajaxFileUpload()
	{
		if($("#logo").length == 0) {
		loading();	
		$("#fileadd")
		.ajaxStart(function(){
			
		//Can't do a thing!!!! repeats abnormally!!
		})
		.ajaxComplete(function(){
			if($("#loading").length==1)
			$("#fileadd").find("img").remove();
		});

		$.ajaxFileUpload
		(
			{
				url:'ajaxUpload/doajaxfileupload.php',
				secureuri:false,
				fileElementId:'fileToUpload',
				dataType: 'json',
				data:{name:'logan', id:'id'},
				success: function (data, status)
				{
					if(typeof(data.error) != 'undefined')
					{
						if(data.error != '')
						{
							alert(data.error);
						}else
						{
							//alert(data.msg);
							
							
							var 
							
							
							arrMsg=data.msg.split("#");
							imagePath=arrMsg[0],
							
							//parentTop=$(".tab-content-draggable").offset().top +  39,
							parentLeft= parseInt($(".tab-content-draggable").offset().left + $(".tab-content-draggable").width()) - 190;
							
							divTop=$(".tab-content-draggable").offset().top +  39,
							divLeft= parseInt($(".tab-content-draggable").offset().left + 510);
							if($("#logoDiv").length==0)
							$(".tab-content-draggable").prepend(
							"<div id='logoDiv' class='ui-draggable' style='position:absolute; left:"+divLeft+"px; top:"+divTop
							+"px; z-index:3; height: 500px; width: 355px'></div>");
							
							var parentTop=$("#logoDiv").offset().top,
							parentLeft= parseInt($("#logoDiv").width()) - ((arrMsg[1]!=75 ) ? arrMsg[1] : arrMsg[2]);
						
							
							(arrMsg[1]==150 ) ? $("#logoDiv").prepend(
							"<img id='logo' width='150' height='"+arrMsg[2]+"' class='ui-draggable' src="+imagePath
							+"  style='position:absolute; left:"+parentLeft+"px; z-index:5;'>") : 
							
							(arrMsg[1]==75 ) ? $("#logoDiv").prepend(
							"<img id='logo' width='"+arrMsg[2]+"' height='75'  class='ui-draggable' src="+imagePath
							+"  style='position:absolute; left:"+parentLeft+"px;  z-index:5;'>") : 
							
							$("#logoDiv").prepend(
							"<img id='logo'  width='"+arrMsg[1]+"' height='"+arrMsg[2]+"' class='ui-draggable' src="+imagePath
							+"  style='position:absolute; left:"+parentLeft+"px;'>") ;
							
							
							
							window.scrollTo(0,0);
							
							
							if($("#logo").length == 1){
							var
							elemTop=($("#logoDiv").offset().top + $("#logo").offset().top) * 10/63 ,
							elemLeft=($("#logoDiv").offset().left + $("#logo").offset().left) * 1/9,
							elemWidth=$("#logo").width() * 1/9,
							elemHeight=$("#logo").height() * 10/63,
							imagePath=$("#logo").attr("src"),
							imageName=imagePath.replace(/\\/g,'/').replace( /.*\//, '' );
							
			
				
							document.getElementById('FileUpload1').value=imageName;
							document.getElementById('sizelogow').value=elemWidth;
							document.getElementById('sizelogoh').value=elemHeight;
							document.getElementById('logox').value=elemLeft;
							document.getElementById('logoy').value=elemTop;
			
				
				
					
	}

							
			
				$("#logo").draggable({
				 
				 containment: $('#logoDiv'),
				 start: function(event, ui) {
					 

				$("#cross_logo").hide().css({ "z-index": "0", "height": "1px", "width":"1px"});
			

				  },
				drag: function(event, ui)  {
             			
						$("#cross_logo").hide().css({ "z-index": "0", "height": "1px", "width":"1px"});
                },
				  
				stop: function(event, ui) {  
				
					var parentTop=$(".tab-content-draggable").offset().top ,
					parentLeft=$(".tab-content-draggable").offset().left,
					elemTop=$("#logo").offset().top ,
					elemLeft=$("#logo").offset().left,
					absoluteTop = elemTop -  parentTop,
					absoluteLeft = elemLeft - parentLeft,
					elemWidth=$("#logo").width(),
					elemHeight=$("#logo").height(),
					crossLeft=(elemLeft+elemWidth) - 25,
					crossTop=elemTop + 5;
					
					
					
				if($("#logo").length == 1){
				var //elemTop=parseInt(($("#logoDiv").offset().top + $("#logo").offset().top) * 10/63) ,
				//elemLeft=parseInt(($("#logoDiv").offset().left + $("#logo").offset().left) * 1/9),
				//elemWidth=parseInt($("#logo").width() * 1/9),
				//elemHeight=parseInt($("#logo").height() * 10/63),
				elemTop=($("#logoDiv").offset().top + $("#logo").offset().top) * 10/63 ,
				elemLeft=($("#logoDiv").offset().left + $("#logo").offset().left) * 1/9,
				elemWidth=$("#logo").width() * 1/9,
				elemHeight=$("#logo").height() * 10/63,
				imagePath=$("#logo").attr("src"),
				imageName=imagePath.replace(/\\/g,'/').replace( /.*\//, '' );
				

	
				document.getElementById('FileUpload1').value=imageName;
				document.getElementById('sizelogow').value=elemWidth;
				document.getElementById('sizelogoh').value=elemHeight;
				document.getElementById('logox').value=elemLeft;
				document.getElementById('logoy').value=elemTop;

				//alert("imageName~~"+imageName+"~~~elemLeft~~~"+ elemLeft+"~~~elemTop~~~"+elemTop+"~~~elemWidth~~~"+elemWidth+"~~~elemHeight~~~"+elemHeight);
				//$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );
	//setTimeout('$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll())',1500);			
				
				
					
	}
			
						
		$("#cross_logo").show().css({"top":crossTop+"px", "left":crossLeft+"px", "z-index": "6", "height": "20px", "width":"20px"});
				
					
				
				},
				
				
			});
			
			
	$("#logo").mouseover(function(e){
	
	
	var elemTop=$("#logo").offset().top ,
	elemLeft=$("#logo").offset().left,
	elemWidth=$("#logo").width(),
	elemHeight=$("#logo").height(),
	crossLeft=(elemLeft+elemWidth) - 25,
	crossTop=elemTop + 5;

	
	$("#logo").css({"cursor":"move"});
	
	$("#cross_logo").show().css({"top":crossTop+"px", "left":crossLeft+"px", "z-index": "6", "height": "20px", "width":"20px"});

	
	
	});

	
	$("#cross_logo").click(function(e){
	
	
	$("#logo").remove();
	$("#cross_logo").hide().css({ "z-index": "0", "height": "1px", "width":"1px"});
	
	
	
	});	
	

							
			
							
						}
					}
				},
				error: function (data, status, e)
				{
					alert(e);
				}
			}
		)
		
		return false;
		}
		else
		alert("can't upload multiple images!");
	}
	


	</script>	
{/literal}
<div id="hiddenFlds" ></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  
  <div id="content_frame" >
  <img id="cross_logo" src="images/cross_circle.png" style="position:absolute; height:1px; width:1px; display:none; cursor:pointer;" />
  <img src="images/loading.gif" style="position:absolute;  display:none; height:1px; width:1px; " /> 
  
  <form class="label-horizontal" name="form1" id="form1" action="" method="post" enctype="multipart/form-data">
			<div id="hdnflds" style="height:1px; width:1px; display:none;"></div>
            <div class="breadcrumb">
					<ul>
						<!--<li class="first" ><a href="index.php" >Home</a></li>
						<li>Marketing</li>-->
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
            
			<div class="app-box-main" >
				
                <div class="title-box">
				<h2>{$Name1} <span>{$Name2}</span></h2>	
				
				<ul class="steps" >
					<li><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
					<li class="active" ><label>Step</label><span><span>2</span><label>Add content</label></span></li>
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
                    <div class="clear-both"></div>
				</ul>
                </div>
                
				
				<div class="content-adding box-style-light-gray " >
					
					<!--<div class="app-breadcrumb" >
						
						<h3>Now add content</h3>
						
						<ul>
							<li>Double Sided</li>
							<li>Architecture</li>
							<li>Modern <span>BC 21421</span></li>
						</ul>
						
					</div> -->
					
					<div class="add-content-editor" >
						{if $productDetails.productid neq 16} 
						<div class="form-box" >
							<div class="form-wrapper" >
								<!-- Business card form start -->
                                
                                <div class="fields"><font color="#37C6EB" size="-1"><strong>(Use Tab or click outside box to preview each field)</strong></font></div>
                                
										{if $productDetails.productid eq 1} 
											<div class="fields" >
											<label>Name</label>
											<div class="field" >
                                            	{if $fldname != ''}
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
                                                {else}
                                              	<input name="fldname" type="text" id="fldname1" value="FirstName LastName" onclick="blankThat(this.id);" title="FirstName LastName"/>
                                                {/if}
                                                
											</div>
										</div> 
										
										<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
                                            	{if $flddesig != ''}
												<input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
                                                {else}
                                              	<input name="flddesig" type="text" id="flddesig1"  value="Designation" onclick="blankThat(this.id);" title="Designation"/>
                                                {/if}
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
                                            {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            {/if}
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Website</label>
											<div class="field" >
                                             {if $fldwebsite != ''}
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
                                                {else}
                                              	<input name="fldwebsite" type="text" id="fldwebsite1"  value="Website" onclick="blankThat(this.id);"  title="Website"/>
                                            {/if}
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
                                            {if $fldmobile != ''}
                                            <input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
                                            {else}
                                            <input name="fldmobile" type="text" id="fldmobile1"  value="Mobile Number" onclick="blankThat(this.id);"  title="Mobile Number"/>
                                            {/if}
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Telephone / Other</label>
											<div class="field" >
                                            	 {if $fldteleno != ''}
                                                <input name="fldteleno" type="text" id="fldteleno" value="{$fldteleno}" />
                                                {else}
                                                <input name="fldteleno" type="text" id="fldteleno1"  value="Telephone" onclick="blankThat(this.id);" title="Telephone"/>
                                           		{/if}
												
											</div>
										</div>
										
										<!--<div class="fields" >
											<label>Fax / Other</label>
											<div class="field" >
                                             	{if $fldfax != ''}
                                               	<input name="fldfax" type="text" id="fldfax"  value="{$fldfax}" />
                                                {else}
                                                <input name="fldfax" type="text" id="fldfax1"  value="Fax" onclick="blankThat(this.id);"  title="Fax"/>
                                           		{/if}
												
											</div>
										</div>-->
										
										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
                                            {if $fldemail != ''}
                                               <input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
                                                {else}
                                                <input name="fldemail" type="text" id="fldemail1"  value="E-mail" onclick="blankThat(this.id);"  title="E-mail"/>
												{/if}
                                                
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
                                            {if $fldaddline1 != ''}
                                               	<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
                                                {else}
                                                <input name="fldaddline1" type="text" id="fldaddline11"  value="Address 1" onclick="blankThat(this.id);"  title="Address 1"/>
												{/if}
                                                
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
                                           		{if $fldaddline2 != ''}
                                               	<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
                                                {else}
                                                <input name="fldaddline2" type="text" id="fldaddline21"  value="Address 2" onclick="blankThat(this.id);"   title="Address 2"/>
												{/if}
                                                
												
											</div>
										</div>
								
                                		<div class="fields" >
											<label>Address 3</label>
                                          
											<div class="field" >
                                            {if $fldaddline2 != ''}
                                               <input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
                                                {else}
                                                <input name="fldaddline3" type="text" id="fldaddline31"  value="Address 3" onclick="blankThat(this.id);"   title="Address 3"/>
												{/if}
                                       <!--<h4> >> Preview</h4>-->
                                                <div><font size="-2" > (may not be available in all designs) </font></div>
											</div>
                                            </div>
                                            
                                        {/if}
                                        <!-- Business card form End -->
                                        
                                        <!-- Letter heads card form start -->
                                        {if $productDetails.productid eq 3} 
                                     	 	  <!--<div class="fields" >
											<label>Name</label>
											<div class="field" >
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
											</div>
										</div>-->
										
										<!--<div class="fields" >
											<label>Job Title</label>
											<div class="field" >
												<input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
											</div>
										</div>-->
                                        
										<div class="fields" >
											<label>Company Name</label>
											<div class="field" >
                                            {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            {/if}
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Website</label>
											<div class="field" >
                                             {if $fldwebsite != ''}
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
                                                {else}
                                              	<input name="fldwebsite" type="text" id="fldwebsite1"  value="Website" onclick="blankThat(this.id);"  title="Website"/>
                                            {/if}
												
											</div>
										</div>
										
										<!--<div class="fields" >
											<label>Mobile</label>
											<div class="field" >
                                            {if $fldmobile != ''}
                                            <input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
                                            {else}
                                            <input name="fldmobile" type="text" id="fldmobile1"  value="Mobile Number" onclick="blankThat(this.id);"  title="Mobile Number"/>
                                            {/if}
												
											</div>
										</div>-->
										
										<div class="fields" >
											<label>Telephone / Other</label>
											<div class="field" >
                                            	 {if $fldteleno != ''}
                                                <input name="fldteleno" type="text" id="fldteleno" value="{$fldteleno}" />
                                                {else}
                                                <input name="fldteleno" type="text" id="fldteleno1"  value="Telephone" onclick="blankThat(this.id);" title="Telephone"/>
                                           		{/if}
												
											</div>
										</div>
										
										<!--<div class="fields" >
											<label>Fax / Other</label>
											<div class="field" >
                                             	{if $fldfax != ''}
                                               	<input name="fldfax" type="text" id="fldfax"  value="{$fldfax}" />
                                                {else}
                                                <input name="fldfax" type="text" id="fldfax1"  value="Fax" onclick="blankThat(this.id);"  title="Fax"/>
                                           		{/if}
												
											</div>
										</div>-->
										
										<div class="fields" >
											<label>E-mail</label>
											<div class="field" >
                                            {if $fldemail != ''}
                                               <input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
                                                {else}
                                                <input name="fldemail" type="text" id="fldemail1"  value="E-mail" onclick="blankThat(this.id);"  title="E-mail"/>
												{/if}
                                                
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 1</label>
											<div class="field" >
                                            {if $fldaddline1 != ''}
                                               	<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
                                                {else}
                                                <input name="fldaddline1" type="text" id="fldaddline11"  value="Address 1" onclick="blankThat(this.id);"  title="Address 1"/>
												{/if}
                                                
												
											</div>
										</div>
										
										<div class="fields" >
											<label>Address 2</label>
											<div class="field" >
                                           		{if $fldaddline2 != ''}
                                               	<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
                                                {else}
                                                <input name="fldaddline2" type="text" id="fldaddline21"  value="Address 2" onclick="blankThat(this.id);"   title="Address 2"/>
												{/if}
                                                
												
											</div>
										</div>
								
                                		<div class="fields" >
											<label>Address 3</label>
                                          
											<div class="field" >
                                            {if $fldaddline3 != ''}
                                               <input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
                                                {else}
                                                <input name="fldaddline3" type="text" id="fldaddline31"  value="Address 3" onclick="blankThat(this.id);"   title="Address 3"/>
												{/if}
                                       <!--<h4> >> Preview</h4>-->
                                                <div><font size="-2" > (may not be available in all designs) </font></div>
											</div>
                                            </div>
                                        
                                        {/if}
                                         <!-- Letter heads card form end -->
                                       
                                       <!-- Envelopes  form start -->
                                        {if $productDetails.productid eq 10} 
                                           <!-- <div class="fields" >
                                                <label>Name</label>
                                                <div class="field" >
                                                    <input name="fldname" type="text" id="fldname" value="{$fldname}" />
                                                </div>
                                            </div>-->
                                            
                                            <!--<div class="fields" >
                                                <label>Job Title</label>
                                                <div class="field" >
                                                    <input name="flddesig" type="text" id="flddesig"  value="{$flddesig}" />
                                                </div>
                                            </div>-->
                                            
                                            <div class="fields" >
                                                <label>Company Name</label>
                                               <div class="field" >
                                            {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Company Name" onclick="blankThat(this.id);" title="Company Name"/>
                                            {/if}
												
											</div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Website</label>
                                                <div class="field" >
                                             {if $fldwebsite != ''}
												<input name="fldwebsite" type="text" id="fldwebsite"  value="{$fldwebsite}" />
                                                {else}
                                              	<input name="fldwebsite" type="text" id="fldwebsite1"  value="Website" onclick="blankThat(this.id);"  title="Website"/>
                                            {/if}
												
											</div>
                                            </div>
                                            
                                         <!--   <div class="fields" >
                                                <label>Mobile</label>
                                                <div class="field" >
                                                    <input name="fldmobile" type="text" id="fldmobile" value="{$fldmobile}" />
                                                </div>
                                            </div>-->
                                            
                                            <div class="fields" >
                                                <label>Telephone / Other</label>
                                               <div class="field" >
                                            	 {if $fldteleno != ''}
                                                <input name="fldteleno" type="text" id="fldteleno" value="{$fldteleno}" />
                                                {else}
                                                <input name="fldteleno" type="text" id="fldteleno1"  value="Telephone" onclick="blankThat(this.id);" title="Telephone"/>
                                           		{/if}
												
											</div>
                                            </div>
                                            
                                           <!-- <div class="fields" >
                                                <label>Fax / Other</label>
                                                <div class="field" >
                                                    <input name="fldfax" type="text" id="fldfax"  value="{$fldfax}" />
                                                </div>
                                            </div>-->
                                            
                                            <div class="fields" >
                                                <label>E-mail</label>
                                               <div class="field" >
                                           		 {if $fldemail != ''}
                                               <input name="fldemail" type="text" id="fldemail"  value="{$fldemail}" />
                                                {else}
                                                <input name="fldemail" type="text" id="fldemail1"  value="E-mail" onclick="blankThat(this.id);"  title="E-mail"/>
												{/if}
                                                
											</div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Address 1</label>
                                               <div class="field" >
                                            	{if $fldaddline1 != ''}
                                               	<input name="fldaddline1" type="text" id="fldaddline1"  value="{$fldaddline1}" />
                                                {else}
                                                <input name="fldaddline1" type="text" id="fldaddline11"  value="Address 1" onclick="blankThat(this.id);"  title="Address 1"/>
												{/if}
                                                
												
											</div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Address 2</label>
                                               <div class="field" >
                                           		{if $fldaddline2 != ''}
                                               	<input name="fldaddline2" type="text" id="fldaddline2"  value="{$fldaddline2}" />
                                                {else}
                                                <input name="fldaddline2" type="text" id="fldaddline21"  value="Address 2" onclick="blankThat(this.id);"   title="Address 2"/>
												{/if}
                                                
												
											</div>
                                            </div>
                                    
                                    <!--<div class="fields" >
                                                <label>Address 3</label>
                                                <div class="field" >
                                                    <input name="fldaddline3" type="text" id="fldaddline3"  value="{$fldaddline3}" />
                                                </div>
                                            </div>-->
                                        {/if}
                                         <!-- Envelopes  form end -->
                                        
                                         
                                         
							</div>
						</div>
						
						<div class="preview-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Front</a></li>
										</ul>
                                       <!-- <div class="tab-content-draggable" style="margin: 5px;">-->
                                        
										<div class="tab-content" >
							<img src="uploads/template_images/{$imageName}" id="vcimg" width="442" style="border: 1px solid #EEEEEE;" />
												
										</div>
										<!--</div>	-->									
									</div>
						</div>
                        {else}
                        
                        
                        <div class="previewD-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Diary</a></li>
										</ul>
                                         <div class="tab-content-draggable" style="margin: 5px;">
                                         
										<div class="tab-content" style=" height:630px; width:900px;">
												<img src="uploads/template_images/{$imageName}" id="vcimg" width="900" height="628" style="border: 1px solid #EEEEEE;" />
												
										</div>
                                        </div>
																				
									</div>
						</div>
                        
                        <div class="clear_both"></div>
                        <div class="form-box" >
							<div class="form-wrapper" >
								<!-- Business card form start -->
                                
                                <div class="fields"><font color="#37C6EB" size="-1"><strong>(Use Tab or click outside box to preview each field)</strong></font></div>
                                
                                         <!-- Diary  form start -->
                                        {if $productDetails.productid eq 16} 
                                            <div class="fields" >
                                                <label>Name</label>
                                                <div class="field" >
                                                  {if $fldname != ''}
												<input name="fldname" type="text" id="fldname" value="{$fldname}" />
                                                {else}
                                              	<input name="fldname" type="text" id="fldname1" value="FirstName LastName" onclick="blankThat(this.id);" title="FirstName LastName"/>
                                                {/if}
                                                </div>
                                            </div>
                                            
                                            <div class="fields" >
                                                <label>Year</label>
                                                
                                             <div class="field" >
                                              {if $fldcname != ''}
												<input name="fldcname" type="text" id="fldcname"  value="{$fldcname}" />
                                                {else}
                                              	<input name="fldcname" type="text" id="fldcname1"  value="Year" onclick="blankThat(this.id);" title="Year"/>
                                            {/if}
                                                </div>
                                            </div>
                                              <div class="fields" >
                                                <label>Logo</label>
                                                
                                             <div class="field" style="margin-bottom:15px;">
                                              
		<input type="radio" name="uploadFile" id="uploadFile" value="no" checked="checked" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>No
        <input type="radio" name="uploadFile" id="uploadFile" value="yes" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>Yes
        
        										 </div>
                                                 
            <div id="fileShow" style="display:none; margin-top:35px;">
            <!--<input type="file" name="fileUpload" id="fileUpload" />-->
            <div id="fileadd" style="width:300px;">
            <input id="fileToUpload" type="file"  name="fileToUpload" class="input" style="cursor:pointer;"/>
           </div>
            <div>
            <input type="button" id="buttonUpload" onClick="return ajaxFileUpload();" value="Upload" style="margin-top:10px; cursor:pointer;"/>
            <!--<input type="button" class="" name="uploadNow" id="uploadNow" value="upload Now" onclick="fileup();"/>-->
            </div>
            </div>                                              
             </div>
                                           
                                               
                                            </div>
                                            
                                        {/if}
                                         <!-- Diary  form end -->
                                         
							</div>
						</div>   <!--<input name="genarate" id="genarate" type="button" value="genarate"    />-->
                        
						{/if}
					</div>
					
				</div>
				
				<div class="actions" >
                    <input name="t" type="hidden" value= "{$tempalteDetails.templatebasename}" />
                    <input name="myimg" type="hidden" id="myimg" value= "" />
                    <input type="hidden" name="product_id" id="product_id" value="{$productDetails.productid}" />
                    <input type="hidden" name="template_id" id="template_id" value="{$tempalteDetails.templateid}" />
                    <input type="hidden" name="item_id" id="item_id" value="{$current_item_id}" />
                    <input type="hidden" name="cart_id" id="cart_id" value="{$cartItemsList.cartid}" />
                    <input type="hidden" name="tempalte_category_id" id="tempalte_category_id" value="{$tempalte_category_id}" /> 
					
			
                    
                    <input type="hidden" name="FileUpload1" id="FileUpload1" value="" />
                    <input type="hidden" name="sizelogow" id="sizelogow" value="" />
                    <input type="hidden" name="sizelogoh" id="sizelogoh" value="" />
                    <input type="hidden" name="logox" id="logox" value="" />
                    <input type="hidden" name="logoy" id="logoy" value="" />
                    
                 
					<input name="AddCart" id="AddCart" type="image" src="images/btn_done.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:block;"  />
                    <input name="ChangeTemplate" type="image" src="images/change_template.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;"  />
					<div style="clear:both; text-align:right"> (Your details will be saved)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div> 
				</div>
					
			</div>
            </form>
            
         
                       
		</div>
  <div id="footer_frame" >
    {include file="bottom.tpl"}
  </div>
</div>
	  <script type="text/javascript" src="/printo.in/v1_2/js/jquery.selectbox-0.6.1.js"></script>	
      {literal}					
		<script type="text/javascript">
			$(function(){
				$("select").selectbox();
			});	
		</script>
        {/literal}
{include file="footer.tpl"}