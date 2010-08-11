/**
 * dialog 1.0 - jQuery Plug-in
 * 
 * Licensed under the GPL:
 *   http://gplv3.fsf.org
 *
 * Copyright 2009 stworthy [ stworthy@gmail.com ] 
 * 
 * Dependencies:
 * 	shadow
 * 	draggable
 * 	resizable
 * 	linkbutton
 * 
 */
(function($){
	function open(target) {
		var state = $.data(target, 'dialog');
		var options = state.options;
		
		switch(options.showType) {
			case null:
				state.dialog.css('display', 'block');
				break;
			case 'slide':
				state.dialog.slideDown(options.showSpeed, function(){resize(target)});
				break;
			case 'fade':
				state.dialog.fadeIn(options.showSpeed, function(){resize(target)});
				break;
			case 'show':
				state.dialog.show(options.showSpeed, function(){resize(target)});
				break;
		}
		
		if (state.mask) {
			state.mask.css('display', 'block');
		}
		if (state.shadow) {
			state.shadow.css('display', 'block');
		}
		state.options.onOpen.call(target, target);
	}
	
	function close(target) {
		var state = $.data(target, 'dialog');
		var options = state.options;
		
		if (state.options.onClose.call(target, target) == false) return;
		
		switch(options.showType) {
			case null:
				state.dialog.css('display', 'none');
				break;
			case 'slide':
				state.dialog.slideUp(options.showSpeed);
				break;
			case 'fade':
				state.dialog.fadeOut(options.showSpeed);
				break;
			case 'show':
				state.dialog.hide(options.showSpeed);
				break;
				
		}
		
		if (state.mask) {
			state.mask.css('display', 'none');
		}
		if (state.shadow) {
			state.shadow.css('display', 'none');
		}
		
		// destroy the dialog window and remove it from the dom
		if (options.destroyOnClose == true) {
			var timeout = options.showSpeed;
			if (options.showType == null) {
				timeout = 0;
			}
			setTimeout(function(){
				state.dialog.remove();
				if (state.mask) {
					state.mask.remove();
				}
				if (state.shadow) {
					state.shadow.remove();
				}
			}, timeout);
		}
	}
	
	function resize(target) {
		var dialog = $.data(target, 'dialog').dialog;
		var content = $('div.dialog-content', dialog);
		var height = $(dialog).height() - $('div.dialog-header', dialog).outerHeight(true);
		height -= $('div.dialog-button', dialog).outerHeight(true);
		if ($.boxModel == true) {
			height -= content.outerHeight(true) - content.height();
		} else {
			height += content.outerHeight(true) - content.outerHeight();
		}
		$('div.dialog-content', dialog).css('height', height);
		
		if ($.boxModel == false) {
			var width = $(dialog).width();
			$('div.dialog-content', dialog).css('width', width);
			$('div.dialog-button', dialog).css('padding', '5px 0px 5px 0px;');
		}
		
		var shadow = $.data(target, 'dialog').shadow;
		if (shadow) {
			shadow.css({
				top: parseInt(dialog.css('top')),
				left: parseInt(dialog.css('left')) - 5,
				width: dialog.outerWidth() + 10,
				height: dialog.outerHeight() + 5
			});
			$('.dialog-shadow-inner', shadow).shadow({hidden:false});
		}
	}
	
	// create and return the dialog
	function create(target, opts) {
		var header = [
		              '<div class="dialog-header">',
		              '<div class="dialog-title">&nbsp;</div>',
		              '<div class="dialog-icon">&nbsp;</div>',
		              '<a href="javascript:void(0)" class="dialog-close"></a>',
		              '</div>'
		              ];
		
		var dialog = $('<div class="dialog"></div>').width(opts.width);
		
		$(target).before(dialog);
		dialog.append(header.join('')).append($(target).addClass('dialog-content'));
		$('a.dialog-close',dialog).click(function(){
			close(target);
		});
		
		if (opts.buttons) {
			var buttons = $('<div class="dialog-button"></div>');
			for(var label in opts.buttons) {
				$('<a></a>').attr('href', 'javascript:void(0)').addClass('l-btn').text(label)
							.css('margin-right', '10px')
							.bind('click', eval(opts.buttons[label]))
							.appendTo(buttons);
			}
			$(dialog).append(buttons);
			$('a.l-btn', buttons).linkbutton();
		}
			
		return dialog;
	}
	
	// center the dialog
	function center(dialog) {
		$(dialog).css({
			left: ($(window).width() - $(dialog).outerWidth(true)) / 2 + $(document).scrollLeft(),
			top: ($(window).height() - $(dialog).outerHeight(true)) / 2 + $(document).scrollTop()
		});
	}
	
	$.fn.dialog = function(options){
		// method invoking
		if (typeof options == 'string') {
			switch(options) {
				case 'options':	// return the first element's options
					return $.data(this[0], 'dialog').options;
			}
		}
		
		options = options || {};
		
		return this.each(function(){
			var opts = null;
			var dialog = null;
			var state = $.data(this, 'dialog');
			if (state) {
				opts = $.extend(state.options, options || {});
				dialog = state.dialog;
			} else {
				opts = $.extend({}, $.fn.dialog.defaults, options || {});
				dialog = create(this, opts);
				$.data(this, 'dialog', {
					options: opts,
					dialog: dialog
				});
				
				// read the options information from the tag
				if (!options.width) {
					options.width = opts.width = parseInt($(this).css('width')) || opts.width;
				}
				if (!options.height) {
					options.height = opts.height = parseInt($(this).css('height'));
				}
				if (options.top == null || options.top == undefined) {
					options.top = opts.top = parseInt($(this).css('top')) || $.fn.dialog.defaults.top;
				}
				if (options.left == null || options.left == undefined) {
					options.left = opts.left = parseInt($(this).css('left')) || $.fn.dialog.defaults.left;
				}
				if (!options.title) {
					opts.title = $(this).attr('title') || opts.title;
				}
				
				$(this).css('width', null);
				$(this).css('height', null);
				if (opts.width) dialog.width(opts.width);
				if (opts.height) dialog.height(opts.height);
				center(dialog);
			}
			
			// set dialog position, width and height
			if (options.width) dialog.width(options.width);
			if (options.height) dialog.height(options.height);
			if (options.left != undefined && options.left != null) dialog.css('left', options.left);
			if (options.top != undefined && options.top != null) dialog.css('top', options.top);
			
			// set dialog title
			$('div.dialog-title', dialog).html(opts.title);	
			if (/^[u4E00-u9FA5]/.test(opts.title) == false && $.browser.msie) {
				$('div.dialog-title', dialog).css('padding-top', '8px');
			}
			
			if (opts.iconCls) {
				$('.dialog-header .dialog-icon', dialog).addClass(opts.iconCls);
				$('.dialog-header .dialog-title', dialog).css('padding-left', '20px');
			} else {
				$('.dialog-header .dialog-icon', dialog).attr('class', 'dialog-icon');
				$('.dialog-header .dialog-title', dialog).css('padding-left', '5px');
			}
			
			var target = this;
			$(dialog).draggable({
				handle: 'div.dialog-header',
				disabled: opts.draggable == false,
				onDrag:function(){
					resize(target);
				}
			});
			
			$(dialog).resizable({
				disabled: opts.resizable == false,
				onResize: function(){
					resize(target);
				}
			});
			
			if ($.data(this, 'dialog').mask) {
				$.data(this, 'dialog').mask.remove();
			}
			if (opts.modal == true) {
				$.data(this, 'dialog').mask = $('<div class="dialog-mask"></div>')
						.css({
							zIndex: $.fn.dialog.defaults.zIndex++,
							width: getPageArea().width,
							height: getPageArea().height
						})
						.appendTo($(document.body));
			}
			
			if ($.data(this, 'dialog').shadow) {
				$.data(this, 'dialog').shadow.remove();
			}
			if (opts.shadow == true) {
				var shadow = $('<div class="dialog-shadow"><div class="dialog-shadow-inner"></div></div>');
				$('.dialog-shadow-inner', shadow).shadow({width:5, fit:true, hidden:true});
				$.data(this, 'dialog').shadow = shadow
						.css('z-index', $.fn.dialog.defaults.zIndex++)
						.insertAfter(dialog);
			}
			
			dialog.css('z-index', $.fn.dialog.defaults.zIndex++);
			
			
			// load the href content
			if (options.href) {
				$(this).load(options.href, null, function(){
					resize(target);
					opts.onLoad.apply(this, arguments);	// trigger the onLoad event
				});
			}
			
			if (opts.closed == false) {
				if (dialog.css('display') == 'none') {
					open(this);
					resize(this);	// resize the dialog
				}
			} else {
				if (dialog.css('display') == 'block') {
					close(this);
				}
			}
			
		});
		
	};
	
	// when window resize, reset the width and height of the dialog's mask
	$(window).resize(function(){
		$('.dialog-mask').css({
			width: $(window).width(),
			height: $(window).height()
		});
		setTimeout(function(){
			$('.dialog-mask').css({
				width: getPageArea().width,
				height: getPageArea().height
			});
		}, 50);
	});
	
	function getPageArea() {
		if (document.compatMode == 'BackCompat') {
			return {
				width: Math.max(document.body.scrollWidth, document.body.clientWidth),
				height: Math.max(document.body.scrollHeight, document.body.clientHeight)
			}
		} else {
			return {
				width: Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth),
				height: Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight)
			}
		}
	}
	
	
	$.fn.dialog.defaults = {
		zIndex: 9000,
		title: 'title',
		closed: false,
		destroyOnClose: false,
		draggable: true,
		resizable: true,
		modal: false,
		shadow: true,
		width: 300,
		height: null,
		showType: null,
		showSpeed: 600,
		left: null,
		top: null,
		iconCls: null,
		href:null,
		onOpen: function(){},
		onClose: function(){},
		onLoad:function(){}
	};
})(jQuery);