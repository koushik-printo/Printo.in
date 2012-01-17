function tabSwitch(onLink,offLink1,offLink2,onTab,offTab1,offTab2)
	{
		document.getElementById(onLink).className="active";
		document.getElementById(offLink1).className="";
		document.getElementById(offLink2).className="";
		
		document.getElementById(onTab).style.display="block";
		document.getElementById(offTab1).style.display="none";
		document.getElementById(offTab2).style.display="none";
	}
	
$(function () {
	
	
var Text="<img src=\'images/cal_img/cal_thumb/preview4.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_thumb/preview5.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/cal_img/cal_thumb/preview6.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_thumb/preview1.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_img/preview4.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_img/preview5.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_img/preview6.jpg\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/cal_img/cal_img/preview1.jpg\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/diary.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cross.png\' style=\'width:1px; height:1px; display:none;\'>";

$('#hiddenImg').html(Text);
	
	});
