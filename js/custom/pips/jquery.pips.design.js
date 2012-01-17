function IsNumeric(strString){
	
	
var strValidChars = "0123456789.-";
var strChar;
var blnResult = true;
if (strString.length == 0) return false;
for (i = 0; i < strString.length && blnResult == true; i++) {
    strChar = strString.charAt(i);
    if (strValidChars.indexOf(strChar) == -1) {
        blnResult = false
    }
}
	
return blnResult;

}


function validateEmail(str){
	
var x = str;
var atpos = x.indexOf("@");
var dotpos = x.lastIndexOf(".");
	
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length){return false;}

}

function clearFld(Id){

	document.getElementById(Id).style.color="black";
	document.getElementById(Id).value="";	
	
}


function checkData()
{
var namepop = document.getElementById('namePopup').value;
var emailpop = document.getElementById('emailPopup').value;
var phonepop = document.getElementById('phonePopup').value;
var chk = true;
if (emailpop != "" && validateEmail(emailpop) == false) {
	document.getElementById('emailPopup').value="Invalid Email";
	document.getElementById('emailPopup').style.color="red";
    chk = false;
    
}
if (phonepop != "") if (IsNumeric(phonepop) == false || phonepop.length <= 9) {
	document.getElementById('phonePopup').style.color="red";
	document.getElementById('phonePopup').value="Invalid Phone Number";
    chk = false;
}
if (namepop == "" || !namepop.match(/\w/)) {
	document.getElementById('namePopup').style.color="red";
	document.getElementById('namePopup').value="Plaese Enter Your Name";
    chk = false; 
}
if (chk == true && namepop != "") {
    $.post("usertrack.php?pageurl=pips&namepop=" + namepop + "&emailpop=" + emailpop + "&phonepop=" + phonepop);
    $('#aClose').click()
}

}



function timeout_trigger() {
	
$("#displayoverlay").css({
    'height': '1px',
    'width': '1px'
});
$("#alertMsgDiv").remove();
$("#amitOverlay").remove();
$.browser.chrome = $.browser.webkit && !! window.chrome;
$.browser.safari = $.browser.webkit && !window.chrome;
var elemLeft = "";
if ($.browser.chrome || $.browser.opera || $.browser.msie || $.browser.safari) {
    elemLeft = "477px"
} else elemLeft = "222px";

var msg="<div style='height:320px; width:510px; border:  5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: "+elemLeft+" ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:510px; height:320px;' ><div  style='padding-top:10px;'><img src='images/helplogo.jpg' height='60'/><span style='font-size:25px; padding-left:30px; font-weight:bold; font-family:'Times New Roman', Times, serif'>Need Help?</span></div><div style='font-size:18px; padding-top:10px; font-family:Verdana, Geneva, sans-serif'> Please Contact Us</div><div style='padding-top:15px; padding-left:20px; height:20px; width:490px;'><lebel>Name : </lebel><input type='text' id='namePopup' name='namePopup' onclick='clearFld(this.id);' onfocus='clearFld(this.id);'/></div><div style='padding-top:15px; padding-left:20px; height:20px; width:490px;'><lebel>Email : </lebel><input type='text' id='emailPopup' name='emailPopup' onclick='clearFld(this.id);' onfocus='clearFld(this.id);'/></div><div style='padding-top:15px; padding-left:20px; height:20px; width:490px;'><lebel>Phone : </lebel><input type='text' id='phonePopup' name='phonePopup' onclick='clearFld(this.id);' onfocus='clearFld(this.id);'/></div><div style='width: 335px; float: left; height: 40px; margin-top:25px; '><input type='image' src='images/newSave.png' name='Done' id='Done' value='done' style='background:none; border:none; padding:0; float:right;' onclick='checkData();'></div></div></div>";


var htmlStr = '<div id="amitOverlay"><div id="alertMsgDiv"><div id="aMessage"></div></div></div>',
    defaults = {
        bgColor: '#000',
        opacity: '0.6',
        message: msg,
        width: '510',
        height: '320',
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
    elemLeft = ($(window).width() - options.width) / 2, 
	elemTop = (($(window).height() - options.height) / 2)
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
});

}

$(function(){

var Text="<img src=\'i_pips/img/basketball.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/grafitti.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/la_skyline.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/note2.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/plane.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/street.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/berlinopera.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/cake.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/chinatown.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/clockwork.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/golf.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/wall.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/banner.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/stairs.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/Tank.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/SHIP.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/Nevada2.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/IntlCar.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/newship.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/shirt.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/airport.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/airportgate.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/boat.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/Car.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/chip.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/coffee.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/curved_bldg.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/demonstration.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/ET.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/ford.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/genius.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/goldbar.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/LondonTube.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/MetroBoard.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/Nevada.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/stadium.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/newspaper.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/Note.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/oldwall.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/picadily.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/pondy.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'i_pips/img/PYRAMID.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/restaurant.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'i_pips/img/Road.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cross.png\'  style=\'width:1px; height:1px; display:none;\'><img src=\'images/blueBack.jpg\'  style=\'width:1px; height:1px; display:none;\'>";

$('#hiddenImg').html(Text);

setTimeout('timeout_trigger()', 120000);

});



function tabSwitch(onLink,offLink1,offLink2,onTab,offTab1,offTab2){
	
document.getElementById(onLink).className = "active";
document.getElementById(offLink1).className = "";
document.getElementById(offLink2).className = "";
document.getElementById(onTab).style.display = "block";
document.getElementById(offTab1).style.display = "none";
document.getElementById(offTab2).style.display = "none";

}



function popular(){
var f = $("#zoomerState").val(),
    myMonths = new Array(["Jan", "46"], ["Feb", "8"], ["Mar", "47"], ["Apr", "22"], ["May", "44"], ["Jun", "2"], ["Jul", "13"], ["Aug", "30"], ["Sep", "15"], ["Oct", "39"], ["Nov", "3"], ["Dec", "17"]),
    i = 0,
    Htm = "";
for (i; i < 12; i++) {
    Htm += (i < 11) ? myMonths[i][1] + "," : myMonths[i][1];
    var getImg = $('#' + myMonths[i][1]).attr('src');
    $('#' + myMonths[i][0]).attr('src', getImg).css('display', 'none').show('slow')
}
$("#imageID").val(Htm);
}

	
