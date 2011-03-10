/**
 * Validation
 * 
 * A simple and really easyuse javascript framework for form validation
 * 
 * @email: bencode <ben-na@163.com>
 * @version: 1.2.8
 *
 */
;(function() {

var _Validation = window.Validation;	// for noConflict
var Validation = function(form, options) { 
	this.initialize.apply(this, arguments); 
};
Validation.version = '1.2.8';

/**
 * util
 */
function each(ary, fun, bind) {
	if (typeof ary === 'object' && typeof ary.length === 'number') {
		for (var i = 0, c = ary.length; i < c; ++i) {
			if (fun.call(bind, ary[i], i, ary) === false) {
				break;
			}
		}
	} else {
		for (var k in ary) {
			if (fun.call(bind, ary[k], k, ary) === false) {
				break;
			}
		}
	}
	return ary;
}
function all(ary, fun, bind) {
	var ret = true;
	each(ary, function(v, k) {
		if (!fun.call(bind, v, k, ary)) {
			ret = false;
			return false;
		}
	});
	return ret;
}
function any(ary, fun, bind) {
	var ret = false;
	each(ary, function(v, k) {
		if (fun.call(bind, v, k, ary)) {
			ret = true;
			return false;
		}
	});
	return ret;
}
function extend() {
	var des = arguments[0] || {};
	for (var i = 1, c = arguments.length; i < c; ++i) {
		var src = arguments[i];
		for (var key in src) {
			if (src[key] !== undefined) {
				des[key] = src[key];
			}
		}
	}
	return des;
}
function isEmpty(v) {
	return !v || v.length == 0 || /^\s+$/.test(v);
}
function isArray(object) {	// simple test for array
	return object !== null && typeof object === 'object' 
			&& object.splice && object.join && object.sort;
}
function splat(object) {
	return isArray(object) ? object : [object];
}
function trim(text) {
	return (text || '').replace(/^\s+|\s+$/g, '');
}
function bind(fn, bind) {
	return function() {
		return fn.apply(bind || this, arguments);
	};
}

/**
 * ui
 */
var _$ = $;	// for mootools or prototype
function $(elm) {
	return (typeof elm === 'string') ? document.getElementById(elm) : elm;
}
function getTag(elm) {
	return elm.tagName.toLowerCase();
}
function getValue(elm) {
	var tag = getTag(elm);
	if (tag == 'select') {
		var values = [];
		each(elm.options, function(option) {
			option.selected && values.push(option.value);
		});
		return elm.multiple ? values : values[0];
	} else if (tag == 'input') {
		var type = elm.type.toLowerCase();
		if ((type == 'checkbox' || type == 'radio') && !elm.checked) {
			return false;
		}
	}
	return elm.value;
}

// learn from jquery
var cache = {}, expando = 'validation' + new Date().getTime(), uuid = 0, windowData = {};
function data(elm, name, data) {
	elm = (elm == window) ? windowData : elm;
	var id = elm[expando];
	if (!id) {
		id = elm[expando] = ++uuid;
	}
	cache[id] = cache[id] || {};
	if (data !== undefined) {
		cache[id][name] = data;
	}
	return cache[id][name];
}
function removeData(elm, name) {
	elm = (elm == window) ? windowData : elm;
	var id = elm[expando];
	if (!cache[id]) {
		return;
	}
	delete cache[id][name];
	name = '';
	for (name in cache) {
		break;
	}
	if (!name) {
		try {
			delete elm[expando];
		} catch (e) {
			elm.removeAttribute && elm.removeAttribute(expando);	// for ie
		}
		delete cache[id];
	}
}

function addEvent(elm, event, handler) {
	if (elm.addEventListener) { // for DOM-compliant browsers
		elm.addEventListener(event, handler, false);
	} else if (elm.attachEvent) {  // for IE
		elm.attachEvent('on' + event, handler);
	}
}
function removeEvent(elm, event, handler) {
	if (elm.removeEventListener) {  // for DOM-compliant browsers
		elm.removeEventListener(event, handler, false);
	} else if (elm.detachEvent) {  // for IE
		elm.detachEvent('on' + event, handler);
	}
}
function stopEvent(event) {
	event = event || window.event;
	event.returnValue = false;	// for IE
	event.preventDefault && event.preventDefault();	// for DOM
}

function getClasses(elm) {
	return (elm.className || '').split(/\s+/);
}
function hasClass(elm, cn) {
	return any(getClasses(elm), function(t) {
		return t == cn;
	});
}
function addClass(elm, cn) {
	if (!hasClass(elm, cn)) {
		elm.className += (elm.className ? ' ' : '') + cn;
	}
}
function removeClass(elm, cn) {
	var cns = [];
	each(getClasses(elm), function(t) {
		t != cn && cns.push(t);
	});
	elm.className = cns.join(' ');
}
function getFormElements(form) {
	var elms = [];
	each(form.getElementsByTagName('*'), function(elm) {
		var tag = getTag(elm);
		if (tag == 'input' || tag == 'select' || tag == 'textarea') {
			elms.push(elm);
		}
	});
	return elms;
}

function show(elm, callback) {
	if (Validation.show) {
		return Validation.show(elm, callback);
	}
	if (Validation.show === false) {
		elm.style.display = '';
		callback && callback();
		return;
	}
	if (typeof jQuery !== 'undefined') {
		jQuery(elm).fadeIn('slow', callback);
	} else if (typeof Prototype !== 'undefined' && typeof Effect !== 'undefined') {
		_$(elm).appear({ afterFinish: callback });
	} else if (typeof MooTools !== 'undefined' && typeof Fx !== 'undefined') {
		elm = _$(elm);
		if (elm.getStyle('display') == 'none') {
			elm.setStyles({ opacity: 0, display: ''});
			var fx = new Fx.Tween(elm, { onComplete: callback });
			fx.start('opacity', 1);
		}
	} else {
		elm.style.display = '';
		callback && callback();
	}
}
function hide(elm, callback) {
	if (Validation.hide) {
		return Validation.hide(elm, callback);
	}
	if (Validation.hide === false) {
		elm.style.display = 'none';
		callback && callback();
		return;
	}
	if (typeof jQuery !== 'undefined') {
		jQuery(elm).fadeOut('slow', callback);
	} else if (typeof Prototype !== 'undefined' && typeof Effect !== 'undefined') {
		_$(elm).fade({ afterFinish: callback });
	} else if (typeof MooTools !== 'undefined' && typeof Fx !== 'undefined') {
		elm = _$(elm);
		var fx = new Fx.Tween(elm);
		fx.start('opacity', 0).chain(function() {
			elm.setStyle('display', 'none');
			callback && callback();
		});
	} else {
		elm.style.display = 'none';
		callback && callback();
	}
}
function activate(elm) {
	if (Validation.activate) {
		return Validation.activate(elm);
	}
	try {
		elm.focus();
		elm.select && elm.select();
	} catch (e) { }
}

//
function matchElmData(elm, data) {
	if (!data) {
		return null;
	}
	if (elm.id && data[elm.id]) {
		return data[elm.id];
	}
	var classes = getClasses(elm);
	var ret = null;
	each(classes, function(v) {
		var t = data['.' + v];
		if (t) {
			ret = t;
			return false;
		}
	});
	return ret;
}

/**
 * Validator
 */
var Validator = function() { this.initialize.apply(this, arguments); };
extend(Validator.prototype, {
	initialize: function(test, options) {
		this.test = (typeof test === 'function') ? { test: test } : test;
		this.options = options || {};
	},
	
	validate: function(v, args) {
		return this.options.force ? this._validate(v, args) 
				: (isEmpty(v) || this._validate(v, args));
	},
	
	_validate: function(v, args) {
		return (this.options.depends ? all(this.options.depends, function(depend) {
			return depend.validate(v, args);
		}) : true) && (this.test === true  || (this.test.validate || this.test.test).call(this.test, v, args));
	}
});

/**
 * Advice
 */
var Advice = {};
Advice['alert'] = {
	fail: function(elm, message) {
		message && window.alert(message);
	}
};

Advice['default'] = {
	prompt: function(elm, message) {
		this._showAdvice(elm, 'prompt', message);
	},
	
	pass: function(elm, message) {
		this._showAdvice(elm, 'passed', message);
	},
	
	fail: function(elm, message) {
		this._showAdvice(elm, 'failed', message);
	},
	
	reset: function(elm) {
		var types = ['prompt', 'passed', 'failed'];
		each(types, function(type) {
			removeClass(elm, 'validation-' + type);	// reset element
			
			var adv = this._getAdvice(elm, type);	// reset advice
			if (!adv) {
				return;
			}
			
			if (data(adv, 'validation')) {	// adv is created by framework
				adv.parentNode && adv.parentNode.removeChild(adv);
			} else {
				removeClass(adv, 'validation-advice-' + type);
				adv.style.display = 'none';
			}
		}, this);
		
		removeData(elm, 'validation_advice_default');
	},
	
	_showAdvice: function(elm, type, message) {
		var types = ['prompt', 'passed', 'failed'];
		
		each(types, function(t) {
			(t == type ? addClass : removeClass)(elm, 'validation-' + t);
		});
		
		var advice = this._getAdvice(elm, type);
		if (!advice && message) {
			advice = this._createAdvice(elm);
			this._setAdvice(elm, advice);
		}
		
		// we do nothing in below...
		// 1. no prompt advice
		// 2. have framework created advice but no message 
		if (type == 'prompt' && (!advice || (data(advice, 'validation') && !message))) {
			return;
		}
		
		// reset othertype advice
		each(types, function(t) {
			if (t == type) {
				return;
			}
			var adv = this._getAdvice(elm, t);
			if (!adv) {
				return;
			}
			
			if (advice) {
				removeClass(adv, 'validation-advice-' + t);
				adv.style.display = 'none';
			} else {
				hide(adv, function() {
					removeClass(adv, 'validation-advice-' + t);
				});
			}
		}, this);
		
		if (!advice) {
			return;
		}
		
		if (message && !data(advice, 'validation_message')) {
			// just the the innnerHtml with <span>message</span> will cause the ie runtime error..
			advice.innerHTML = '';
			var span = elm.ownerDocument.createElement('span');
			span.innerHTML = message;
			advice.appendChild(span);
		}
		
		if (message || data(advice, 'validation_message')) {
			addClass(advice, 'validation-advice-' + type);
			show(advice);
		}
	},
	
	_getAdvice: function(elm, type) {
		var t = data(elm, 'validation_advice_default') || data(elm, 'validation_advice_default', {});
		var adv = t[type];
		if (adv) {
			return adv;
		}
		
		adv = elm.id ? ($('validation-advice_' + type + '-' + elm.id) 
				|| $('validation-advice-' + elm.id)) : null;
		adv = adv || $('validation-advice-' + type) || $('validation-advice');
		if (adv) {
			t[type] = adv;
			trim(adv.innerHTML) && data(adv, 'validation_message', true);	// mark advice that has own message
		}
		return adv;
	},
	
	_setAdvice: function(elm, adv) {
		data(elm, 'validation_advice_default', { prompt: adv, passed: adv, failed: adv });
	},
	
	_createAdvice: function(elm) {
		var id = 'validation-advice-' + (elm.id || new Date().getTime());
		var advice = '<div id="' + id 
				+ '" class="validation-advice" style="display: none;"></div>';
		var div = elm.ownerDocument.createElement('div');
		div.innerHTML = advice;
		advice = div.childNodes[0];
		data(advice, 'validation', true);	// mark that created by framework
		
		var parent = elm.parentNode;
		var type = elm.type.toLowerCase();
		if ((type == 'checkbox' || type == 'radio') && parent) {
			parent.appendChild(advice);
		} else {
			var next = elm.nextSibling;
			next ? parent.insertBefore(advice, next) : parent.appendChild(advice);
		}
		return advice;
	}
};

/**
 * Validation static functions
 */
extend(Validation, {
	add: function(name, test, options) {
		if (arguments.length == 1) {
			each(name, function(v, k) {
				v = splat(v);
				this.add.call(this, k, v[0], v[1]);
			}, this);
			return this;
		}
		
		options = extend({}, options);
		validators = [];
		options.depends && each(splat(options.depends), function(depend) {
			var v = this.get(depend);
			v && validators.push(v);
		}, this);
		options.depends = validators;
		
		this._validators[name] = new Validator(test, options);
		
		return this;
	},
	
	get: function(name) {
		if (typeof name === 'string') {
			return this._validators[name];
		}
		if (getTag(name) == 'form') {
			return data(name, 'validation');
		}
		return null;
	},
	
	validate: function(elm, options) {
		return this._dispatchCall(elm, options, 'validate');
	},
	
	validateElement: function(elm, options) {
		elm = $(elm);
		if (options === false) {
			options = { advice: false };
		}
		options = extend({}, Validation.defaultOptions, options);
		
		var valid = this._validateElement(elm, options);
		if (valid == -3) { // have no validators
			return true;
		}
		
		if (options.advice !== false) {
			var advice = this._getAdvice(options);
			if (!advice) {
				throw new Error('can not find the validation advice:' + options.advice);
			}
			data(elm, 'validation_advice', advice);
			if (valid == -1) {
				if (advice.pass) {
					var message = this._getMessage(elm, 'passed', options);
					advice.pass(elm, message, options);
				}
			} else {
				if (advice.fail) {
					var message = this._getMessage(elm, 'failed', options, valid == -2 ? false : valid);
					advice.fail(elm, message, options);
				}
			}
		}
		
		var v = options.onElementValidate || options.onValidate;
		if (v && v.call(elm, valid == -1, (valid == -2) ? 0 : valid) === false) {
			valid = -1;
		}
		
		return valid == -1;
	},
	
	validateForm: function(form, options) {
		form = $(form);
		if (options === false) {
			options = { advice: false, focusOnError: false };
		} 
		options = extend({}, Validation.defaultOptions, options);
		
		var elms = getFormElements(form);
		var valid = true;
		var errorElms = [];
		if (options.stopOnFirst) {
			valid = all(elms, function(elm) {
				var t = this._validateFormElement(elm, options);
				if (!t) {
					errorElms.push(elm);
				}
				return t;
			}, this);
		} else {
			each(elms, function(elm) {
				if (!this._validateFormElement(elm, options)) {
					errorElms.push(elm);
					valid = false;
				}
			}, this);
		}
		
		if (options.onFormValidate && options.onFormValidate.call(form, valid, 
				options.stopOnFirst ? errorElms[0] : errorElms) === false) {
			valid = false;
		}
				
		!valid && options.focusOnError && activate(errorElms[0]);

		return valid;
	},
	
	reset: function(elm) {
		return this._dispatchCall(elm, null, 'reset');
	},
	
	resetForm: function(form) {
		each(getFormElements($(form)), this.resetElement, this);
		return this;
	},
	
	resetElement: function(elm) {
		elm = $(elm);
		var advice = data(elm, 'validation_advice');
		advice && advice.reset && advice.reset(elm);
		removeData(elm, 'validation_advice');
		return this;
	},
	
	prompt: function(elm, options) {
		elm = $(elm);
		if (this._getValidators(elm, options).length == 0) {
			return;
		}
		var advice = this._getAdvice(options);
		var message = this._getMessage(elm, 'prompt', options);
		advice && advice.prompt && advice.prompt(elm, message, options);
	},
	
	_dispatchCall: function(elm, options, fn) {
		elm = $(elm);
		var t = getTag(elm) == 'form' ? 'Form' : 'Element';
		return this[fn + t](elm, options);
	},
	
	_validateElement: function(elm, options) {
		var validators = this._regularValidators(this._getValidators(elm, options));
		if (validators.length == 0) {
			return -3;	// have no validators
		}
		var value = getValue(elm);
		var index = -1;
		var valid = all(validators, function(v, i) {
			var validator = (typeof v[0] === 'string') ? this.get(v[0]) : new Validator(v[0], v[1]);
			if (!validator) {
				throw new Error("can't find installed validator: " + v[0]);
			}
			if (!validator.validate(value, v[1])) {
				index = i;
				return false;
			}
			return true;
		}, this); 
		
		if (!valid && validators.length == 1) {
			return -2;	// invalid but only have one validator
		}
		return index;	// -1 for valid, other indicate the index of failure validator
	},
	
	_validateFormElement: function(elm, options) {
		var vs = options.validators;
		var ms = options.messages;
		options.validators = matchElmData(elm, vs);
		options.messages = matchElmData(elm, ms);
		var valid = Validation.validateElement(elm, options);
		options.validators = vs;
		options.messages = ms;
		return valid;
	},
	
	_getValidators: function(elm, options) {
		return options.validators || options.validator || this._getValidatorsFromElm(elm);
	},
	
	_regularValidators: function(v) {
		v = splat(v);
		var ret = [];
		each (v, function(k) {
			var t = typeof k;
			if (t === 'string' || t === 'function') {
				ret.push([k]);
			} else if (isArray(k)) {
				ret.push(k);
			} else if (t === 'object') {
				var test = k.validate || k.test;
				if (test && typeof test === 'function') {
					ret.push([k]);
				} else {
					each (k, function(m, p) {
						this.get(p) && ret.push([p, m]);
					}, this);
				}
			}
		}, this);
		return ret;
	},
	
	_getValidatorsFromElm: function(elm) {
		var vs = [];
		each(getClasses(elm), function(name) {
			var v = this._getValidatorFromClass(name);
			v && vs.push(v);
		}, this);
		return vs;
	},
	
	_getValidatorFromClass: function(name) {
		if (name != 'required' && name.indexOf('validate-') != 0) {
			return null;
		}
		name = name.replace(/^validate-/, '');
		if (this.get(name)) {
			return name;
		}
		var args = [];
		var parts = (name + '-').match(/(-\[\S+?\](?=-))|[^-]+/g);
		for (var i = 0, c = parts.length; i < c - 1; ++i) {
			var arg = parts.pop().replace(/^-\[(\S+)\]$/, '$1');
			args.unshift(arg);
			name = parts.join('-');
			if (this.get(name)) {
				return [name, args];
			}
		}
		return null;
	},
	
	_getMessage: function(elm, type, options, index) {
		var msg = options.messages || options.message;
		if (msg) {
			if (typeof msg === 'string' || isArray(msg)) {
				msg = { failed: msg };
			}
			if (type == 'failed') {
				var t = splat(msg.failed);
				return t[index || 0] || t[0];
			} else {
				return msg[type];
			}
		} else {
			msg = elm.getAttribute((options.messageNames)[type]);
			if (!msg && type == 'failed' && options.useTitle) {
				msg = elm.title;
			}
			if (msg && type == 'failed' && index !== false) {
				var t = msg.split(options.messageSeparator);
				return t[index] || t[0];
			}
			return msg;
		}
	},
	
	_getAdvice: function(options) {
		var t = typeof options.advice;
		if (t === 'string') {
			return Advice[options.advice];
		} else if (t === 'function') {
			return { fail: options.advice };
		} else if (t === 'object') {
			return options.advice;
		} else {
			throw 'can not find advice.';
		}
	}
});

/**
 * Validation instance functions
 */
extend(Validation.prototype, {

	initialize: function(form, options) {
		this.form = $(form);
		this.options = extend({}, Validation.defaultOptions, options);
		
		var v = data(this.form, 'validation');
		if (v) {
			v.stop();
			delete v;
		}
		
		this.options.autoStart && this.start();
		data(this.form, 'validation', this);
	},
	
	start: function() {
		if (this.running) {
			return this;
		}
		this.running = true;
		
		this.options.immediate && this._handleElms();
		this.options.onSubmit && this._handleSubmit();
		this.options.onReset && this._handleReset();
		
		return this;
	},
	
	stop: function() {
		if (!this.running) {
			return this;
		}
		this.running = false;
		
		this.reset();
		each(getFormElements(this.form), this._removeEvent, this);
		this._removeEvent(this.form);
		
		return this;
	},
	
	restart: function() {
		return this.stop().start();
	},
	
	validate: function(options) {
		if (options === false) {
			options = { advice: false, focusOnError: false };
		}
		options = extend({}, this.options, options);
		return Validation.validateForm(this.form, options);
	},
	
	reset: function() {
		Validation.resetForm(this.form);
		return this;
	},
	
	_handleSubmit: function() {
		var handler = bind(function(e) {
			if (!this.validate()) {
				stopEvent(e);
			}
		}, this);
		this._addEvent(this.form, 'submit', handler);
	},
	
	_handleReset: function() {
		var handler = bind(function() {
			this.reset();
		}, this);
		this._addEvent(this.form, 'reset', handler);
	},
	
	_handleElms: function() {
		var options = this.options;
		var elms = getFormElements(this.form);
		var event = options.immediate == 'keypress' ? 'keypress' : 'blur';
		each(elms, function(elm) {
			var h = function() {
				// this code should be refactory to only use public method of Validation
				return Validation._validateFormElement(elm, options);	
			};
			var validateHandler = h;
			
			var tag = getTag(elm);
			if (tag != 'select' && event == 'keypress') {
				validateHandler = function() {
					if (data(elm, 'validation_running')) {
						return;
					}
					data(elm, 'validation_running', true);
					var delay = (options.delay || 0.5) * 1000;
					setTimeout(h, delay);
					setTimeout(function() { removeData(elm, 'validation_running'); }, delay);
				};
			}
			var promptHandler = bind(function() {
				var ms = options.messages;
				options.messages = matchElmData(elm, ms);
				Validation.prompt(elm, options);
				options.messages = ms;
			}, this);
			
			this._addEvent(elm, tag == 'select' ? 'blur' : event, validateHandler);
			this._addEvent(elm, 'focus', promptHandler);
		}, this);
	},
	
	_addEvent: function(elm, event, handler) {
		var t = data(elm, 'validation_handler') || data(elm, 'validation_handler', []);
		t.push([event, handler]);
		addEvent(elm, event, handler);
	},
	
	_removeEvent: function(elm) {
		var t = data(elm, 'validation_handler');
		t && each(t, function(v) {
			removeEvent(elm, v[0], v[1]);
		});
		removeData(elm, 'validation_handler');
	}
	
});
//~ core end

Validation.util = {
	each: each, all: all, any: any, extend: extend, 
	isEmpty: isEmpty, isArray: isArray, splat: splat, trim: trim
};
Validation.ui = {
	get: $, getTag: getTag, getValue: getValue, data: data,
	addEvent: addEvent, removeEvent: removeEvent, stopEvent: stopEvent,
	getClasses: getClasses, hasClass: hasClass, addClass: addClass, removeClass: removeClass,
	show: show, hide: hide, activate: activate
};
Validation.advice = Advice;
Validation.Validator = Validator;

/**
 * like jQuery, we use noConflict to avoid name conflict
 */
window.Validation = Validation;
Validation.noConflict = function() {
	window.Validation = _Validation;
	return Validation;
};


/**
 * autobind
 */
Validation.autobind = true;
if (Validation.autobind) {
	addEvent(window, 'load', function() {
		var forms = document.getElementsByTagName('form');
		each(forms, function(form) {
			if (hasClass(form, 'required-validate')) {
				new Validation(form, { immediate: true } );
			}
		});
	});
}

/**
 * default options
 */
Validation.defaultOptions = {
	autoStart: true,
	
	advice: 'default',
	
	messageNames: { prompt: 'promptmessage', passed: 'passedmessage', failed: 'failedmessage' },
	useTitle: true,
	messageSeparator: /;\s*/,
	
	stopOnFirst: true,
	focusOnError: true,
	onSubmit: true,
	onReset: true
};
 
/**
 * validators
 */
Validation._validators = {};
Validation._validators['required'] = {
	validate: function(v) {
		return !isEmpty(v);
	}
};

/**
 * installed validators
 */
Validation.add({

	'integer': /^[-+]?[\d]+$/,
	
	'float': /^[-+]?\d+(\.\d+)?$/,
	
	'digits': /^\d+$/,
	
	'alpha': /^[a-zA-Z]+$/,
	
	'alphanum': /^[a-zA-Z0-9]+$/,
	
	'identifier': /^_*[a-zA-Z]\w*$/,
	
	'less-than': [function(v, arg) {
		return parseFloat(v) < arg;
	}, { depends: 'float' }],
	
	'great-than': [function(v, arg) {
		return parseFloat(v) > arg;
	}, { depends: 'float' }],
	
	'length': function(v, arg) {
		return v.length == arg;
	},
	
	'min-length': function(v, arg) {
		return v.length >= arg;
	},
	
	'max-length': function(v, arg) {
		return v.length <= arg;
	},
	
	'int-range': [function(v, args) {
		v = parseInt(v);
		return v >= args[0] && v <= args[1];
	}, { depends: 'integer' }],

	'float-range': [function(v, args) {
		v = parseFloat(v);
		return v >= args[0] && v <= args[1];
	}, { depends: 'float' }],
	
	'length-range': function(v, args) {
		return v.length >= args[0] && v.length <= args[1];
	},
	
	'file': function(v, args) {
		args = splat(args);
		return any(args, function(ext) {
			return new RegExp('\\.' + ext + '$', 'i').test(v);
		});
	},
	
	//---------------------------------
	
	'date': function(v, format) {
		format = format || 'y-m-d';
		format = splat(format).join('-'); // why? see validator 'pattern' below
		var k = format.replace(/[^ymd]/g, '')
		var t = ['\\', '\\\\', '/', '\\/', '.', '\\.', 
				'd', '(\\d{1,2})', 'y', '(\\d{4}|\\d{2})', 'm', '(\\d{1,2})'];
		for (var i = 0, c = t.length; i < c; i += 2) {
			format = format.replace(t[i], t[i + 1]);
		}
		var m = v.match(new RegExp('^' + format + '$'));
		if (!m) {
			return false;
		}
		
		var posy = k.indexOf('y');
		var posm = k.indexOf('m');
		var posd = k.indexOf('d');
		
		var year = posy != -1 ? m[posy + 1] : 0;
		var month = posm != -1 ? m[posm + 1] : 0;
		var day = posd != -1 ? m[posd + 1] : 0;
		
		var now = new Date();
		if (year && year.length == 2) {
			year = 2000 + year;
			year = year > now.getFullYear() ? year - 1000 : year;
		}
		year && now.setFullYear(year);
		month && now.setMonth(month - 1);
		day && now.setDate(day);
		
		if (year && now.getFullYear() != year
			|| month && now.getMonth() != month - 1
			|| day && now.getDate() != day) {
			return false;
		}
		return true;
	},
	
	'time': function(v) {
		var m = v.match(/^(\d{1,2}):(\d{1,2})(:(\d{1,2}))?$/);
		if (!m) {
			return false;
		}
		return parseInt(m[1]) < 24 && parseInt(m[2]) < 60 && (!m[4] || parseInt(m[4]) < 60);
	},
	
	'datetime': function(v, format) {
		var parts = v.split(/\s+/);
		if (parts.length != 2) {
			return false;
		}
		var v1 = Validation.get('date');
		var v2 = Validation.get('time');
		return v1.validate(parts[0], format) && v2.validate(parts[1]);
	},
	
	//---------------------------------
	
	'email': /\w{1,}[@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/,
	
	'url': /^(http|https|ftp):\/\/(([A-Z0-9][A-Z0-9_-]*)(\.[A-Z0-9][A-Z0-9_-]*)+)(:(\d+))?\/?/i,
	
	'ip': /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/,
	
	'id-number': function(v) {
		if (!(/^\d{17}(\d|x)$/i.test(v) || /^\d{15}$/i.test(v))) {
			return false;
		}
		var provinceCode = parseInt(v.substr(0, 2));
		if (provinceCode < 11 || provinceCode > 91) {
			return false;
		}
		var forTestDate = v.length == 18 ? v : v.substr(0, 6) + '19' + v.substr(6, 15);
		var birthday = forTestDate.substr(6, 8);
		if (!new Date(birthday.substr(0, 4) + '/' + birthday.substr(4, 2) + '/' + birthday.substr(6, 2))) {
			return false;
		}
		if(v.length == 18) {
			v = v.replace(/x$/i, 'a');
			var verifyCode = 0;
			for(var i = 17; i >= 0; i--) {
      			verifyCode += (Math.pow(2, i) % 11) * parseInt(v.charAt(17 - i), 11);
			}
        	if(verifyCode % 11 != 1) {
				return false;
			}
		}
		return true;
	},
	
	'chinese': /^[\u4e00-\u9fa5]+$/,
	
	'telephone': /^((0[1-9]{3})?(0[12][0-9])?-?)?\d{6,8}$/,
	
	'mobilephone': /(^0?[1][35][0-9]{9}$)/,
	
	'zip': /^[1-9]\d{5}$/,
	
	'qq': /^[1-9]\d{4,8}$/,
	
	//---------------------------

	'pattern': function(v, pattern) {
		// for default validators retrieve mechanism, it split args with '-' which may contain in pattern
		pattern = splat(pattern).join('-');
		return new RegExp(pattern).test(v);
	},
	
	'equals': [function(v, other) {
		return v == getValue($(splat(other).join('-')));
	}, { force: true }],
	
	'required-any': [function(v, args) {
		return !isEmpty(v) || any(splat(args), function(arg) {
			return !isEmpty(getValue($(arg)));
		});
	}, { force: true }],
	
	'any': function(v, names) {
		return any(splat(names), function(name) {
			return Validation.get(name).validate(v);
		});
	},
	
	'multi': function(v, args) {
		args = splat(args);
		var parts = v.split(new RegExp(args[1] || '\\s+'));
		var validator = Validation.get(args[0]);
		return all(parts, function(part) {
			return validator.validate(part);
		});
	},
	
	'within': function(v, args) {
		return any(splat(args), function(arg) {
			return v == arg;
		});
	},
	
	'notwithin': function(v, args) {
		return all(splat(args), function(arg) {
			return v != arg;
		});
	}
});

Validation.ajax = function() {
	window.alert('can not find ajax library(prototype mootools or jquery).');
};
Validation.ajaxValidate = function(v) {
	return /\s*true\s*/.test(v);
};
Validation.add('ajax', function(v, args) {
	args = splat(args);
	var url = args[0];
	var field = args[1] || 'value';

	var data = { };
	data[field] = v;

	var result = false;
	var onSuccess = function(text) {
		result = Validation.ajaxValidate(text);
	};
	if (typeof jQuery !== 'undefined') {
		jQuery.ajax({
			url: url,
			type: 'POST',
			async: false,
			data: data,
			success: onSuccess
		});
	} else if (typeof Prototype !== 'undefined') {
		new Ajax.Request(url, { 
			asynchronous: false, 
			parameters: data,
			onSuccess: function(xhr) { onSuccess(xhr.responseText); }
		});
	} else if (typeof MooTools !== 'undefined') {
		var request = new Request({ url: url, async: false, data: data });
		request.addEvent('success', onSuccess);
		request.send();
	} else {
		Validation.ajax({ url: url, data: data, success: onSuccess });
	}
	
	return result;
});

})();