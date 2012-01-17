(function($) {
	var rgbRE = /^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/;
	var colorRE = /^[a-fA-F0-9]{6}|[a-fA-F0-9]{3}$/;
	var rgbString='';
	function mouseEnterColor(event){
		rgbString = $(event.target).css("background-color");
		var parts = rgbString.match(rgbRE);
		var newParts=parts;
		if(parts!=null){
			delete (parts[0]);
			for (var i = 1; i <= 3; ++i) {
			    parts[i] = parseInt(parts[i]).toString(16);
			    if (parts[i].length == 1) parts[i] = '0' + parts[i];
			}
			var hexString = parts.join(''); 
			$("#mlSelectedColorText").val(hexString).keyup();
		}else{
			$("#mlSelectedColorText").val(rgbString.substring(1)).keyup();
			}

	}
	function mouseClickColor(){
		colorSave();
	}
	function textKeyUp(event){
		color = $(event.target).val();

		if (color.match(colorRE)) {
			colorChange(color,rgbString)
		}
		if (event.keyCode == 13) {//enter
			colorSave()
		}
	}
	function colorChange(color,rgbString){

		
		var parts = rgbString.match(rgbRE);
		var newParts=parts;

		$("#mlSelectedColorDiv").css("background-color", "#"+color);
		var fieldname=$('#current_selected_text').val();
		var idParts=fieldname.split("_");
		var spltId=idParts[0];
		$('#'+spltId+'_text').css("color", "#"+color);
		newParts.splice(0,1);

		$('#'+spltId+'_fontcolor').val(newParts);

	}


	function colorSave(){
		if ($("#mlColorPicker").data("mlOnChange")) {
			color = $("#mlSelectedColorText").val();
			if (color.match(colorRE)) {
				$("#mlColorPicker").data("mlOnChange")(color);

			}
		}
	}
	
	function close(){
		$("#mlColorPicker").hide().removeData("mlOnChange");
	}




	function createColorPicker(){
		var colors = ["#ff7572","#ff689c","#ff309a","#cd0086","#9a0065","#ce0000","#690000","#d51476","#ff9a23","#ff6600","#a15616","#65009b","#9a2f9b","#7b53a0","#56b6b5","#8b95db","#0087cc","#2d649a","#003367","#3fa853","#659a00","#453928","#ffffff","#e8435b","#660033","#663333","#666633","#669933","#66CC33","#666666","#000066","#003366","#006666","#FFFF66","#FFFF00","#990099","#993399","#996699","#999999","#99CC99","#99FF99","#CC0099","#CC3399","#CC6699","#CC9999","#CCCC99","#CCFF99","#FF0099","#FF3399","#FF6699","#FF9999","#FFCC99","#FFFF99","#00FFFF","#9933CC","#9999CC"];

		$(".color_box").append(('<div style="position:absolute;	display:block;" id="mlColorPicker"><div id="mlSelectedColorDiv" style="display:none;"></div><div class="color" style="cursor:pointer;display:none;"><img src="images/down_arrow.png"  style="cursor:pointer;display:none;"/>&nbsp;&nbsp;COLOR</div><div class="select" style="display:none;">SELECTED</div><input id="mlSelectedColorText" type="text" value="6E6D6B" maxlength="6" style="display:none;"><div id="mlColors" style="display:block;"></div></div>'))
		var colorHolder=$("#mlColors")
		$.each(colors, function(i, color){
			colorHolder.append('<div class="mlColorhov"><div class="mlColorborder"><div class="mlColor" id="' + color + '" style="background-color:' + color + '" /></div></div>')
		});
		$('.mlColor').bind("click", mouseEnterColor);

		

		$("#mlSelectedColorText").keyup(textKeyUp);


		
		$('#mlColorPicker,#mlColorPicker *').click(function(e){e.stopPropagation()})
			$(".color").click(function(){
			if(document.getElementById('mlColors').style.display != "none") {
			$("#mlColors").hide(200);$(".color_box").height(20);
			document.getElementById('mlColors').style.display = "none";
			$("#arrow").rotate({ angle:0,animateTo:-90,easing: $.easing.easeInOutExpo })
			}
			else {
				$(".color_box").height(50);$("#mlColors").show(200);
				document.getElementById('mlColors').style.display = "block";
				$("#arrow").rotate({ angle:-90,animateTo:0,easing: $.easing.easeInOutExpo })
				}
		});
	}
		

	
	$.fn.mlColorPicker = function(settings) {
		var config = {
			'onChange': function(value){}
		};
		if (settings) $.extend(config, settings);
		if($("#mlColorPicker").length==0 ){
			createColorPicker()
		this.each(function() {

				$("#mlColorPicker").hide()

								   .show("slow")
								   .data("mlOnChange", config["onChange"]);

		});
			
		}

		return this;
	};
		

})(jQuery);
