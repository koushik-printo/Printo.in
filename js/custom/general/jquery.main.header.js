(function ($) {
    var c = [];
    $.extend(true, {
        import_script: function (a,id) {
            var b = false;
            var e = /^.+\.([^.]+)$/.exec(a);
            e = null ? "" : e[1];
            for (var i = 0; i < c.length; i++) if (c[i] == a) {
                b = true;
                break
            }
            if (b == false) {
                if (e.toLowerCase() == 'js'){
				if ( id != '')
				$("head").prepend('<script id="' + id + '" type="text/javascript" src="' + a + '"></script>');
				else 
				$("head").prepend('<script type="text/javascript" src="' + a + '"></script>');}
                else if (e.toLowerCase() == 'png') $("head").prepend('<link href="' + a + '" rel="shortcut icon" type="image/png"/>');
				else
				$("head").prepend('<link href="' + a + '" rel="stylesheet" />');
                c.push(a)
            }
        }
    })
})(jQuery);



$(function () {
   

 	   $.import_script('images/favicon.png');
       $.import_script('js/comp/general/jquery.mm_css_menu.js');
	   $.import_script('js/lib/changeRupee/fonts/font.css');
	   $.import_script('css/customAlert.css');
       $.import_script('js/lib/changeRupee/changeRupee.js');
	   $.import_script('js/main/jquery.cAlert.js');
	   $.import_script('js/comp/general/jquery.header.js');
	   
});