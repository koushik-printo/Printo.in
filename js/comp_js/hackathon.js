$(document).ready(function () {

    $("#fixElem").click(function () {
        $("body").find('.drsElement').each(function () {
            var a = $(this).attr('id');
            var b = a.split("_");
            var c = b[0];
            $("#" + c + "_text").css('cursor', 'default');
            $(this).removeAttr('class').attr('class', 'static').css('cursor', 'default')
        })
    });
    $("#colorPicker1").mlColorPicker({
        'click': function (a) {
            $("#debug_").html('');
            $("#colorPicker1").css("background-color", "#" + a);
            $("#text1").text("#" + a)
        }
    });

	   $(".active-sublink").find('ul li').mouseover(function(){
       $('.drsElement').css('z-index','');
    });
		$(".active-sublink").mouseover(function(){
       $('.drsElement').css('z-index','');
	    $('.dragresize').css('z-index','50');
    });
	   $(".active-sublink").find('ul li').mouseout(function(){
       $('.drsElement').css('z-index','999999');
	   $('.dragresize').css('z-index','300'); 
    })
	$('#spinnerfast').spinner({ min: 12, max: 30, increment: 'fast' });
	$('#spinnerfast').change(function(){
	
	        $("#debug_").html('');
            var c = $('#current_selected_text').val();
            var d = c.split("_");
            var e = d[0];
            $('#' + e + '_fontsize').val($('#spinnerfast').spinner('value'));
            $('#' + e + '_text').css("font-size", $('#spinnerfast').spinner('value') + 'px');
            $("#fontvalue").html($('#spinnerfast').spinner('value'))});
			
	$('#spinnerfast').click(function(){
	
	        $("#debug_").html('');
            var c = $('#current_selected_text').val();
            var d = c.split("_");
            var e = d[0];
            $('#' + e + '_fontsize').val($('#spinnerfast').spinner('value'));
            $('#' + e + '_text').css("font-size", $('#spinnerfast').spinner('value') + 'px');
            $("#fontvalue").html($('#spinnerfast').spinner('value'))});
	
	if($.browser.mozilla)
	$('#spinnerUl').css('width','175px')
	else
	$('#spinnerUl').css('width','190px')
});
