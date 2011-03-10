/**
 * resizable 1.0 - jQuery Plug-in
 * 
 * Licensed under the GPL:
 *   http://gplv3.fsf.org
 *
 * Copyright 2009 stworthy [ stworthy@gmail.com ] 
 */
(function($){
	$.fn.resizable = function(options){
		function doDown(e){
			$.data(e.data.target, 'resizable').options.onStartResize(e);
			return false;
		}
		
		function doMove(e){
			var resizeData = e.data;
			var options = $.data(resizeData.target, 'resizable').options;
			var target = resizeData.target;
			if (resizeData.dir.indexOf('e') != -1) {
				var width = resizeData.startWidth + e.pageX - resizeData.startX;
				if ($.boxModel == false) {
					width += resizeData.deltaWidth;
				}
				width = Math.min(
							Math.max(width, options.minWidth),
							options.maxWidth
						);
				$(target).css('width', width + 'px');
			}
			if (resizeData.dir.indexOf('s') != -1) {
				var height = resizeData.startHeight + e.pageY - resizeData.startY;
				if ($.boxModel == false) {
					height += resizeData.deltaHeight;
				}
				height = Math.min(
							Math.max(height, options.minHeight),
							options.maxHeight
						);
				$(target).css('height', height + 'px');
			}
			if (resizeData.dir.indexOf('w') != -1) {
				var width = resizeData.startWidth - e.pageX + resizeData.startX;
				if ($.boxModel == false) {
					width += resizeData.deltaWidth;
				}
				if (width >= options.minWidth && width <= options.maxWidth) {
					var left = resizeData.startLeft + e.pageX - resizeData.startX;
					$(target).css({
						left: left + 'px',
						width: width + 'px'
					});
				}
			}
			if (resizeData.dir.indexOf('n') != -1) {
				var height = resizeData.startHeight - e.pageY + resizeData.startY;
				if ($.boxModel == false) {
					height += resizeData.deltaHeight;
				}
				if (height >= options.minHeight && height <= options.maxHeight) {
					var top = resizeData.startTop + e.pageY - resizeData.startY;
					$(target).css({
						top: top + 'px',
						height: height + 'px'
					});
				}
			}
			$.data(e.data.target, 'resizable').options.onResize(e);
			return false;
		}
		
		function doUp(e){
			$(document).unbind('.resizable');
			$.data(e.data.target, 'resizable').options.onStopResize(e);
			return false;
		}
		
		return this.each(function(){
			var opts = null;
			var state = $.data(this, 'resizable');
			if (state) {
				$(this).unbind('.resizable');
				opts = $.extend(state.options, options || {});
			} else {
				opts = $.extend({}, $.fn.resizable.defaults, options || {});
			}
			
			if (opts.disabled == true) {
				return;
			}
			
			$.data(this, 'resizable', {
				options: opts
			});
			
			var target = this;
			
			// bind mouse event using namespace resizable
			$(this).bind('mousemove.resizable', onMouseMove)
				   .bind('mousedown.resizable', onMouseDown);
			
			function onMouseMove(e) {
				var dir = getDirection(e);
				if (dir == '') {
					$(target).css('cursor', 'default');
				} else {
					$(target).css('cursor', dir + '-resize');
				}
			}
			
			function onMouseDown(e) {
				var dir = getDirection(e);
				if (dir == '') return;
				
				var data = {
					target: this,
					dir: dir,
					startLeft: getCssValue('left'),
					startTop: getCssValue('top'),
					startX: e.pageX,
					startY: e.pageY,
					startWidth: $(target).width(),
					startHeight: $(target).height(),
					deltaWidth: $(target).outerWidth() - $(target).width(),
					deltaHeight: $(target).outerHeight() - $(target).height()
				};
				$(document).bind('mousedown.resizable', data, doDown);
				$(document).bind('mousemove.resizable', data, doMove);
				$(document).bind('mouseup.resizable', data, doUp);
			}
			
			// get the resize direction
			function getDirection(e) {
				var dir = '';
				var offset = $(target).offset();
				var width = $(target).outerWidth();
				var height = $(target).outerHeight();
				var edge = opts.edge;
				if (e.pageY > offset.top && e.pageY < offset.top + edge) {
					dir += 'n';
				} else if (e.pageY < offset.top + height && e.pageY > offset.top + height - edge) {
					dir += 's';
				}
				if (e.pageX > offset.left && e.pageX < offset.left + edge) {
					dir += 'w';
				} else if (e.pageX < offset.left + width && e.pageX > offset.left + width - edge) {
					dir += 'e';
				}
				return dir;
			}
			
			function getCssValue(css) {
				var val = parseInt($(target).css(css));
				if (isNaN(val)) {
					return 0;
				} else {
					return val;
				}
			}
			
		});
	};
	
	$.fn.resizable.defaults = {
			disabled:false,
			minWidth: 10,
			minHeight: 10,
			maxWidth: 10000,//$(document).width(),
			maxHeight: 10000,//$(document).height(),
			edge:5,
			onStartResize: function(){},
			onResize: function(){},
			onStopResize: function(){}
	};
	
})(jQuery);