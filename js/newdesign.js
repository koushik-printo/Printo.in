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
/*    for (i; i < 12; i++) {
        var g = $("#" + myMonths[i][0]),
            vall = myMonths[i][1];
        Htm += (i < 11) ? myMonths[i][1] + "," : myMonths[i][1]
    }*/
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
	var totStr = $("#imageID").val(),
    oldArr = totStr.split(","),
	i = 0,
	flag=0;
	 for (i; i < 12; i++) {
               
			if(oldArr[i] == 0){
			
			flag=1;}
                }
	if(flag==0)
    document.myform.submit();
	else
	alert('Please Choose All 12 Templates');
}