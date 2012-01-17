(function ($) {
    $.fn.Zoomer = function (b) {
        var c = $.extend({
            speedView: 200,
            speedRemove: 400,
            altAnim: false,
            speedTitle: 400,
            debug: false
        }, b);
        var d = $.extend(c, b);

        function e(s) {
            if (typeof console != "undefined" && typeof console.debug != "undefined") {
                console.log(s)
            } else {
                alert(s)
            }
        }
        if (d.speedView == undefined || d.speedRemove == undefined || d.altAnim == undefined || d.speedTitle == undefined) {
            e('speedView: ' + d.speedView);
            e('speedRemove: ' + d.speedRemove);
            e('altAnim: ' + d.altAnim);
            e('speedTitle: ' + d.speedTitle);
            return false
        }
        if (d.debug == undefined) {
            e('speedView: ' + d.speedView);
            e('speedRemove: ' + d.speedRemove);
            e('altAnim: ' + d.altAnim);
            e('speedTitle: ' + d.speedTitle);
            return false
        }
        if (typeof d.speedView != "undefined" || typeof d.speedRemove != "undefined" || typeof d.altAnim != "undefined" || typeof d.speedTitle != "undefined") {
            if (d.debug == true) {
                e('speedView: ' + d.speedView);
                e('speedRemove: ' + d.speedRemove);
                e('altAnim: ' + d.altAnim);
                e('speedTitle: ' + d.speedTitle)
            }
            $(this).hover(function () {
                $(this).css({
                    'z-index': '10'
                });
                var b = $(this).parent().offset().left;
                var c = "";
                if (b > 700) {
                    c = "-100px"
                } else if (b > 600) {
                    c = "-50px"
                } else {
                    c = "-15px"
                }
                $(this).addClass("hover").stop().animate({
                    marginTop: '-15px',
                    marginLeft: c,
                    top: '50%',
                    left: '50%',
                    width: '220px',
                    height: '140px',
                    padding: '20px'
                }, d.speedView);
                if (d.altAnim == true) {
                    var a = $(this).attr("alt");
                    if (a.length != 0) {
                        $(this).prepend('<span class="title">' + a + '</span>');
                        $('.title').animate({
                            marginLeft: '-22px',
                            marginTop: '200px'
                        }, d.speedTitle).css({
                            'z-index': '10',
                            'position': 'absolute',
                            'float': 'left'
                        })
                    }
                }
            }, function () {
                $(this).css({
                    'z-index': '0'
                });
                if ($.browser.msie) {
                    $(this).css({
                        width: '120px',
                        height: '80px',
                        margin: '-20px'
                    })
                }
                $(this).removeClass("hover").stop().animate({
                    margin: '5px',
                    top: '0',
                    left: '0',
                    width: '120px',
                    height: '80px',
                    padding: '0px'
                }, d.speedRemove);
                $(this).find('.title').remove()
            })
        }
    }
})(jQuery);