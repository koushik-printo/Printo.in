
	$(function(){ 
		$('div.templates-wrapper a').bind('mouseover', function(event, ui)
			{
				var target = $('div.templates-wrapper a.active');
				target.removeClass('active');
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
		
		
		
		});

