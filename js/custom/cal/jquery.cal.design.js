
$(document).ready(function () {
    if ($("#cal").length > 0) {
        $('#main_image').easySlider();
        var a = $('.app-box-main').position().left;
        var b = $('.app-box-main').width();
        var c = a + b;
        var d = c - 45;
        var e = a + 18;
        var f = $('#current_product_type').val();
        if (f == "Long") {
            $('#nextBtn').css('margin-top', '-160px');
            $('#prevBtn').css('margin-top', '-160px');
            $('#nextBtn').css('left', d + 'px');
            $('#prevBtn').css('left', e + 'px')
        }
        if (f == "A5") {
            $('#nextBtn').css('margin-top', '-260px');
            $('#prevBtn').css('margin-top', '-260px');
            $('#nextBtn').css('left', d + 'px');
            $('#prevBtn').css('left', e + 'px')
        }
        if (f == "Square") {
            $('#nextBtn').css('margin-top', '-375px');
            $('#prevBtn').css('margin-top', '-375px');
            $('#nextBtn').css('left', d + 'px');
            $('#prevBtn').css('left', e + 'px')
        }
        var g = $('.add-content-editor').height();
        if (g == 0) {
            if (f == "Long") {
                $('#main_image').css('height', '285px');
                $('#desc').css({
                    'margin-top': '385px',
                    'display': 'block'
                })
            }
            if (f == "A5") {
                $('#main_image').css('height', '500px');
                $('#desc').css({
                    'margin-top': '600px',
                    'display': 'block'
                })
            }
            if (f == "Square") {
                $('#main_image').css('height', '700px');
                $('#desc').css({
                    'margin-top': '800px',
                    'display': 'block'
                })
            }
        } else {
            $('#main_image').css('height', g + 'px');
            g = g + 100;
            $('#desc').css({
                'margin-top': g + 'px',
                'display': 'block'
            })
        }
        var h = '';
        if (f == "A5") h = "Classic Calendar";
        if (f == "Long") h = "Long Calendar";
        if (f == "Square") h = "Compact Calendar";
        $('#calName').css('width', '300px').html(h)
    }
});

//--> for polling from here

		 
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
if($("#cal").length==0){
$.ajax({
  url: "/printo.in/v1_2/business-printing/business-card/create/test.html",
  context: document.body,
  success: function(){
    $(this).addClass("done");
  }
});
}
        function imgloader () {
		
		$.post("/printo.in/v1_2/getsession.asp", function(data) {//alert("/printo.in/timg/"+data+".jpg?" + (new Date()).getTime());
				 var mysess = data, DateTime=(new Date()).getTime();
				 $("#vcimgLog").attr("src", "/printo.in/timg/"+mysess+".jpg?" + DateTime);
				  $("#vcimg").attr("src", "/printo.in/timg/"+mysess+".jpg?" + DateTime);
				  $("#myimg").attr("value", mysess);
				  $("#AddCart").css("display","block");
         });
		 
                       
        }
        function pollforupdate() {
                        var t=setTimeout("imgloader()",1500);   
        }
		function previewshow() {
                        $("#AddCart").css("display","block");   
        }
 $(document).ready(function() {

var Text="<img src=\'images/cross_circle.png\' style=\'width:1px; height:1px; display:none;\' id='cross_logo'><img src=\'images/Back.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/Back1.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/Forward.png\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/Forward1.png\'  style=\'width:1px; height:1px; display:none;\' ><img src=\'images/loading.gif\' style=\'width:1px; height:1px; display:none;\'><img src=\'images/cross.png\' style=\'width:1px; height:1px; display:none;\'>";

if($("#cal").length==0){
$('#imgDiv').prepend(Text);
}


var fol=$('#current_product_folder').val();
var type=$('#current_product_type').val();
if($("#cal").length>0){
for(var i=0;i<=12;i++){
	$('#imgDiv').prepend('<img src="images/calender/'+type+'/'+fol+'/'+i+'.png" style="width:1px; height:1px;"/>');
	}
}
		
$('#uploadFileNo').click(function(){
	
	$('#logo').remove();
	$('#fileToUpload').val('');
	
	});	 
$("input").keyup(function () {
    $(this).parent().next().show()
});	
	 
	 
//   1st time for carry forward of sessions.

if($("#cal").length==0)
$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll() );

//	 below for event trap
 $("input").change(function() {
	 
	 if($("#cal").length==0){
		 
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

function blankThat(a)
{	
if(document.getElementById(a).value == document.getElementById(a).title)
document.getElementById(a).value="";
}


function showUpload(str){
	
if (str == "yes") {
    $("#fileShow").css({
        "width": "300px",
        "height": "70px"
    });
    $("#fileShow").slideDown()
} else {
    $("#fileShow").slideUp();
    $("#fileShow").css({
        "height": "10px"
    });
    document.getElementById('FileUpload1').value = "";
    document.getElementById('sizelogow').value = "";
    document.getElementById('sizelogoh').value = "";
    document.getElementById('logox').value = "";
    document.getElementById('logoy').value = "";
	if($("#cal").length==0)
    $.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll());
}	
	
}

function loading(){
	
	var reqTop = $("#fileadd").offset().top,
    reqLeft = $("#fileadd").offset().left,
    reqWidth = $("#fileToUpload").width(),
    absoluteLeft = reqLeft + reqWidth + 30,
    absoluteTop = reqTop;
if ($("#loading").length == 0) {
    if ($("#cal").length > 0) {
        $("#logo").remove();
        $(".tab-content-draggable").prepend('<img id="loading" src="images/loading.gif" style="display:block; height:30px; width:30px;" />')
    } else $("#fileadd").prepend('<img id="loading" src="images/loading.gif" style="position:absolute;  display:block; height:30px; width:30px; left:' + absoluteLeft + 'px; top:' + absoluteTop + 'px; float:right;" />')
};
	}
	
	
function ajaxFileUpload(){
	
loading();
if ($("#cal").length == 0) {
    $("#fileadd").ajaxStart(function () {}).ajaxComplete(function () {
        if ($("#loading").length == 1) {
            $("#fileadd").find("img").remove();
        }
    })
} else {
    $(".tab-content-draggable").ajaxStart(function () {}).ajaxComplete(function () {
        if ($("#loading").length == 1) {
            $(".tab-content-draggable").find("img#loading").remove();
        }
    })
}
if ($("#cal").length > 0) var folder = 'cal_logos';
else var folder = 'diary_logos';

$.ajaxFileUpload({
    url: 'ajaxUpload/doajaxfileupload.php?folder=' + folder,
    secureuri: false,
    fileElementId: 'fileToUpload',
    dataType: 'json',
    data: {
        name: 'logan',
        id: 'id'
    },
    success: function (a, b) {
        if (typeof (a.error) != 'undefined') {
            if (a.error != '') {
                alert(a.error)
            } else {
                var c = a.msg.split("#");
                imagePath = c[0], parentTop = $(".tab-content-draggable").offset().top + 39, parentLeft = parseInt($(".tab-content-draggable").offset().left + $(".tab-content-draggable").width()) - 230;
                if ($("#cal").length > 0) {
                    if ($("#logo").length > 0) $('#logo').remove();
                    var e = /^.+\.([^.]+)$/.exec(imagePath);
                    e = null ? "" : e[1];
                    if (e.toLowerCase() == 'jpg' || e.toLowerCase() == 'png' || e.toLowerCase() == 'gif' || e.toLowerCase() == 'jpeg' || e.toLowerCase() == 'pjpeg') $(".tab-content-draggable").prepend("<img id='logo' class='ui-draggable' src=" + imagePath + " height='80'  style='display: block;'>");
                    else $(".tab-content-draggable").prepend("<img id='logo' class='ui-draggable' src='' height='80'  style='display: block;'>")
                } else {
                    $(".tab-content-draggable").prepend("<img id='logo' class='ui-draggable' src=" + imagePath + "  style='position:absolute; left:" + parentLeft + "px; top:" + parentTop + "px; display: none;'>");
                    window.scrollTo(0, 0)
                }
                if ($("#logo").length == 1) {
                    var d = $("#logo").offset().top,
                        elemLeft = $("#logo").offset().left,
                        absoluteTop = d - $(".tab-content-draggable").position().top,
                        absoluteLeft = elemLeft - $(".tab-content-draggable").position().left,
                        elemWidth = $("#logo").width(),
                        elemHeight = $("#logo").height(),
                        imagePath = $("#logo").attr("src"),
                        imageName = imagePath.replace(/\\/g, '/').replace(/.*\//, '');
                    document.getElementById('FileUpload1').value = imageName;
                    document.getElementById('sizelogow').value = elemWidth;
                    document.getElementById('sizelogoh').value = elemHeight;
                    document.getElementById('logox').value = absoluteLeft;
                    document.getElementById('logoy').value = absoluteTop;
                    if ($("#cal").length == 0) {
                        $.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll());
                        setTimeout('$.post("/printo.in/v1_2/business-printing/business-card/create/add2que.asp", $("#form1").serialize(), startpoll())', 1500)
                    }
                }
            }
        }
    },
    error: function (a, b, e) {
        alert("Error<br/>This error occurred because of some unproperly <br/>installed add-ons on your browser.")
    }
});
return false;

}
