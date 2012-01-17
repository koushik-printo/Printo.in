
function MM_jumpMenu(targ,selObj,restore){ 
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
function calMenu(targ,selObj,restore){ 
if($(selObj).val()==0)
$('#calType').val('A5');
if($(selObj).val()==1)
$('#calType').val('Long');
if($(selObj).val()==2)
$('#calType').val('Square');
}



$(function(){
	
	$(document).find('a').each(function() {
		
		var imagePath=$(this).attr('id');
		var folderName= imagePath.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
		var splitFolder=folderName.replace(/\\/g,'/').replace( /.*\//, '' );
		
		var folderTypePath= folderName.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
		var folderType=folderTypePath.replace(/\\/g,'/').replace( /.*\//, '' );
		
		if(folderType=="A5"){
			$(this).css('background-color','#eee');
			}
	
    });

		$('div.templates-wrapper a').bind('mouseover', function(event, ui)
			{
				var target = $('div.templates-wrapper a.active');
				target.removeClass('active').css('cursor','pointer').attr('alt','Click to Proceed').attr('title','Click to Proceed');
				var target = $(event.currentTarget);
				target.addClass('active'); 
				var target = $('img#frontpreview').attr('src',this.id);
			
				
			}
		);
		
		$('div.templates-wrapper a').bind('click', function(event, ui)
			{
				var name=this.name;
				var arr=name.split("&");
				var newArr=arr[0].split("=");
				if(newArr[1]==17)
				{
				var imagePath=$(this).attr('id');
				var folderName= imagePath.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
				var splitFolder=folderName.replace(/\\/g,'/').replace( /.*\//, '' );
				
				var folderTypePath= folderName.replace(/\\/g,'/').replace(/\/[^\/]*$/, '');
				var folderType=folderTypePath.replace(/\\/g,'/').replace( /.*\//, '' );
				if(folderType=="A5")
				folderType=1;
				if(folderType=="Long")
				folderType=2;
				if(folderType=="Square")
				folderType=3;
				$('#calType').val(folderType);
					
				var calType=$('#calType').val();
				window.location="cart_design.php?"+this.name+"&folder="+splitFolder+"&type="+calType;
				
				
					
				}
				else
				window.location="cart_design.php?"+this.name;
				
			}
		)
		

	if($("select").length>0)
	$("select").selectbox();

	if($("img#frontpreview").length>0) {
 	var session_bc_t = 
	jQuery("a#"+session_bc_t).addclass("active");
	jQuery('img#frontpreview').attr('src',"images/"+ session_bc_t +".jpg");
	}
	
 });


