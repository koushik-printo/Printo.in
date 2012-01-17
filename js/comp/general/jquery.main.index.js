$(function () {
   

	   $.import_script('css/customAlert.css');
	   if(!$.browser.msie) {
       $.import_script('js/lib/cycle/jquery.cycle.all.min.js');
	   $.import_script('js/custom/general/jquery.index.js');
	   
	   }
	   else {
	   $.import_script('js/main/jquery.easySlider1.5.js');
	   $.import_script('js/IEjs/custom/jquery.index.js');
	   }
	   
	   
});