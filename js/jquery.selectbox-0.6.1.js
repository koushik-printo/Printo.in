/**
 * jQuery custom selectboxes
 * 
 * Copyright (c) 2008 Krzysztof Suszyński (suszynski.org)
 * Licensed under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 * @version 0.6.1
 * @category visual
 * @package jquery
 * @subpakage 
 * @author Krzysztof Suszyński <k.suszynski@wit.edu.pl>
**/
jQuery.fn.selectbox = function(options){
	/* Default settings */
	var settings = {
		className: 'jquery-selectbox',
		animationSpeed: "normal",
		listboxMaxSize: 10,
		replaceInvisible: false
	};
	var commonClass = 'jquery-custom-selectboxes-replaced';
	var listOpen = false;
	var showList = function(listObj) {
		var selectbox = listObj.prev('.' + settings.className + '');
		/*listObj.slideDown(settings.animationSpeed, function(){
			listOpen = true;
		});*/
		
		listObj.show();
		listOpen = true;
		
		selectbox.addClass('selecthover');
		jQuery(document).bind('click', onBlurList);
		return listObj;
	}
	var hideList = function(listObj) {
		var selectbox = listObj.prev('.' + settings.className + '');
					
		/*listObj.slideUp(settings.animationSpeed, function(){
			listOpen = false;
			jQuery(this).parents('.' + settings.className + '').removeClass('selecthover');
		});*/
		
		$(listObj).hide();
		listOpen = false;
		
		jQuery(document).unbind('click', onBlurList);
		return listObj;
	}
	var onBlurList = function(e) {
		var trgt = e.target;
		var currentListElements = jQuery('.' + settings.className + '-list:visible').parent().find('*').andSelf();
		if(jQuery.inArray(trgt, currentListElements)<0 && listOpen) {
			hideList( jQuery('.' + commonClass + '-list') );
		}
		return false;
	}
	
	/* Processing settings */
	settings = jQuery.extend(settings, options || {});
	/* Wrapping all passed elements */
	return this.each(function() {
		var _this = jQuery(this);
		if(_this.filter(':visible').length == 0 && !settings.replaceInvisible)
			return;
		var replacement = jQuery(
			'<div class="jquery-selectbox-main" ><div class="' + settings.className + ' ' + commonClass + '">' +
				'<div class="' + settings.className + '-moreButton" ><span></span></div>' +				
				'<span class="' + settings.className + '-currentItem" />' +
			'</div>'+
			'<div class="' + settings.className + '-list ' + commonClass + '-list" ></div></div>'		
		);
		jQuery('option', _this).each(function(k,v){
			var v = jQuery(v);
			var listElement =  jQuery('<span class="' + settings.className + '-item value-'+v.val()+' item-'+k+'">' + v.text() + '</span>');	
			listElement.click(function(){
				var thisListElement = jQuery(this);
				
				var thisReplacment = thisListElement.parents().prev('.'+settings.className);
												
				var thisIndex = thisListElement[0].className.split(' ');
				
				for( k1 in thisIndex ) {
					if(/^item-[0-9]+$/.test(thisIndex[k1])) {
						thisIndex = parseInt(thisIndex[k1].replace('item-',''), 10);
						break;
					}
				};
				
				var thisValue = thisListElement[0].className.split(' ');
								
				for( k1 in thisValue ) {
					if(/^value-.+$/.test(thisValue[k1])) {
						thisValue = thisValue[k1].replace('value-','');
						break;
					}
				};
								
				thisReplacment
					.find('.' + settings.className + '-currentItem')
					.text(thisListElement.text());
				
													
				thisReplacment
					.parent().find('select')
					.val(thisValue)
					.triggerHandler('change');
														
				var thisSublist = thisReplacment.next('.' + settings.className + '-list');								
								
				if(thisSublist.filter(":visible").length > 0) {					
					hideList( thisSublist );
				}else{
					showList( thisSublist );
				}
				
			}).bind('mouseenter',function(){
				jQuery(this).addClass('listelementhover');
			}).bind('mouseleave',function(){
				jQuery(this).removeClass('listelementhover');
			});
			
			jQuery('.' + settings.className + '-list', replacement).append(listElement);
			if(v.filter(':selected').length > 0) {
				jQuery('.'+settings.className + '-currentItem', replacement).text(v.text());
			}
		});
		$("."+settings.className,replacement).click(function(){//find('.' + settings.className + '-moreButton')'
		
			var thisMoreButton = jQuery(this);
			var otherLists = jQuery('.' + settings.className + '-list')
				.not(thisMoreButton.siblings('.' + settings.className + '-list'));
						
			hideList( otherLists );
			var thisList = $('.' + settings.className + '-list',replacement);
									
			//set offset
			btnoffSet=$(this).offset()
			
			$(thisList).css({top:btnoffSet.top+23+1,left:btnoffSet.left+10});
			
			if(thisList.filter(":visible").length > 0) {
				hideList( thisList );
			}else{
				showList( thisList );
			}
			
		}).bind('mouseenter',function(){
			jQuery(this).addClass('morebuttonhover');
		}).bind('mouseleave',function(){
			jQuery(this).removeClass('morebuttonhover');
		});
		_this.hide().replaceWith(replacement).appendTo(replacement);
		var thisListBox = replacement.find('.' + settings.className + '-list');
		var selectBox = replacement.find('.' + settings.className);
		var thisListBoxSize = thisListBox.find('.' + settings.className + '-item').length;
		if(thisListBoxSize > settings.listboxMaxSize)
			thisListBoxSize = settings.listboxMaxSize;
		if(thisListBoxSize == 0)
			thisListBoxSize = 1;	
		var thisListBoxWidth = Math.round(_this.width() + 20);
		if(jQuery.browser.safari)
			thisListBoxWidth = thisListBoxWidth +10;
		selectBox.css('width', thisListBoxWidth + 'px');
		thisListBox.css({
			width: Math.round(thisListBoxWidth-5) + 'px'
			//height: thisListBoxSize + 'em'
		});
	});
}
jQuery.fn.unselectbox = function(){
	var commonClass = 'jquery-custom-selectboxes-replaced';
	return this.each(function() {
		var selectToRemove = jQuery(this).filter('.' + commonClass);
		selectToRemove.replaceWith(selectToRemove.find('select').show());		
	});
}