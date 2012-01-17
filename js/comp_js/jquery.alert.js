//PLUGIN FOR THE NEW ALERT BOX

 (function($){  
	 $.fn.extend({   
		 customAlert: function(options) {
			var htmlStr = '<div id="amitOverlay"></div><div id="alertMsgDiv"><div id="aMessage"></div></div>';
			var defaults = {   
				 bgColor: '#000',  
				 opacity: '0.6', 
				 width: '400',
				 height: '400',
				 message: 'This is a test message from the plugin',  
			 };  
			
			var options = $.extend(defaults, options);
			
			$("#displayoverlay").css({'height': '100%', 'width': '100%', 'position': 'absolute'});
			$("#displayoverlay").append(htmlStr);

				
			var elemLeft=(window.innerWidth - options.width)/2;
			var elemTop=((window.innerHeight - options.height)/2) ;


			$("#alertMsgDiv").css({
								  'display': 'block',
								  'width': options.width +'px;',
								  'height': options.height +'px;',
								  'position':'absolute'
								  });
			$("#amitOverlay").css({
								  'display': 'block',
								  'top': '0px',
								  'left': '0px',
								  'background-color': options.bgColor,
								  'opacity': options.opacity
								  });	

			$("#aMessage").html(options.message);
			$("#alertMsgDiv").animate({width: options.width, height: options.height,'left': elemLeft,'top': elemTop}, 300);
			
			$("#amitOverlay").css({
								  'display': 'block',
								  'top': '0px',
								  'left': '0px',
								  'width': ($(this).width())+ "px",
								  'height': $(this).height() + "px",
								  'background-color': options.bgColor,
								  'opacity': options.opacity});	
			$(".drsElement").each(function(index, element) {
                
            }).css({
								  'z-index': 0
								});	
			
			$("#aClose").click(function(){	
				$("#displayoverlay").css({'height': '1px', 'width': '1px'});
				$("#alertMsgDiv").remove();
				$("#amitOverlay").remove();
							$(".drsElement").each(function(index, element) {
                
            }).css({
								  'z-index': 999999
								});	
				
			});
		 }
		});
	$.fn.extend({
	customAlert1: function(options) {
			var htmlStr = '<div id="amitOverlay"></div><div id="alertMsgDiv1"><div id="aMessage"></div></div>';
			var defaults = {   
				 bgColor: '#000',  
				 opacity: '0.6',  
				 message: 'This is a test message from the plugin',  
			 };  
			
			var options = $.extend(defaults, options);  
			$("#displayoverlay").css({'height': '100%', 'width': '100%'});
			$("#displayoverlay").append(htmlStr);
			var mainPopwid=$(".main_popup1").width();
			
			var elemLeft=(window.innerWidth - 470)/2;
			var elemTop=((window.innerHeight - $("#alertMsgDiv1").height())/2) - 150;
// 			alert(window.innerHeight);alert($("#alertMsgDiv1").height());
			var alertMsgDiv1Hgt=$("#alertMsgDiv1").height();
// 			alert(elemLeft);,'border':'2px solid black'
			
			$("#alertMsgDiv1").css({'display': 'block','margin-top': elemTop+'px','width': '850px',height: alertMsgDiv1Hgt});
			$(".main_popup1").css({'z-index':'5','position':'absolute'});/*,'left': elemLeft+'px'*/
			$("#amitOverlay").css({'display': 'block', 'top': '0px', 'left': '0px', 'width': ($(this).width())+ "px", 'height': $(this).height() + "px", 'background-color': options.bgColor, 'opacity': options.opacity});	

			$("#aMessage").html(options.message);
			$("#alertMsgDiv1").animate({width: 470,'margin-left': (elemLeft)-80}, 300);
			$("#forgot").click(function(){/*alert("ldhfs");*/
			$("#alertMsgDiv1").remove();
			$("#amitOverlay").remove();
			forgot_popup()});
			$("#aClose").click(function(){	
				$("#displayoverlay").css({'height': '1px', 'width': '1px'});
				$("#alertMsgDiv1").remove();
				$("#amitOverlay").remove();
		
			});
		 } 
	 });
	$.fn.extend({
	customAlert2: function(options) {
			var htmlStr = '<div id="amitOverlay1"></div><div id="alertMsgDiv2"><div id="aMessage"></div></div>';
			var defaults = {   
				 bgColor: '#000',  
				 opacity: '0.6',  
				 message: 'This is a test message from the plugin',  
			 };  
			
			var options = $.extend(defaults, options);  
			$("#displayoverlay").css({'height': '100%', 'width': '100%'});
			$("#displayoverlay").append(htmlStr);
			$("#alertMsgDiv2").css({'display': 'block', 'width': '100px','z-index':99999999});
			$("#amitOverlay1").css({'display': 'block', 'top': '0px', 'left': '0px','z-index':9999999, 'width': ($(this).width())+ "px", 'height': $(this).height() + "px", 'background-color': options.bgColor, 'opacity': options.opacity});	

			$("#aMessage").html(options.message);
			//alert("sdf dsf sdf sd fsd fsd f==="+$(".newpopup").length);
			//alert($(".newpopup").width()+"====dskfh ksdf ds======"+$(".newpopup").height());
			//alert($("#workingarea").width()+"===dsfsd fsd====="+$("#workingarea").height()+'======Left==='+parseInt($("#workingarea").position().left));
			//var elemLeft = parseInt(parseInt($(window).width() - $(".newpopup").width()) / 2);
//			var elemTop = parseInt(parseInt($(window).height() - $(".newpopup").height()) / 2);

			//var elemLeft = parseInt(parseInt(parseInt($("#workingarea").width() - $(".newpopup").width()) / 2) + parseInt($("#workingarea").position().left));
			//var elemLeft = parseInt(parseInt(parseInt($("#workingarea").width() - $(".newpopup").width()) / 2) - parseInt($("#workingarea").position().left));

			var elemLeft = parseInt(parseInt(parseInt($("#workingarea").width() - parseInt($(".newpopup").width() /2 )) + parseInt($("#workingarea").position().left)) / 2);
			var elemTop = parseInt(parseInt($("#workingarea").height() - $(".newpopup").height()) / 2);

			//alert(elemLeft+'~~~~~~~'+elemTop);
			//var elemLeft=(window.innerWidth - 730)/2;
			//var elemTop=((window.innerHeight - $("#alertMsgDiv").height())/2) - 150;
			$("#alertMsgDiv2").animate(
									   {
										   width: 470,
										   'margin-left': elemLeft+'px',
										   'margin-top': elemTop+'px'										   
									   }, 300);
			$("#forgot").click(function(){/*alert("ldhfs");*/
			$("#alertMsgDiv2").remove();
			$("#amitOverlay").remove();
			forgot_popup()});
			$("#aClose").click(function(){	
				$("#displayoverlay").css({'height': '1px', 'width': '1px'});
				$("#alertMsgDiv2").remove();
				$("#amitOverlay1").remove();
				document.getElementById('wrdasst').style.display = "block";
		
			});
		$("#Yes").click(function(){
		document.getElementById('wordAssist').style.display = "block";


		});
		$("#No").click(function(){
		$("#displayoverlay").css({'height': '1px', 'width': '1px'});
		$("#alertMsgDiv2").remove();
		$("#amitOverlay1").remove();
		document.getElementById('wrdasst').style.display = "block";

		});
		 } 
	 });
	 $.fn.extend({   
		 customAlert3: function(options) {
			var htmlStr = '<div id="amitOverlay"></div><div id="alertMsgDiv"><div id="aMessage"></div></div>';
			var defaults = {   
				 bgColor: '#000',  
				 opacity: '0.6',  
				 message: 'This is a test message from the plugin',  
			 };  
			
			var options = $.extend(defaults, options);
			
			$("#displayoverlay").css({'height': '100%', 'width': '100%'});
			$("#displayoverlay").append(htmlStr);

			var mainPopwid=$(".outternewlogin_box").width();
			
			var elemLeft=(window.innerWidth - 450)/2;
			var elemTop=((window.innerHeight - $("#alertMsgDiv").height())/2) ;

			var alertMsgDiv1Hgt=$("#alertMsgDiv1").height();
			$("#alertMsgDiv").css({'display': 'block','width': '600px',height: alertMsgDiv1Hgt});
			$("#amitOverlay").css({'display': 'block', 'top': '0px', 'left': '0px', 'width': ($(this).width())+ "px", 'height': $(this).height() + "px", 'background-color': options.bgColor, 'opacity': options.opacity});	

			$("#aMessage").html(options.message);
			$("#alertMsgDiv").animate({width: 500,'margin-left': (elemLeft)-30,'margin-top': '300px'}, 300);
			
			$("#forgot").click(function(){/*alert("ldhfs");*/
			$("#alertMsgDiv").remove();
			$("#amitOverlay").remove();
			forgot_popup()});
			$("#aClose").click(function(){	
				$("#displayoverlay").css({'height': '1px', 'width': '1px'});
				$("#alertMsgDiv").remove();
				$("#amitOverlay").remove();
				NewHTML ="<embed src=\"images/say_it_with_style(386x236).swf\" align=\"top\" menu=\"false\" quality=\"high\" scale=\"noscale\" salign=\"t\" wmode=\"transparent\" bgcolor=\"#ffffff\" name=\"Snow\" allowScriptAccess=\"always\ allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"images/say_it_with_style(386x236).swf\" width=\"386\" height=\"236\" />";
				$(".white_box").html(NewHTML);
			});
		 }
		});


	$("#log_button").click(function(){
	
	$("#togglelog").slideToggle("slow");

	});

 })(jQuery);


