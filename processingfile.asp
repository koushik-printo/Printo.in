<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<META HTTP-EQUIV="refresh" CONTENT="4">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="/printo.in/v1_2/js/jquery.min.js"></script>
<script type="text/javascript" src="/printo.in/v1_2/js/poll_plugin.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Please wait ...Processing File</title>
<style type="text/css">
.a {
	font-size: 36px;
	text-align: center;
	color: #999;
}
</style>

<script language="javascript">
function startpoll() {
	  // Start a polling loop with an id of 'loop' and a counter.
	//  alert("polling started");
	  var i = 0;
	    $.doTimeout( 'loop', 1000, function(){
			//--		  			
		  $.post("/printo.in/cude/getpdfstatus.asp", function(data) {
				  alert(data);
					if (data == "Success") {
						document.location.href="viewcart.php";
						//return true; 
					};
			//--
			});

		});
};
</script>

</head>

<body class="a">

<p>&nbsp;</p>
<p><img src="res/gears_animated.gif" width="141" height="141" /></p>
<p>PROCESSING YOUR FILE </p>
<script language="javascript">
//startpoll();
</script>
</body>
</html>
