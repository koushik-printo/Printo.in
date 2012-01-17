$(function () {
    var f = $("#zoomerState").val(),
        myMonths = new Array(["Jan", "10"], ["Feb", "8"], ["Mar", "33"], ["Apr", "22"], ["May", "25"], ["Jun", "2"], ["Jul", "13"], ["Aug", "30"], ["Sep", "15"], ["Oct", "32"], ["Nov", "3"], ["Dec", "29"]),
        i = 0,
        Htm = "";
    if (f == 1) {
        $('.picimg').Zoomer({
            speedView: 200,
            speedRemove: 400,
            altAnim: true,
            speedTitle: 400,
            debug: false
        })
    }
    for (i; i < 12; i++) {
        Htm += (i < 11) ? 0 + "," : 0
    }
    $("#imageID").val(Htm);
    $(".prod-list-design-subdiv").droppable({
        accept: '.picimg',
        drop: function (a, b) {
            $(b.draggable).draggable({
                revert: false
            });
            var c = $(this).find("img").attr("id"),
                id = $(b.draggable).clone().attr("id");
            $(this).find("img").remove();
            $(this).prepend($(b.draggable).clone().attr({
                "class": "chgimg"
            }).css({
                "width": "90px",
                "height": "58px",
                "margin": "0px",
                "cursor": "default",
                "padding": "0px"
            }).removeAttr("id"));
            var d = $(this).find("img");
            $(this).find("img").attr("id", c);
            var e = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
                i = 0,
                Htm = "",
                totStr = $("#imageID").val(),
                oldArr = totStr.split(",");
            for (i; i < 12; i++) {
                if (c == e[i]) {
                    oldArr[i] = id
                }
            }
            Htm = oldArr.toString();
            $("#imageID").val(Htm)
        },
        over: function (a, b) {
            $(this).find("img").addClass("ui-state-highlight").css({
                "padding": "0px",
                "border": "2px solid red"
            })
        },
        out: function (a, b) {
            $(this).find("img").removeClass("ui-state-highlight").css({
                "padding": "0px",
                "border": "0px"
            })
        },
    });
    $(".picimg").draggable({
        helper: "clone",
        revert: true,
        start: function (a, b) {
            if ($.browser.msie) {
                $(this).removeClass("hover");
                $(this).removeAttr("style");
                $(this).css("margin", "5px")
            }
            $(b.helper).addClass("ui-draggable-helper").css({
                "padding": "5px",
                "border": "0px",
                "z-index": 100
            }).fadeTo("slow", 0.5)
        },
        stop: function (a, b) {
            if ($.browser.msie) {
                $(this).removeClass("hover");
                $(this).removeAttr("style");
                $(this).css("margin", "5px");
                $(".picimg").removeClass("hover");
                $(".picimg").removeAttr("style");
                $(".picimg").css("margin", "5px")
            }
        },
        helper: 'clone',
    });
    $(".picimg").mouseover(function (a, b) {
        $(this).css({
            "cursor": "move"
        })
    })
});

function submitform() {
    var a = $("#imageID").val(),
        oldArr = a.split(","),
        i = 0,
        flag = 0;
    for (i; i < 12; i++) {
        if (oldArr[i] == 0) {
            flag = 1
        }
    }
    if (flag == 0) document.myform.submit();
    else {
	var text="Please Choose All 12 Templates";
	if(!$.browser.mozilla)
	var elemLeft="277px";
	else
	var elemLeft="125px";
	$(document).customAlert({opacity:0.4, width: 310, height: 100, bgColor: "#aaa", message: "<div style='height:100px; width:310px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px; position:absolute;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: "+elemLeft+" ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='background:url(images/backDesign.png); width:310px; height:100px;' ><br/><div style='position:absolute; margin:25px; font-size:14px; font-weight:bold; line-height:16px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; color: #10407A; text-align:center;'>"+text+"<br/></div></div></div>"

});
	
	}
}