
$(function(){	

$('.home-sliders').html('');
	
var htm='<div class="slide fres-colours"><a href="corporate_calendars.php"><img src="images/transperent.png" border="0" /></a></div><div class="slide fres-bw"><a href="corporate_dairies.php"><img src="images/transperent.png" border="0" /></a></div><div class="slide fres-shipping"><a href="Business_cards_single.php"><img src="images/transperent.png" border="0"/></a></div>';

$('.home-sliders').prepend(htm);


	$('.home-sliders').before('<ul id="slider_nav">').cycle({
	fx:     'scrollHorz',		  
	after:   onAfter,
	timeout: 5000,
	prev:   "#slider_prev",
	next:   "#slider_next",
	speed:1000,
	pager:"#slider_nav"
		
});

	
	


		
var dell = $("#dell").val();
if (dell == 'yes') {
    $.browser.chrome = $.browser.webkit && !! window.chrome;
    $.browser.safari = $.browser.webkit && !window.chrome;
    var elemLeft = "";
    if ($.browser.chrome || $.browser.opera || $.browser.msie || $.browser.safari) {
        elemLeft = "477px"
    } else elemLeft = "222px";
    var htm = '',
        limit = '',
        mainHtm = "If you need different names on your Diaries, then please 'Click' below check box.",
        subHtm = "Multiple Names";
    htm += "<lebel style='float:left; font-size: 10px;'>Name : <input class='newName' type='text' size='18' style='margin-left:5px; margin-right:5px;'/> Full Name : <input class='newFullname' type='text' size='18' style='margin-left:5px;'/></lebel>";
    var htmlStr = '<div id="amitOverlay"><div id="alertMsgDiv"><div id="aMessage"></div></div></div>',
        defaults = {
            bgColor: '#000',
            opacity: '0.6',
            message: "<div style='height:280px; width:510px; border: 10px solid #393; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + elemLeft + " ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:510px; height:280px;' ><div style='font-size:25px; padding-top:30px; font-weight:bold; font-family:'Times New Roman', Times, serif'>DELL<sup style='color:#F00; font-size:x-small;'>TM</sup> Customers Get 10% Off!</div><div style='font-size:18px; padding-top:10px; font-family:Verdana, Geneva, sans-serif'> Use Coupon <font style='font-weight:bold;'>DELL11</font> at time of payment.</div><div style='padding-top:25px; padding-left:20px; height:200px; width:490px;'><a href='corporate_dairies.php'><img src='images/diary.png' height='135'/></a><a href='corporate_pipscalendars.php'><img src='images/calendarpips.png' height='135'/></a></div></div></div>",
            width: '510',
            height: '280',
            htmlstring: '<div id="amitOverlay"></div><div id="alertMsgDiv"><div id="aMessage"></div></div>'
        },
        options = $.extend(defaults, options),
        elemLeft = (window.innerWidth - options.width) / 2,
        elemTop = ((window.innerHeight - options.height) / 2);
    $("#displayoverlay").css({
        'height': '100%',
        'width': '100%'
    });
    $("#displayoverlay").append(options.htmlstring);
    $("#aMessage").html(options.message);
    $("#alertMsgDiv").css({
        'display': 'block',
        'width': options.width + 'px',
        'position': 'absolute',
        'margin-left': '0px',
        'margin-top': '0px'
    });
    $("#amitOverlay").css({
        'display': 'block',
        'top': '0px',
        'left': '0px',
        'width': ($(this).width()) + "px",
        'height': $(this).height() + "px",
        'background-color': options.bgColor,
        'opacity': options.opacity
    });
    if ($.browser.msie) {
        elemLeft = ($(window).width() - options.width) / 2, elemTop = (($(window).height() - options.height) / 2)
    }
    $("#alertMsgDiv").animate({
        queue: false,
        width: options.width,
        'margin-left': (elemLeft),
        'margin-top': elemTop
    }, 300);
    $("#aClose").click(function () {
        $("#displayoverlay").css({
            'height': '1px',
            'width': '1px'
        });
        $("#alertMsgDiv").remove();
        $("#amitOverlay").remove()
    })
}
	

	
var Text="<img src=\'images/diary.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calendarpips.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/backDesign.png\' style=\'width:1px; height:1px; display:none;\'>";

$('#hiddenImg').html(Text);
	
			
		});
		
		function onAfter(){}
		

