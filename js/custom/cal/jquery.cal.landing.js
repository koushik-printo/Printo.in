function tabSwitch(onLink,offLink1,offLink2,onTab,offTab1,offTab2)
	{
		document.getElementById(onLink).className="active";
		document.getElementById(offLink1).className="";
		document.getElementById(offLink2).className="";
		
		document.getElementById(onTab).style.display="block";
		document.getElementById(offTab1).style.display="none";
		document.getElementById(offTab2).style.display="none";
	}

function mypr(){
	
	var a = document.getElementById('prlisting').value;
	if(a==2)
		{
		document.getElementById('a5_cal').style.display='none';
		document.getElementById('sq_cal').style.display='block';
		document.getElementById('lng_cal').style.display='none';
		}else if(a==3){
		document.getElementById('a5_cal').style.display='none';
		document.getElementById('sq_cal').style.display='none';
		document.getElementById('lng_cal').style.display='block';
		}else{
		document.getElementById('a5_cal').style.display='block';
		document.getElementById('sq_cal').style.display='none';
		document.getElementById('lng_cal').style.display='none';
		}
		
	}
$(function () {


	
	
var Text="<img src=\'images/corpo_cal.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calender/A5_300.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/calender/Square_300.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calender/Cal_300.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calender/A5_500.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/calender/Square_500.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calender/Cal_500.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calender/Long/02/Main_300.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/calender/Square/01/Main_300.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/calender/A5/02/Main_300.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cross.png\' style=\'width:1px; height:1px; display:none;\'>";

$('#hiddenImg').html(Text);
	
});