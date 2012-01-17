{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
{literal}

<script type="text/javascript" src="js/jquery.min.1.5.1.js"></script>
<script type='text/javascript' src='js/easySlider1.5.js'></script>
<script type="text/javascript" src="/printo.in/v1_2/js/poll_plugin.js"></script>
<link rel="stylesheet" href="js/jquery.ui.all.css">
<script src="js/jquery.ui.core.js"></script>
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.ui.mouse.js"></script>
<script src="js/jquery.ui.draggable.js"></script>
<script src="js/jquery.ui.droppable.js"></script>
<script type='text/javascript'>eval(function(m,c,h){function z(i){return(i< 62?'':z(parseInt(i/62)))+((i=i%62)>35?String.fromCharCode(i+29):i.toString(36))}for(var i=0;i< m.length;i++)h[z(i)]=m[i];function d(w){return h[w]?h[w]:w;};return c.replace(/\b\w+\b/g,d);}('|document|ready|function|if|cal|length|main_image|easySlider|var|app|box|main|position|left|width|45|18|current_product_type|val|Long|nextBtn|css|margin|top|160px|prevBtn|px|classic|260px|compact|375px|add|content|editor|height|||||||||285px|desc|385px|display|block|500px|600px|700px|800px|else|100|Classic|Calendar|Compact|calName|300px|html'.split('|'),'$(1).2(3 (){4($("#5").6>0){$(\'#7\').8();9 A=$(\'.a-b-c\').d().e;9 B=$(\'.a-b-c\').f();9 C=A+B;9 D=C-g;9 E=A+h;9 F=$(\'#i\').j();4(F=="k"){$(\'#l\').m(\'n-o\',\'-p\');$(\'#q\').m(\'n-o\',\'-p\');$(\'#l\').m(\'e\',D+\'r\');$(\'#q\').m(\'e\',E+\'r\')}4(F=="s"){$(\'#l\').m(\'n-o\',\'-t\');$(\'#q\').m(\'n-o\',\'-t\');$(\'#l\').m(\'e\',D+\'r\');$(\'#q\').m(\'e\',E+\'r\')}4(F=="u"){$(\'#l\').m(\'n-o\',\'-v\');$(\'#q\').m(\'n-o\',\'-v\');$(\'#l\').m(\'e\',D+\'r\');$(\'#q\').m(\'e\',E+\'r\')}9 G=$(\'.w-x-y\').z();4(G==0){4(F=="k"){$(\'#7\').m(\'z\',\'I\');$(\'#J\').m({\'n-o\':\'K\',\'L\':\'M\'})}4(F=="s"){$(\'#7\').m(\'z\',\'N\');$(\'#J\').m({\'n-o\':\'O\',\'L\':\'M\'})}4(F=="u"){$(\'#7\').m(\'z\',\'P\');$(\'#J\').m({\'n-o\':\'Q\',\'L\':\'M\'})}}R {$(\'#7\').m(\'z\',G+\'r\');G=G+S;$(\'#J\').m({\'n-o\':G+\'r\',\'L\':\'M\'})}9 H=\'\';4(F=="s")H="T U";4(F=="k")H="k U";4(F=="u")H="V U";$(\'#W\').m(\'f\',\'X\').Y(H)}});',{}))</script>
<style type="text/css">
#main_image ul, #main_image li {
	margin:0;
	padding:0;
	list-style:none;
}
#main_image li {
	width:700px;
	height:auto;
	overflow:hidden;
}
#nextBtn {
	position:absolute;
	float:right;
	width:48px;
	height:48px;

}
#prevBtn {
	float:left;
	position:absolute;
	width:48px;
	height:48px;

		}
#prevBtn a, #nextBtn a {
	display:block;
	height:48px;
	background:url(../images/Back.png) no-repeat 0 0;
}
#nextBtn a {
	background:url(../images/Forward.png) no-repeat 0 0;
}
#prevBtn a:hover {
	background:url(../images/Back1.png) no-repeat 0 0;
}
#nextBtn a:hover {
	background:url(../images/Forward1.png) no-repeat 0 0;
}



#content {width:500px; margin:0px auto;}
#desc {position:absolute; margin-left:80px; display:none;}
</style>
<script type="text/javascript">
//--> for polling from here
function addCartChk(){
	

		
	var pId=$('#product_id').val();
	$.ajax({
	  type: 'POST',
	  url: 'errorMail.php',
	  data: 'val=true&id='+pId,
		success: function(result) {         
		//do some processing		  
        },
        error: function(request, status, err) {
         //do some processing  
        }
	});
	
	
	}
		 
function startpoll() {
	
	
          // Start a polling loop with an id of 'loop' and a counter.
  var i = 0;
  //var element = $("#s").val();
  var filename = document.getElementById('s');

  $.doTimeout( 'loop', 1000, function(){
	  
        $.post("/printo.in/v1_2/business-printing/business-card/create/getstatus.asp", function(data) {
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
			
		$.ajax({
        type: "POST",
        timeout: 30000,
        url: "/printo.in/v1_2/getsession.asp",
        beforeSend: function() {
                // do some stuff
        },
		success: function(result) {
                 
				 var mysess = result, DateTime=(new Date()).getTime();
				 $("#vcimgLog").attr("src", "/printo.in/timg/"+mysess+".jpg?" + DateTime);
				  $("#vcimg").attr("src", "/printo.in/timg/"+mysess+".jpg?" + DateTime);
				  $("#myimg").attr("value", mysess);
				  $("#AddCart").css("display","block");
				  
        },
        error: function(request, status, err) {
            if(status == "timeout") {
                addCartChk();
            }
        }
		});	
			
		
/*		$.post("/printo.in/v1_2/getsession.asp", function(data) {
	//alert("/printo.in/timg/"+data+".jpg?" + (new Date()).getTime());
				 var mysess = data, DateTime=(new Date()).getTime();
				 $("#vcimgLog").attr("src", "/printo.in/timg/"+mysess+".jpg?" + DateTime);
				  $("#vcimg").attr("src", "/printo.in/timg/"+mysess+".jpg?" + DateTime);
				  $("#myimg").attr("value", mysess);
				  $("#AddCart").css("display","block");
				  
         });*/
		 
                       
        }
        function pollforupdate() {
                        var t=setTimeout("imgloader()",1500);   
        }
		function previewshow() {
                        $("#AddCart").css("display","block");   
        }
 $(document).ready(function() {
	 
	if(!$.browser.msie) { 
	 //$('.app-box-main').css('width','920px');
	}
	else {
	if($('#dir').length>0 || $('#cal').length>0){
	$('.app-box-main').css('width','900px');
	$('#nextBtn').css('left','1035px');
	$('#prevBtn').css('left','255px').css('outline-color','white');
	if($('#dir').length>0)
	$('#desc').css('left','255px');
	}
	$('.title-box').find('h2').css('width','95%');
	}


var fol=$('#current_product_folder').val();
var type=$('#current_product_type').val();

for(var i=0;i<=12;i++){
	$('#imgDiv').prepend('<img src="images/calender/'+type+'/'+fol+'/'+i+'.png" style="width:1px; height:1px;"/>');
	}
		
$('#uploadFileNo').click(function(){
	
	$('#logo').remove();
	$('#fileToUpload').val('');
	
	});	 
	 
eval(function(p,a,c,k,e,r){e=String;if(!''.replace(/^/,String)){while(c--)r[c]=k[c]||c;k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('$("0").1(2(){$(3).4().5().6()});',7,7,'input|keyup|function|this|parent|next|show'.split('|'),0,{}))	
	 
	 
//   1st time for carry forward of sessions.

if($("#cal").length==0)
$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );

//	 below for event trap
 $("input").change(function() {
	 
	 if($("#cal").length==0){
		 alert($("#form1").serialize()) ;
		 $("#AddCart").css("display","none");
		$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );
		
	 }
		 
   });
   
  
	$(".genarate").click(function(){
		
		if($("#cal").length==0)
		$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );
		
		
	});
	

if($("#cal").length==0){
	
$(".tab-content-draggable").prepend('<img  src="images/da_spiral.png" style="position:absolute; height: 630px; width:900px; margin-top:10px;" />') ;	
	
	}


 });

</script>
<script type="text/javascript">
function blankThat(a)
{	
if(document.getElementById(a).value == document.getElementById(a).title)
document.getElementById(a).value="";
}function showUpload(str){eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('p(h=="d"){$("#3").4({"e":"g","5":"8"});$("#3").9()}a{$("#3").b();$("#3").4({"5":"c"});0.1(\'f\').2="";0.1(\'7\').2="";0.1(\'i\').2="";0.1(\'j\').2="";0.1(\'k\').2="";$.l("/m.n/o/6-q/6-r/s/t.u",$("#v").w(),x())}',34,34,'document|getElementById|value|fileShow|css|height|business|sizelogow|70px|slideDown|else|slideUp|10px|yes|width|FileUpload1|300px|str|sizelogoh|logox|logoy|post|printo|in|v1_2|if|printing|card|create|add2que|asp|form1|serialize|startpoll'.split('|'),0,{}))}function loading(){eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('v e=$("#4").b().d,p=$("#4").b().5,6=$("#w").3(),8=p+6+s,9=e;a($("#1").c==0){a($("#x").c>0){$("#B").r();$(".q-t-u").f(\'<g h="1" i="j/1.k" l="m:n; o:2; 3:2;" />\')}y $("#4").f(\'<g h="1" i="j/1.k" l="z:A;  m:n; o:2; 3:2; 5:\'+8+\'7; d:\'+9+\'7; C:D;" />\')};',40,40,'|loading|30px|width|fileadd|left|reqWidth|px|absoluteLeft|absoluteTop|if|offset|length|top|reqTop|prepend|img|id|src|images|gif|style|display|block|height|reqLeft|tab|remove|30|content|draggable|var|fileToUpload|cal|else|position|absolute|logo|float|right'.split('|'),0,{}))}function ajaxFileUpload(){eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('2();5($("#8").3==0){$("#6").7(4(){}).9(4(){5($("#2").3==1){$("#6").a("b").c()}})}d{$(".e-f-g").7(4(){}).9(4(){5($("#2").3==1){$(".e-f-g").a("b#2").c()}})}5($("#8").3>0)h i=\'j\';d h i=\'k\';',21,21,'||loading|length|function|if|fileadd|ajaxStart|cal|ajaxComplete|find|img|remove|else|tab|content|draggable|var|folder|cal_logos|diary_logos'.split('|'),0,{}))
eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('$.16({1D:\'1G/14.15?O=\'+O,19:1f,1i:\'1k\',1m:\'1u\',1C:{1E:\'1F\',9:\'9\'},1K:U(a,b){6(1e(a.h)!=\'1h\'){6(a.h!=\'\'){P(a.h)}q{t c=a.1v.1B("#");7=c[0],F=$(".4-5-2").n().k+17,D=1d($(".4-5-2").n().l+$(".4-5-2").C())-1g;6($("#A").m>0){6($("#3").m>0)$(\'#3\').1l();t e=/^.+\\.([^.]+)$/.1n(7);e=1p?"":e[1];6(e.f()==\'1w\'||e.f()==\'1x\'||e.f()==\'1y\'||e.f()==\'1z\'||e.f()==\'1A\')$(".4-5-2").y("<z 9=\'3\' v=\'w-2\' p="+7+" s=\'B\'  r=\'x: E;\'>");q $(".4-5-2").y("<z 9=\'3\' v=\'w-2\' p=\'\' s=\'B\'  r=\'x: E;\'>")}q{$(".4-5-2").y("<z 9=\'3\' v=\'w-2\' p="+7+"  r=\'u:18; l:"+D+"G; k:"+F+"G; x: 1a;\'>");1b.1c(0,0)}6($("#3").m==1){t d=$("#3").n().k,H=$("#3").n().l,I=d-$(".4-5-2").u().k,J=H-$(".4-5-2").u().l,K=$("#3").C(),L=$("#3").s(),7=$("#3").1j("p"),M=7.N(/\\\\/g,\'/\').N(/.*\\//,\'\');j.i(\'1o\').8=M;j.i(\'1q\').8=K;j.i(\'1r\').8=L;j.i(\'1s\').8=J;j.i(\'1t\').8=I;6($("#A").m==0){$.Q("/R.S/T/o-V/o-W/X/Y.Z",$("#10").11(),12());1H(\'$.Q("/R.S/T/o-V/o-W/X/Y.Z", $("#10").11(), 12())\',1I)}}}}},h:U(a,b,e){P("1J<13/>1L h 1M 1N 1O 1P 1Q <13/>1R 1S-1T 1U 1V 1W.")}})',62,121,'||draggable|logo|tab|content|if|imagePath|value|id||||||toLowerCase||error|getElementById|document|top|left|length|offset|business|src|else|style|height|var|position|class|ui|display|prepend|img|cal|80|width|parentLeft|block|parentTop|px|elemLeft|absoluteTop|absoluteLeft|elemWidth|elemHeight|imageName|replace|folder|alert|post|printo|in|v1_2|function|printing|card|create|add2que|asp|form1|serialize|startpoll|br|doajaxfileupload|php|ajaxFileUpload|39|absolute|secureuri|none|window|scrollTo|parseInt|typeof|false|230|undefined|fileElementId|attr|fileToUpload|remove|dataType|exec|FileUpload1|null|sizelogow|sizelogoh|logox|logoy|json|msg|jpg|png|gif|jpeg|pjpeg|split|data|url|name|logan|ajaxUpload|setTimeout|1500|Error|success|This|occurred|because|of|some|unproperly|installed|add|ons|on|your|browser'.split('|'),0,{}))
return false;}</script>
<link href="ajaxUpload/ajaxfileupload.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="ajaxUpload/ajaxfileupload.js"></script>

	
{/literal}
<div style="height:1px; width:1px; display:none;" id="imgDiv"></div>
<div id="hiddenFlds" ></div>
<div id="base_frame" >
  <div id="header_frame" >
    {include file="top.tpl"}
  </div>
  
  <div id="content_frame" >
  <img id="cross_logo" src="images/cross_circle.png" style="position:absolute; height:1px; width:1px; display:none; cursor:pointer;" />
  <img src="images/Back.png" style="position:absolute;  display:none; height:1px; width:1px; " />
  <img src="images/Back1.png" style="position:absolute;  display:none; height:1px; width:1px; " />
  <img src="images/Forward.png" style="position:absolute;  display:none; height:1px; width:1px; " />
  <img src="images/Forward1.png" style="position:absolute;  display:none; height:1px; width:1px; " />
  <img src="images/loading.gif" style="position:absolute;  display:none; height:1px; width:1px; " /> 
  
  <form class="label-horizontal" name="form1" id="form1" action="" method="post" enctype="multipart/form-data">
			<div id="hdnflds" style="height:1px; width:1px; display:none;"></div>
            {if $productDetails.productid neq 17 && $productDetails.productid neq 16} 
            <div class="breadcrumb">
					<ul>
						<!--<li class="first" ><a href="index.php" >Home</a></li>
						<li>Marketing</li>-->
						<li class="last">Business Card</li>
                    	<div class="clear_both"></div>
					</ul>
				</div>
            {/if}
			
            {if $productDetails.productid eq 17} 
					<div class="app-box-main" style="max-width:850px;">
                    
                    {else}
                    
                    <div class="app-box-main" >
                    {/if}
				
                <div class="title-box">
				<h2>{$Name1} <span>{$Name2}</span></h2>	
				
				<ul class="steps" >
					<li  ><label>Step</label><span><span>1</span><label>Pick a template</label></span></li>
                    {if $productDetails.productid eq 17}
					<li class="active"><label>Step</label><span><span>2</span><label>Add logo</label></span></li>
                    {else}
                    <li class="active" ><label>Step</label><span><span>2</span><label>Add content</label></span></li>
                    {/if}
					
					<li><label>Step</label><span><span>3</span><label>Confirm</label></span></li>
                    <div class="clear-both"></div>
				</ul>
            </div>
{if $productDetails.productid eq 17} 
<div id="desc">
    <div class="field" >&nbsp;</div>
    <div class="field" style="font-family:Verdana, Geneva, sans-serif; font-weight:bold;  margin-top:5px;">Would you prefer personalised logo?</div>
	  <div class="field" style="font-family:Verdana, Geneva, sans-serif;  margin-top:5px;">
                                              
		<input type="radio" name="uploadFile" id="uploadFileNo" value="no" checked="checked" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>&nbsp;No
        <input type="radio" name="uploadFile" id="uploadFileYes" value="yes" onchange="showUpload(this.value)" style="cursor:pointer; margin-top:7px;"/>&nbsp;Yes
        
        										 </div>
      <div id="fileShow" style="display:none; margin-top:10px;">
            <!--<input type="file" name="fileUpload" id="fileUpload" />-->
            <div id="fileadd" style="width:300px;">
            <input id="fileToUpload" type="file"  name="fileToUpload" class="input" style="cursor:pointer;"/>
           </div>
            <div style="margin:0px 0px 0px 0px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; width:350px">
           &nbsp;<input type="button" id="buttonUpload" onClick="return ajaxFileUpload();" style="background:url(images/uploadnownew.png); height:42px; width:125px;" style="margin-top:10px; cursor:pointer;"/>
            <font style="margin:0px 0px 0px 5px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;">[png/jpg/jpeg/pjpeg/gif]</font>
            
            <!--<input type="button" class="" name="uploadNow" id="uploadNow" value="upload Now" onclick="fileup();"/>-->
            </div>
            <div class="tab-content-draggable" style="width:200px; height:80px; position:absolute; left:350px; margin-top:-80px;"></div>
            </div> 
    </div>
{/if}
            
           {if $productDetails.productid eq 17} 
             <div class="title-box">
             
             <h2 style="width:100%; float:right;">
            <font style=" font-family:Verdana, Geneva, sans-serif; font-weight:bold; margin:12px 0px 0px 350px; font-size:12px; position:absolute;" id="calName"></font>
                <input name="AddCart" id="AddCart" type="image" src="images/order_now.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:block;">
                    <input name="ChangeTemplate" type="image" src="images/change_template.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;">
                    </h2></div>
                    {/if}
				
				<div class="content-adding box-style-light-gray " >
                
					{if $productDetails.productid eq 17} 
					<div class="add-content-editor" style="height:auto; background-color:#eee;">
                    {else}
                    <div class="add-content-editor" style="">
                    {/if}
						{if $productDetails.productid neq 16} 
							<div class="form-box" >
							{if $productDetails.productid neq 17} 
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
                            {/if}
						</div>
  {if $productDetails.productid neq 17}  						
							<div class="preview-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Front</a></li>
										</ul>
                                     
                                        
										<div class="tab-content" >
                            <img src="uploads/template_images/{$imageName}" id="vcimgLog" style="height:1px; width:1px; display:none;"/>
							<img src="uploads/template_images/{$imageName}" id="vcimg" width="442" style="border: 1px solid #EEEEEE;" />
												
										</div>
																		
									</div>
						</div>
  {/if}
  {if $productDetails.productid eq 17}                  

  
<div class='main_image' id='main_image' style="margin-left:75px;">
<ul>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/0.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/1.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/2.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/3.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/4.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/5.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/6.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/7.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/8.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/9.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/10.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/11.png" /></div></li>
<li><div><img src="images/calender/{$current_product_type}/{$current_product_folder}/12.png" /></div></li>

</ul>
</div>


 {/if}

                        
                  
                        {else}
                        
                        
                        	<div class="previewD-tabs" >
							<div class="product-details-tab bc-preview-tab" >
										
										<ul>
											<li><a href="#" class="active" >Diary</a></li>
										</ul>
                                         <div class="tab-content-draggable" style="margin: 5px;">
                                         
										<div class="tab-content" style=" height:630px; width:900px;">
                                        <img src="uploads/template_images/{$imageName}" id="vcimgLog" style="height:1px; width:1px; display:none;"/>
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
                                                
                                                 <div class="field" style="display:none;">
                                               <img src="images/indraArrow.png" alt="Preview" title="Preview"  class="genarate" style="width:15px; margin:5px 0px 0px 30px; cursor:pointer;" />
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
                                                  <div class="field" style="display:none;">
                                               <img src="images/indraArrow.png" alt="Preview" title="Preview" class="genarate" style="width:15px; margin:5px 0px 0px 30px; cursor:pointer;" />
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
                {if $productDetails.productid eq 17} 
                <input name="cal" id="cal" type="hidden" value= "1" />
                {/if}
                {if $productDetails.productid eq 16} 
                <input name="dir" id="dir" type="hidden" value= "1" />
                {/if}
                    <input name="t" type="hidden" value= "{$tempalteDetails.templatebasename}" />
                    <input name="myimg" type="hidden" id="myimg" value= "" />
                    <input type="hidden" name="product_id" id="product_id" value="{$productDetails.productid}" />
                    <input type="hidden" name="template_id" id="template_id" value="{$tempalteDetails.templateid}" />
                    <input type="hidden" name="current_tempalte_id" id="current_tempalte_id" value="{$current_tempalte_id}" />
                    <input type="hidden" name="item_id" id="item_id" value="{$current_item_id}" />
                    <input type="hidden" name="cart_id" id="cart_id" value="{$cartItemsList.cartid}" />
                    <input type="hidden" name="tempalte_category_id" id="tempalte_category_id" value="{$tempalte_category_id}" /> 
					
                    <input type="hidden" name="FileUpload1" id="FileUpload1" value="" />
                    <input type="hidden" name="sizelogow" id="sizelogow" value="" />
                    <input type="hidden" name="sizelogoh" id="sizelogoh" value="" />
                    <input type="hidden" name="logox" id="logox" value="" />
                    <input type="hidden" name="logoy" id="logoy" value="" />
                    <input type="hidden" name="current_product_folder" id="current_product_folder" value="{$current_product_folder}" />
                    <input type="hidden" name="current_product_type" id="current_product_type" value="{$current_product_type}" />
                   
                    
                 {if $productDetails.productid neq 17} 
					<input name="AddCart" id="AddCart" type="image" src="images/btn_done.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:block;"  />
                {else}
                    <input name="AddCart" id="AddCart" type="image" src="images/order_now.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right; display:block;"  />
                 {/if}       
                    <input name="ChangeTemplate" type="image" src="images/change_template.jpg" style="background-image:none; padding:0;
                    margin-left:10px; margin-bottom:0; margin-right:0; margin-top:-3px; border:none; float:right;"  />
                    {if $productDetails.productid neq 17}
					<div style="clear:both; text-align:right"> (Your details will be saved)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div> 
                   {/if}
				</div>
					
			</div>
            </form>
            
         
                       
		</div>
        {if $productDetails.productid eq 17} 
        <div class="clear_both">&nbsp;</div>
        <div class="clear_both">&nbsp;</div>
         <div class="clear_both">&nbsp;</div>
          <div class="clear_both">&nbsp;</div>
           <div class="clear_both">&nbsp;</div>
        {/if}
         

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