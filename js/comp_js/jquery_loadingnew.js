function loading_popupnew(result){

$(document).ready(function() {

$("#alertMsgDiv").remove();
$("#amitOverlay").remove();



// $(document).customAlert({opacity:0.4, bgColor: "#aaa", message: " <!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html xmlns='http://www.w3.org/1999/xhtml'><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><link rel='stylesheet' type='text/css' href='css/style.css' /><link rel='shortcut icon' type='image/x-icon' href='images/favicon.ico'><title>&nbsp;E_card</title></head><body><div class='loading_popup'><div class='popup_topbox' ><div class='top_left_pop' style='margin-left:-25px;'>&nbsp;Login In...</div><div class='top_left_pop' style='margin-left:-25px;'>&nbsp;<img src='images/loading.gif' style='height:50px;width:50px;'  /></div><div class='login_outterbox'>&nbsp;</div></div><div class='login_outterbox'><div class='input_outterbox_popup'></div><div class='input_outterbox_popup'></div></div></body></html>"
// 
// });

var htm="<tr><td align='right' onmouseover=\"document.getElementById('loginusrmenu').style.display='block';\" onmouseout=\"document.getElementById('loginusrmenu').style.display='none';\">"+result+"'s Account Dashboard</td></tr>";


$("#toplog").html(htm);
$("#userid").val(result);

setTimeout('closelogin()',8000);

// window.location="dashboard.php";
});
}


 
