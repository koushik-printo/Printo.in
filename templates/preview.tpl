<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script type="text/javascript" src="js/comp_js/jQuery.min.1.6.js"></script>
<link rel="stylesheet" type="text/css" href="css/fontnew.css"/>
<link rel="stylesheet" type="text/css" href="css/new_css/indra_class.css"/>

</head>

{if $true eq ''} 
<body onload="loadparentall('debug_');" bgcolor="#EEEEEE">
<form name="indra" id="indra" method="POST" action="genFile/gen0/genFile.php">
<div style="display:block;left:350px; top:100px; position:absolute;" id="previewdiv">
</div>



<div style="display:block;left:230px; top:400px; position:relative; font-family:TimesNewRomanRegular; font-size:20px; font-weight:bold;">
Please wait few seconds while we Generate Your Sample PDF file.
</div>

</form>
<script>
function loadparentall(id)
{

	
	document.getElementById("previewdiv").innerHTML=window.opener.document.getElementById(id).innerHTML;
	
	$("#previewdiv").prepend('<textarea id="htmlvalue" name="htmlvalue" style="display:none;">'+
	window.opener.document.getElementById('htmlvalue').value+'</textarea>');
	
	$("#previewdiv").prepend('<textarea id="userhtmlvalue" name="userhtmlvalue" style="display:none;">'+
	window.opener.document.getElementById('userhtmlvalue').value+'</textarea>');
	
	
	
	
	
		
		
		$(document).find('img').each(function(){
			
			var Id= $(this).attr('id');
			var IdPart=Id.split('_');
			
			if(IdPart[0]!='draggable0')
			{
				
				
				
			var width_ =  parseInt((parseInt($('#'+IdPart[0]+'_width').val())/690)*336);
			var height_ =  parseInt((parseInt($('#'+IdPart[0]+'_height').val())/394)*192);

			

				
				$(this).css({
					
					width: width_,
					height: height_
					
					});
				$(this).parent().css({
					
					
					'background-color': ''
					
					});
			}
			});
		
 		setTimeout('submitnow()',10);	
	 	
}

function submitnow(){
	
	document.getElementById("indra").submit();
	
}
</script>

{else}
{$legiLe}
{/if}

</body>
</html>
