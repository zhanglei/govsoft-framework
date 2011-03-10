/**
 * linkbutton 1.0 - jQuery Plug-in
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
 * 	dialog
 */
(function($){
	
	$.messager = {
		show: function(options) {
			options = $.extend({
				showType: 'slide',
				showSpeed: 600,
				width: 250,
				height: 100,
				center: false,
				msg: '',
				title: '',
				timeout: 4000
			}, options || {});
			
			var win = $('<div></div>').appendTo(document.body);
			win.html(options.msg);
			win.dialog({
				title:options.title,
				shadow:false,
				resizable:false,
				center:options.center,
				showType:options.showType,
				showSpeed:options.showSpeed,
				width:options.width,
				height:options.height,
				closed:false,
				onClose:function(){
					$(this).dialog('options').destroyOnClose = true;
				}
			});
			
			win.parent().css({
				left: null,
				top: null,
				right: 0,
				bottom: -document.body.scrollTop-document.documentElement.scrollTop
			});
			
			$(window).scroll(function(){
				win.parent().css('bottom', -document.body.scrollTop-document.documentElement.scrollTop);
			});
			
			if (options.timeout > 0) {
				setTimeout(function(){
					win.dialog({closed:true});
				}, options.timeout);
			}
		},
		
		alert: function(title, msg, icon, fn) {
			var content = '<div>' + msg + '</div>';
			switch(icon) {
				case 'error':
					content = '<div class="messager-icon messager-error"></div>' + content;
					break;
				case 'info':
					content = '<div class="messager-icon messager-info"></div>' + content;
					break;
				case 'question':
					content = '<div class="messager-icon messager-question"></div>' + content;
					break;
				case 'warning':
					content = '<div class="messager-icon messager-warning"></div>' + content;
					break;
			}
			content += '<div style="clear:both;"/>';
			
			var win = $('<div></div>').appendTo(document.body);
			win.html(content);
			win.dialog({
				title: title,
				modal:true,
				resizable:false,
				buttons:{
					'Ok':function(){
						win.dialog({closed:true});
						if (fn){
							fn();
						}
					}
				},
				onClose:function(){
					$(this).dialog('options').destroyOnClose = true;
				}
			});
		},
		
		confirm: function(title, msg, fn) {
			var win = $('<div></div>').appendTo(document.body);
			win.html('<div class="messager-icon messager-question"></div>'
						+ '<div>' + msg + '</div>'
						+ '<div style="clear:both;"/>');
			win.dialog({
				title: title,
				modal:true,
				resizable:false,
				buttons:{
					'Ok':function(){
						win.dialog({closed:true});
						if (fn){
							fn(true);
						}
					},
					'Cancel':function(){
						win.dialog({closed:true});
						if (fn){
							fn(false);
						}
					}
				},
				onClose:function(){
					$(this).dialog('options').destroyOnClose = true;
				}
			});
		},
		
		prompt: function(title, msg, fn) {
			var win = $('<div></div>').appendTo(document.body);
			win.html('<div class="messager-icon messager-question"></div>'
						+ '<div>' + msg + '</div>'
						+ '<br/>'
						+ '<input class="messager-input" type="text" style="width:220px;"/>'
						+ '<div style="clear:both;"/>');
			win.dialog({
				title: title,
				modal:true,
				resizable:false,
				buttons:{
					'Ok':function(){
						win.dialog({closed:true});
						if (fn){
							fn($('.messager-input', win).val());
						}
					},
					'Cancel':function(){
						win.dialog({closed:true});
						if (fn){
							fn();
						}
					}
				},
				onClose:function(){
					$(this).dialog('options').destroyOnClose = true;
				}
			});
		}
	};
	
})(jQuery);
