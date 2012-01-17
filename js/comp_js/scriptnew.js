$(document).ready(function(e){
	/* The following code is executed once the DOM is loaded */
	
	$('#Flip').bind("click",function(){
		
		// $(this) point to the clicked .sponsorFlip element (caching it in elem for speed):
		$("#debug_").html('');
		
		var elem = $('.content_main');
		
		// data('flipped') is a flag we set when we flip the element:
		
		if(elem.data('flipped'))
		{
			// If the element has already been flipped, use the revertFlip method
			// defined by the plug-in to revert to the default state automatically:
			var htm=$(".content_main").html();
			$(".sponsorData").html('');
			$(".sponsorData").append(htm);
			elem.revertFlip();
			$('#current_selected_text').val('draggable0_div');

			
			// Unsetting the flag:
			elem.data('flipped',false)
		}
		else
		{
			// Using the flip method defined by the plugin:
			
			elem.flip({
				direction:'lr',
				speed: 350,
				onBefore: function(){
					// Insert the contents of the .sponsorData div (hidden from view with display:none)
					// into the clicked .sponsorFlip div before the flipping animation starts:
					
					elem.html(elem.siblings('.sponsorData').html());
					$('#current_selected_text').val('draggable9_div');
				}
			});
			
			// Setting the flag:
			elem.data('flipped',true);
		}
	});
	
	
	
});