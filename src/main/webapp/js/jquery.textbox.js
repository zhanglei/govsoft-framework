/*
 * I think it can work for Chinese Users.
 * Lewis Lv lzlhero@gmail.com
 */

;(function($) {
$.fn.textbox = function(settings) {
	var defaults = {
		maxLength: -1,
		onInput: null,
		_pasteHandler: function(event) {
			var textarea = this;
			window.setTimeout(function() {
				inputHandler.call(textarea, event);
			}, 0);
		},
		_cutHandler: function(event) {
			var textarea = this;
			window.setTimeout(function() {
				inputHandler.call(textarea, event);
			}, 0);
		},
		_keyupHandler: function(event) {
			if (opts.maxLength < 0) {
				if ($.isFunction(opts.onInput)) {
					opts.onInput.call(this, event, {maxLength: opts.maxLength, leftLength: -1});
				}
			}
			else {
				inputHandler.call(this, event);
			}
		},
		_blurHandler: function(event) {
			fixLength(this);
		}
	};
	var opts = $.extend(defaults, settings);

	// This is the prefect get caret position function.
	// You can use it cross browsers.
	function getInsertPos(textbox) {
		var iPos = 0;
		if (textbox.selectionStart || textbox.selectionStart == "0") {
			iPos = textbox.selectionStart;
		}
		else if (document.selection) {
			textbox.focus();
			var range = document.selection.createRange();
			var rangeCopy = range.duplicate();
			rangeCopy.moveToElementText(textbox);
			while (range.compareEndPoints("StartToStart", rangeCopy) > 0) {
				range.moveStart("character", -1);
				iPos++;
			}
		}
		return iPos;
	}

	// This is the prefect set caret position function.
	// You can use it cross browsers.
	function setInsertPos(textbox, iPos) {
		textbox.focus();
		if (textbox.selectionStart || textbox.selectionStart == "0") {
			textbox.selectionStart = iPos;
			textbox.selectionEnd = iPos;
		}
		else if (document.selection) {
			var range = textbox.createTextRange();
			range.moveStart("character", iPos);
			range.collapse(true);
			range.select();
		}
	}

	function isGreateMaxLength(strValue, strDelete) {
		if (opts.maxLength > 0) {
			return strValue.replace(/\r/g, "").length - (strDelete ? strDelete.replace(/\r/g, "").length : 0) > opts.maxLength;
		}
		else {
			return false;
		}
	}

	function fixLength(textbox) {
		if (opts.maxLength > 0) {
			var strValue = textbox.value.replace(/\r/g, "");
			if (isGreateMaxLength(strValue)) {
				textbox.value = strValue.substr(0, opts.maxLength);
			}
		}
	}

	function inputHandler(event) {
		var strValue = this.value.replace(/\r/g, "");
		if (isGreateMaxLength(strValue)) {
			var scrollTop = this.scrollTop;
			var iInsertToStartLength = getInsertPos(this) - (strValue.length - opts.maxLength);
			this.value = strValue.substr(0, iInsertToStartLength) + strValue.substr(getInsertPos(this));
			setInsertPos(this, iInsertToStartLength);
			this.scrollTop = scrollTop;
		}

		if ($.isFunction(opts.onInput)) {
			// callback for input handler
			opts.onInput.call(this, event, {
				maxLength: opts.maxLength,
				leftLength: opts.maxLength - this.value.replace(/\r/g, "").length
			});
		}
	};

	function getSelectedText(textbox) {
		var strText = "";
		if (textbox.selectionStart || textbox.selectionStart == "0") {
			strText = textbox.value.substring(textbox.selectionStart, textbox.selectionEnd);
		}
		else {
			strText = document.selection.createRange().text;
		}
		return strText.replace(/\r/g, "");
	}

	function unbindEvents(textbox, opts) {
		$(textbox)
				.unbind("paste", opts._pasteHandler)
				.unbind("cut", opts._cutHandler)
				.unbind("keyup", opts._keyupHandler)
				.unbind("blur", opts._blurHandler);
	}

	function bindEvents(textbox, opts) {
		var $textbox = $(textbox);

		if (opts.maxLength < 0) {
			$textbox.bind("keyup", opts._keyupHandler);
		}
		else {
			$textbox
					.bind("paste", opts._pasteHandler)
					.bind("cut", opts._cutHandler)
					.bind("keyup", opts._keyupHandler)
					.bind("blur", opts._blurHandler);

			fixLength(textbox);
		}
	}

	this.maxLength = function(maxLength) {
		if (maxLength) {
			opts.maxLength = maxLength;
			return this.filter("textarea").each(function() {
				unbindEvents(this, $(this).data("textbox-opts"));
				$(this).data("textbox-opts", opts);
				bindEvents(this, opts);
			}).end();
		}
		else {
			return opts.maxLength;
		}
	};

	this.input = function(callback) {
		if ($.isFunction(callback)) {
			opts.onInput = callback;
			return this.filter("textarea").each(function() {
				$(this).data("textbox-opts", opts);
			}).end();
		}

		return this;
	};

	this.fixLength = function() {
		return this.filter("textarea").each(function() {
			fixLength(this);
		}).end();
	};

	this.insertText = function(strText) {
		strText = strText.replace(/\r/g, "");
		return this.filter("textarea").each(function() {
			if (!isGreateMaxLength(this.value + strText, getSelectedText(this))) {
				if (this.selectionStart || this.selectionStart == "0") {
					var startPos = this.selectionStart;
					var endPos = this.selectionEnd;
					var scrollTop = this.scrollTop;

					this.value = this.value.substring(0, startPos) + 
								strText + this.value.substring(endPos, this.value.length);
					this.focus();

					var cPos = startPos + strText.length;
					this.selectionStart = cPos;
					this.selectionEnd = cPos;
					this.scrollTop = scrollTop;
				}
				else if (document.selection) {
					this.focus();
					var range = document.selection.createRange();
					range.text = strText;
					range.collapse(true);
					range.select();
				}

				// fired when insert text has finished
				if ($.isFunction(opts.onInput)) {
					opts.onInput.call(this, {type: "insert"}, {
						maxLength: opts.maxLength,
						leftLength: opts.maxLength - this.value.replace(/\r/g, "").length
					});
				}
			}
		}).end();
	};

	return this.filter("textarea").each(function() {
		var $textbox = $(this);

		if (settings) {
			if ($textbox.data("textbox-opts")) {
				unbindEvents(this, $textbox.data("textbox-opts"));
				$textbox.data("textbox-opts", opts);
				bindEvents(this, opts);
			}
			else {
				$textbox.data("textbox-opts", opts);
				bindEvents(this, opts);
			}
		}
		else {
			if ($textbox.data("textbox-opts")) {
				opts = $textbox.data("textbox-opts");
			}
		}
	}).end();
};
})(jQuery);