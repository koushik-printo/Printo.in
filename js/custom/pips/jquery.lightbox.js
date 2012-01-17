$(function () {
    $(".picimg").click(function () {
        var a = $(this).attr("src"),
            imageName = a.replace(/\\/g, '/').replace(/.*\//, '');
        $.browser.chrome = $.browser.webkit && !! window.chrome;
        $.browser.safari = $.browser.webkit && !window.chrome;
        var b = "";
        if ($.browser.chrome) {
            b = "270px"
        } else b = "577px";
        $(document).customAlert({
            opacity: 0.4,
            width: 610,
            height: 360,
            bgColor: "#aaa",
            message: "<div style='height:360px; width:610px; border: 5px solid #B4E2ED; box-shadow:10px 10px 20px #aaa; -webkit-box-shadow:10px 10px 20px #aaa; -moz-box-shadow: 10px 10px 20px #aaa; -moz-border-radius: 5px; border-radius: 5px;'><img src='images/cross.png' id='aClose' height='30' width='30' style='position: absolute; margin-left: " + b + " ; margin-top: 0px; z-index: 1000; cursor: pointer;'><img src='images/cal_img/cal_img/" + imageName + "' height='360' width='610'></div>"
        })
    })
});