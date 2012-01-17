(function ($) {
    var c = [];
    $.extend(true, {
        import_js: function (a) {
            var b = false;
            for (var i = 0; i < c.length; i++) if (c[i] == a) {
                b = true;
                break
            }
            if (b == false) {
                $("head").append('<script type="text/javascript" src="' + a + '"></script>');
                c.push(a)
            }
        }
    })
})(jQuery);
$(function () {
    var a = $("#zoomerVal").val(),
        dragVal = $("#dragVal").val(),
        lightBoxVal = $("#lightBoxVal").val();
    $.import_js('http://jquery.opendrive.com/files/' + a + '/zoomer_compressed.js');
    $.import_js('http://jquery.opendrive.com/files/' + dragVal + '/calenderdesign_compressed.js');
    $.import_js('http://jquery.opendrive.com/files/' + lightBoxVal + '/jquery.cAlert.js')
});