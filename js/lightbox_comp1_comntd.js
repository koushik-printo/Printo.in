$(function () {
    $(".picimg").click(function () {
        var a = $(this).attr("src"),
		arr=a.split("_"),
		text='',
		text1='',
		newImg=arr[0]+"_500.png",
        imageName = a.replace(/\\/g, '/').replace(/.*\//, ''),
		arrName=imageName.split("_");
		if(arrName[0]=="A5"){text='Classic Calender',text1=$('#a5Txt').val()};
		if(arrName[0]=="Square"){text='Compact Calender',text1=$('#sqTxt').val()};
		if(arrName[0]=="Cal"){text='Long Calender',text1=$('#lonTxt').val()};
        $.browser.chrome = $.browser.webkit && !! window.chrome;
        $.browser.safari = $.browser.webkit && !window.chrome;
        var b = "";
        if ($.browser.chrome) {
            b = "577px"
        } else b = "577px";
        $(document).customAlert({
            opacity: 0.4,
            width: 610,
            height: 420,
            bgColor: "#aaa",
            message: "<div style='height:420px; width:610px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px;'><div style='background-color:#fff; width:610px; height:420px;' ><img src='images/cross.png' id='aClose' height='30' width='30' style='position: relative; margin-left: " + b + " ; margin-top: 0px; z-index: 1000; cursor: pointer;'><div style='width=100%; height:20px; font-height:14px; font-family:Verdana, Geneva, sans-serif; font-weight:bold;'>"+text+"</div><img src='" + newImg + "' style='max-height:310px; '><div style='width=100%; height:20px; font-height:14px; font-family:Verdana, Geneva, sans-serif; font-weight:bold; margin-top:10px;'>"+text1+"</div></div></div>"
        })
    })
});