(function ($) {
    $.fn.extend({
        customAlert: function (a) {
            var b = '<div id="amitOverlay"><div id="alertMsgDiv"><div id="aMessage"></div></div></div>',
                defaults = {
                    bgColor: '#000',
                    opacity: '0.6',
                    message: 'This is a test message from the plugin',
                    width: '600',
                    height: '350',
                    htmlstring: '<div id="amitOverlay"></div><div id="alertMsgDiv"><div id="aMessage"></div></div>'
                },
                a = $.extend(defaults, a),
                elemLeft = (window.innerWidth - a.width) / 2,
                elemTop = ((window.innerHeight - a.height) / 2);
            $("#displayoverlay").css({
                'height': '100%',
                'width': '100%'
            });
            $("#displayoverlay").append(a.htmlstring);
            $("#aMessage").html(a.message);
            $("#alertMsgDiv").css({
                'display': 'block',
                'width': a.width + 'px',
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
                'background-color': a.bgColor,
                'opacity': a.opacity
            });
            if ($.browser.msie) {
                elemLeft = ($(window).width() - a.width) / 2, elemTop = (($(window).height() - a.height) / 2)
            }
            $("#alertMsgDiv").animate({
                queue: false,
                width: a.width,
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
            })
        }
    });
    $.fn.extend({
        customAlert2: function (a) {
            var b = '<div id="amitOverlay"><div id="alertMsgDiv"><div id="aMessage"></div></div></div>',
                defaults = {
                    bgColor: '#000',
                    opacity: '0.6',
                    message: 'This is a test message from the plugin',
                    width: '600',
                    height: '350',
                    htmlstring: '<div id="amitOverlay"></div><div id="alertMsgDiv"><div id="aMessage"></div></div>'
                },
                a = $.extend(defaults, a),
                elemLeft = (window.innerWidth - a.width) / 2,
                elemTop = ((window.innerHeight - a.height) / 2);
            $("#displayoverlay").css({
                'height': '100%',
                'width': '100%'
            });
            $("#displayoverlay").append(b);
            $("#alertMsgDiv").css({
                'display': 'block',
                'width': a.width + 'px',
                'z-index': 99999999
            });
            $("#amitOverlay").css({
                'display': 'block',
                'top': '0px',
                'left': '0px',
                'z-index': 9999999,
                'width': ($(this).width()) + "px",
                'height': $(this).height() + "px",
                'background-color': a.bgColor,
                'opacity': a.opacity
            });
            $("#aMessage").html(a.message);
            $("#alertMsgDiv").css({
                'display': 'block',
                'width': a.width + 'px',
                height: a.height + 'px',
                'position': 'absolute'
            });
            $("#alertMsgDiv").animate({
                width: a.width,
                'left': elemLeft + 'px',
                'top': elemTop + 'px'
            }, 300);
            $("#amitOverlay").css({
                'display': 'block',
                'top': '0px',
                'left': '0px',
                'width': ($(this).width()) + "px",
                'height': $(this).height() + "px",
                'background-color': a.bgColor,
                'opacity': a.opacity
            });
            $("#aClose").click(function () {
                $("#displayoverlay").css({
                    'height': '1px',
                    'width': '1px'
                });
                $("#alertMsgDiv").remove();
                $("#amitOverlay").remove()
            })
        }
    })
})(jQuery);