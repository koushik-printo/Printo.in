	function checkValidate()
	{
		var NameTxt = document.getElementById('pips_name').value;
		var FullNameTxt = document.getElementById('pips_fullname').value;
		var validate = true;
		if (NameTxt == "" || !NameTxt.match(/\w/)) {
		document.getElementById('name').style.color = "red";
		document.getElementById('name').value = "Please Enter the Name";
		validate = false
		}
		if (FullNameTxt == "" || !FullNameTxt.match(/\w/)) {
		document.getElementById('fullname').style.color = "red";
		document.getElementById('fullname').value = "Please Enter the FullName";
		validate = false
	}
		
		
return validate;
	
	}

	function tabSwitch(onLink,offLink1,offLink2,onTab,offTab1,offTab2)
	{
		document.getElementById(onLink).className="active";
		document.getElementById(offLink1).className="";
		document.getElementById(offLink2).className="";
		
		document.getElementById(onTab).style.display="block";
		document.getElementById(offTab1).style.display="none";
		document.getElementById(offTab2).style.display="none";
	}
	


function confirmCheck(){
	
	
if (document.getElementById('confirm').checked == true) {
    window.location = "viewcart.php"
} else {
    $('#confirmWrap').css('border', '1px solid red');
    alert('Please Confirm By Checking the Checkbox!')
}
	
	}



function getprice(str)
{
//
var xmlhttp;
			if (str=="")
			  {
			  document.getElementById("txtHint").innerHTML="";
			  
			  };
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			 	 xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			 	 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  };
	xmlhttp.onreadystatechange=function()
  	{
		//alert(xmlhttp.responseText);
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				
				document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
			};
  	};
  
		 var mystr = '';
		 var elem = document.getElementById('form1').elements;
				for(var i = 0; i < elem.length; i++)
				{
					if (elem[i].name.indexOf("mypr_")!=-1)
					{
						mystr += elem[i].name +":"+ elem[i].value;
						mystr += ",";
						//alert(mystr);
					}
				} 


	
	var htm='',
	limit='',
	mainHtm="If you need different names on your Diaries, then please 'Click' below check box or Simply Upload an XL sheet.",
	subHtm="Multiple Names";

	limit=document.form1.mypr_qty.value;

	for(var i=1;i<=limit;i++){
	
	htm+="<lebel style='float:left; font-size: 10px;'>Name : <input class='newName' type='text' size='18' style='margin-left:5px; margin-right:5px;'/> Full Name : <input class='newFullname' type='text' size='18' style='margin-left:5px;'/></lebel>";
	
	}
if(limit>1){
if($.browser.mozilla )
var btnLeft=200,loadLeft=160,loadTop=32,btnTop=30, crossLeft="222px";
else
if($.browser.opera)
var btnLeft=190,loadLeft=150,loadTop=-7,btnTop=-10, crossLeft="477px";
else
if($.browser.msie)
var btnLeft=190,loadLeft=150,loadTop=22,btnTop=20, crossLeft="477px";
else
var btnLeft=190,loadLeft=150,loadTop=22,btnTop=20, crossLeft="477px";
	 
$(document).customAlert({opacity:0.4, width: 510, height: 380, bgColor: "#aaa", message: "<div style='height:380px; width:510px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: "+crossLeft+" ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:510px; height:380px;' ><br/><div style='position:absolute; margin:10px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A;'>"+mainHtm+"<br/><br/><input name='mName' id='mName' type='checkbox' style='cursor:pointer;'/> "+subHtm+" <div style='position:absolute; margin:15px 0px 0px 0px; font-size:14px; font-weight:bold; height:250px; width:480px; overflow:auto; display:block;' id='mFileDiv'><div style='margin:50px 0px 30px 10px; font-size:25px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color:#0593DF;'>OR</div><input id='fileToUpload' type='file' name='fileToUpload' class='input' style='cursor:pointer; width:160px;'/><div style='position:absolute;'><img id='loading' src='images/loading.gif' style='display:none; height:20px; width:20px; padding:5px; position:absolute;  margin-left:"+loadLeft+"px;  margin-top:"+loadTop+"px;'><a class='btn-blue' id='buttonUpload' onClick='return ajaxFileUpload();' style='cursor:pointer;  height:26px; width:90px; margin-left:"+btnLeft+"px; margin-top:"+btnTop+"px;'><span style='height:18px; width: 70px;'><span style='height:13px; vertical-align:middle; background: url(images/icon-btn-arr-blue-up.gif) no-repeat scroll right center transparent;'>Upload</span></span></a></div></div><div style='position:absolute; margin:15px; font-size:10px; font-weight:bold; height:250px; width:480px; overflow:auto; display:none;' id='mNameDiv'>"+htm+"<div style='width: 287px; float: left; height: 40px; margin-top:20px; '><input type='image' src='images/newSave.png' name='Done' id='Done' value='done' style='background:none; border:none; padding:0; float:right;' /></div></div></div></div></div>"

});
}

$('#mName').click(function () {
	
    $("#mFileDiv").slideToggle();
	$("#mNameDiv").slideToggle();
});
	
		
$('#Done').click(function () {
    var a = '',
        fullname = '',
        Alert = 'Already Selected',
        readOnly = 'true';
    $(".newName").each(function () {
        if ($(this).val() != '') a += $(this).val() + ',';
        else {
            Alert = 'Please Fill All Fields Again';
            $("#name").css('color', 'red');
            readOnly = 'false';
            a = '';
            fullname = ''
        }
    });
    $(".newFullname").each(function () {
        if ($(this).val() != '') fullname += $(this).val() + ',';
        else {
            Alert = 'Please Fill All Fields Again';
            $("#fullname").css('color', 'red');
            readOnly = 'false';
            a = '';
            fullname = ''
        }
    });
    $("#pips_name").val(a);
    $("#pips_fullname").val(fullname);
    $("#name").val(Alert);
    $("#fullname").val(Alert);
    if (readOnly == 'true') {
        $("#name").attr('readonly', readOnly);
        $("#fullname").attr('readonly', readOnly)
    }
    $("#displayoverlay").css({
        'height': '1px',
        'width': '1px'
    });
    $("#alertMsgDiv").remove();
    $("#amitOverlay").remove()
});



xmlhttp.open("GET","getupdateorder.php?q="+mystr+"&itemid="+str,true);
xmlhttp.send();

}

function ajaxFileUpload(){

if ($("#cal").length > 0) {
		var folder = 'cal_xl';}
		else {
		var folder = "";}


		$("#loading")
		.ajaxStart(function(){
			$(this).show();
		})
		.ajaxComplete(function(){
			$(this).hide();
		});

			
		$.ajaxFileUpload
		(
			{
				url: 'ajaxUpload/doajaxXlupload.php?folder=' + folder,
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
							//alert(data.error);
							var elemLeft="277px";
							$(document).customAlert({opacity:0.4, width: 310, height: 100, bgColor: "#aaa", message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: "+elemLeft+" ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:10px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>"+data.error+"<br/></div></div></div>"

});
						}
						else
						{
						var file=data.msg.replace(/\\/g,'/').replace( /.*\//, '' );
						$('#name').val('file Uploaded').css('color','black').attr('readonly','true');		
						$('#fullname').val('file Uploaded').css('color','black').attr('readonly','true');
						$('#pips_name').val(data.msg);		
						$('#pips_fullname').val(data.msg);	
							
						$("#displayoverlay").css({
							'height': '1px',
							'width': '1px'
						});
						$("#alertMsgDiv").remove();
						$("#amitOverlay").remove();
						var elemLeft="277px";
						var mainHtm="Thanks, Your file has been successfully uploaded.";
						$(document).customAlert({opacity:0.4, width: 310, height: 100, bgColor: "#aaa", message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: "+elemLeft+" ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:10px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>"+mainHtm+"<br/></div></div></div>"

});
													
							
						}
					}
				},
				error: function (data, status, e)
				{
					
					//alert(e);
					var elemLeft="277px";
					$(document).customAlert({opacity:0.4, width: 310, height: 100, bgColor: "#aaa", message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: "+elemLeft+" ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:10px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>"+e+"<br/></div></div></div>"

});
				},
			}
		);
		
		return false;
}	

$(function () {
	
var Text="<img src=\'images/cal_img/cal_pips/pipsbusinessblack.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_pips/pipsbusinesswhite.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/cal_img/cal_pips/pipsfunblack.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cal_img/cal_pips/pipsclassic.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cross.png\'  style=\'width:1px; height:1px; display:none;\'><img src=\'images/blueBack.jpg\'  style=\'width:1px; height:1px; display:none;\'>";
	
	$('#hiddenImg').html(Text);
	
    $('#name').change(function () {
        $("#name").css('color', 'black');
        var a = $("#name").val();
        $("#pips_name").val(a)
    });
    $('#fullname').change(function () {
        $("#fullname").css('color', 'black');
        var a = $("#fullname").val();
        $("#pips_fullname").val(a)
    });
    $('#name').click(function () {
        $("#name").css('color', 'black');
        var a = $("#name").val();
        if (a == 'Please Fill All Fields Again' || a == 'Please Enter the Name' || a == 'Please Enter Valid Name') $("#name").val('')
    });
    $('#fullname').click(function () {
        $("#fullname").css('color', 'black');
        var a = $("#fullname").val();
        if (a == 'Please Fill All Fields Again' || a == 'Please Enter the FullName' || a == 'Please Enter Valid FullName') $("#fullname").val('')
    });
    $('#name').keydown(function () {
        $("#name").css('color', 'black');
        var a = $("#name").val();
        if (a == 'Please Fill All Fields Again' || a == 'Please Enter the Name' || a == 'Please Enter Valid Name') $("#name").val('')
    });
    $('#fullname').keydown(function () {
        $("#fullname").css('color', 'black');
        var a = $("#fullname").val();
        if (a == 'Please Fill All Fields Again' || a == 'Please Enter the FullName' || a == 'Please Enter Valid FullName') $("#fullname").val('')
    });
    $('#pips_cal_type').change(function () {
        var a = $("#pips_cal_type option:selected").val();
        switch (a) {
        case '17':
            $("#imgType").attr('src', 'images/cal_img/cal_pips/pipsbusinessblack.png');
            break;
        case '18':
            $("#imgType").attr('src', 'images/cal_img/cal_pips/pipsbusinesswhite.png');
            break;
        case '19':
            $("#imgType").attr('src', 'images/cal_img/cal_pips/pipsfunblack.png');
            break;
        case '20':
            $("#imgType").attr('src', 'images/cal_img/cal_pips/pipsclassic.png');
            break
        }
    })
});

