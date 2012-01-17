if (!$.browser.mozilla) 
var C = "277px";
else 
var C = "122px";

function emailValidator(elem, helperMsg)
{	var blnResult = true;
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if(elem.value.match(emailExp)){
		blnResult= true;
	}else{
		var B = helperMsg;
			$('#fscr').css('display','none');
			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
		//alert(helperMsg);
		blnResult = false;
		
	}
	return blnResult;
}
function IsNumeric(strString)
   {
		   var strValidChars = "0123456789";
		   var strChar;
		   var blnResult = true;
		
		   if (strString.length == 0) return false;
		
		   //  test strString consists of valid characters listed above
		   for (i = 0; i < strString.length && blnResult == true; i++)
			  {
			  strChar = strString.charAt(i);
			  if (strValidChars.indexOf(strChar) == -1)
				 {
				 blnResult = false;
				 }
			  }
		   return blnResult;
   }
function formtab(a){
		if(a==1)
		{

			document.getElementById("form-tab1").className="active";
			document.getElementById("form-tab2").className="";
			document.getElementById("form-con1").style.display="block";
			document.getElementById("form-con2").style.display="none";
		}
		else if(a==2)
		{

			document.getElementById("form-tab1").className="";
			document.getElementById("form-tab2").className="active";
			document.getElementById("form-con1").style.display="none";
			document.getElementById("form-con2").style.display="block";
		}	
	
}
function radio(a){
	
	switch(a){
		
		case 1:
			document.getElementById("rd1").className="active";
			document.getElementById("rd2").className="";
			document.getElementById("rd3").className="";
			document.getElementById("rd4").className="";
			document.getElementById("feedbackType").value="Complaint";	
			break;
		
		case 2:
			document.getElementById("rd1").className="";
			document.getElementById("rd2").className="active";
			document.getElementById("rd3").className="";
			document.getElementById("rd4").className="";
			document.getElementById("feedbackType").value="Question";	
			break;
		
		case 3:
			document.getElementById("rd1").className="";
			document.getElementById("rd2").className="";
			document.getElementById("rd3").className="active";
			document.getElementById("rd4").className="";
			document.getElementById("feedbackType").value="Idea";	
			break;
		
		case 4:
			document.getElementById("rd1").className="";
			document.getElementById("rd2").className="";
			document.getElementById("rd3").className="";
			document.getElementById("rd4").className="active";
			document.getElementById("feedbackType").value="Praise";	
			break;
		
	}
}
function returnTrue(){
	
$('#aClose').click();
formId=document.forms[0].id;
$('#'+formId).submit();
}


function radio2(a){
	
	switch(a){
		
		case 1:
			document.getElementById("rd21").className="active";
			document.getElementById("rd22").className="";
			document.getElementById("rd23").className="";
			document.getElementById("rd24").className="";
			document.getElementById("feedbackType1").value="Complaint";	
			break;
		
		case 2:
			document.getElementById("rd21").className="";
			document.getElementById("rd22").className="active";
			document.getElementById("rd23").className="";
			document.getElementById("rd24").className="";
			document.getElementById("feedbackType1").value="Question";
			break;
		
		case 3:
			document.getElementById("rd21").className="";
			document.getElementById("rd22").className="";
			document.getElementById("rd23").className="active";
			document.getElementById("rd24").className="";
			document.getElementById("feedbackType1").value="Idea";
			break;
		
		case 4:
			document.getElementById("rd21").className="";
			document.getElementById("rd22").className="";
			document.getElementById("rd23").className="";
			document.getElementById("rd24").className="active";
			document.getElementById("feedbackType1").value="Praise";
			break;
	}
}
function displayFscr(){
	
	$('#fscr').css('display','inline');
	
}

function checkfeedback(a)
{
	
	
	var blnResult = true;
		if(a=="w")
		{
		var type=document.getElementById("feedbackType").value;
		var description=document.getElementById("topdescription").value;
		var topName=document.getElementById("topName").value;
		var topEmail=document.getElementById("topEmail").value;
		var top_Email=document.getElementById("topEmail");
		var topMobile=document.getElementById("topMobile").value;
		
			if(type=="")
			{
				
		$('#fscr').css('display','none');		
		var B = "Please help classify your Feedback Type";

        $(document).customAlert({
            opacity: 0.4,
            width: 310,
            height: 100,
            bgColor: "#aaa",
            message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
        });
				//alert("Please help classify your Feedback Type");
				blnResult= false;
			}
			else if(description=="")
			{
			$('#fscr').css('display','none');		
			var B = "A Description or some details would really help. Please? :-)";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				//alert("A Description or some details would really help. Please? :-)");
				blnResult= false;
			}
			else if(topName=="")
			{
			$('#fscr').css('display','none');		
			var B = " Sorry, you forgot to enter your name. ";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				
				//alert("Sorry, you forgot to enter your name. ");
				blnResult= false;
			}
			else if(topEmail=="")
			{
			$('#fscr').css('display','none');	
			var B = " Oops! It seems you forgot to leave us your email.";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				//alert("Oops! I seems you forgot to leave us your email.");
				blnResult= false;
			}
			else if(emailValidator(top_Email, "Please can you -re-check if your email ID is valid.")==false)
			{
				blnResult= false;
			}
			else if(topMobile =="" || !topMobile.match(/\w/) || IsNumeric(topMobile)==false)
			{
			$('#fscr').css('display','none');	
			var B = " Please Fill Correct Phone Number ";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				
				//alert("Please Fill Correct Phone Number");
				blnResult= false;
			}
			else
			{
				
			CloseLightBox();
			
			var B = "Thank you for your feedback. Feedback is very important to us and we appreciate the time and effort you have spent in letting us know about your experience. If you have provided a contact number or e-mail, we will get in touch within 4 working hours. Or you can call me on 9008 301 302.  - Lalana Zaveri, Director of Operations";
		
			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 250,
			bgColor: "#aaa",
			message: "<div style='height:250px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='returnTrue();'><div style='background:url(images/backDesign.png); width:310px; height:250px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});	

			blnResult= false;
				
			}
		}
		else if(a=="s")
		{
			var type=document.getElementById("feedbackType1").value;
			var description=document.getElementById("topdescription1").value;
			var topName=document.getElementById("topName1").value;
			var topEmail=document.getElementById("topEmail1").value;
			var storeName=document.getElementById("storeName").value;
			var top_Email=document.getElementById("topEmail1");
			var topMobile1=document.getElementById("topMobile1").value;
			if(type=="")
			{
			$('#fscr').css('display','none');	
			var B = "Please help classify your Feedback Type.";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				//alert("Please help classify your Feedback Type.");
				blnResult= false;
			}
			else if(storeName=="")
			{
			$('#fscr').css('display','none');	
			var B = "Please mention the Store Name / Location";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				//alert("Please mention the Store Name / Location");
				blnResult= false;
			}
			else if(topName=="")
			{
			$('#fscr').css('display','none');	
			var B = "Sorry, you forgot to enter your name.";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				//alert("Sorry, you forgot to enter your name.");
				blnResult= false;
			}
			else if(topEmail=="")
			{
			$('#fscr').css('display','none');	
			var B = "Sorry, you forgot to enter your name.";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});
				//alert("Oops! It seems you forgot to leave us your email.");
				blnResult= false;
			}
			else if(description=="")
			{
			$('#fscr').css('display','none');	
			var B = "Please give us a few details";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});	
				
				//alert("Please give us a few details");
				blnResult= false;
			}
			else if(emailValidator(top_Email, "Please can you -re-check if your email ID is valid.")==false)
			{
				blnResult= false;
			}
			else if(topMobile1 =="" || !topMobile1.match(/\w/) || topMobile1(topMobile)==false)
			
			{
			$('#fscr').css('display','none');	
			var B = "Please Fill Correct Phone Number";

			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 100,
			bgColor: "#aaa",
			message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='displayFscr();'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});	
				
				//alert("Please Fill Correct Phone Number");
				blnResult= false;
			}
			else
			{
			var B = "Thank you for your feedback. Feedback is very important to us and we appreciate the time and effort you have spent in letting us know about your experience. If you have provided a contact number or e-mail, we will get in touch within 4 working hours. Or you can call me on 9008 301 302.  - Lalana Zaveri, Director of Operations";
		
			$(document).customAlert({
			opacity: 0.4,
			width: 310,
			height: 250,
			bgColor: "#aaa",
			message: "<div style='height:250px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + C + " ; margin-top: 0px; z-index: 1000; cursor: pointer;' onclick='returnTrue();'><div style='background:url(images/backDesign.png); width:310px; height:250px;' ><br/><div style='position:absolute; margin:20px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>" + B + "<br/></div></div></div>"
			});	

			blnResult= false;
			}	
		}
		return blnResult;
}

function OpenLightBox() {
		document.getElementById('fscr').style.display = "inline";
		
}
function CloseLightBox() {

		document.getElementById("fscr").style.display = "none";
}


$(function(){
		
	var elemTop=(window.innerHeight - 560)/2;
	$('#fscrTable').parent().css({
		
		'margin-top':elemTop,
		'border':'5px solid #B4E2ED',
		'box-shadow':'10px 10px 20px #aaa;',
		'-webkit-box-shadow':'10px 10px 20px #aaa',
		'-moz-box-shadow':'10px 10px 20px #aaa',
		'-moz-border-radius':'5px',
		'border-radius':'5px'
		
	
	});
	
	
	});
