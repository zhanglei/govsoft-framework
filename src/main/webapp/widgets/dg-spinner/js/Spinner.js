/************************************************************************************************************
Ajax dynamic list
Copyright (C) August 2008  DTHMLGoodies.com, Alf Magne Kalleland

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

Dhtmlgoodies.com., hereby disclaims all copyright interest in this script
written by Alf Magne Kalleland.

Alf Magne Kalleland, 2008
Owner of DHTMLgoodies.com

************************************************************************************************************/
if(!window.DG) {
	window.DG = {};
};

DG.Spinner = new Class( {
	config: {
		increment : 1,
		value : 0,
		minValue : 0,
		maxValue : 100,
		decimals: 0,
		styles: {},
		shiftIncrement : 10,
		label: null,
		name: '',
		disableWheel : false,
		disabled : false,
		buttonAlign : 'right'
	},
	hasFocus : false,

	html : {
		el : null,
		container : null,
		arrowsContainer : null,
		upArrow : null,
		downArrow : null,
		arrowSeparator : null,
		label: null
	},
	mode: {},
	initialize : function(config) {
		this.config = $merge(this.config,config);

		this._createHtml();
		this._setStyles();
		this._createEvents();
		this._clearMode();
		this.increment(0,false);
		this._setContainerSize();
	},
	_clearMode : function() {
		this.mode = {
			name: false,
			modeElement : null,
			shiftKey :false,
			timeout: false
		}
	},
	_createContainer : function(config) {
		config = $merge({
			tag : 'div',
			cls : ''
		},config);

		var el = new Element(config.tag);
		el.addClass(config.cls);

		if(config.renderTo) {
			config.renderTo.adopt(el);
		}
		return el;
	},
	_setConfigPropertiesFromMarkup : function() {
		this.config.renderTo = this.html.el.parentNode;
		var props = this.html.el.getProperty('properties');
		if(this.html.el.getProperty('maxlength') && !props) {
			this.config.maxValue = Math.pow(10,this.html.el.getProperty('maxlength'))-1;
			this.config.shiftIncrement = Math.ceil(this.config.maxValue / 25);
		}

		if(this.html.el.disabled) {
			props = props + ',disabled:true';
		}

		if(props) {
			props = props.split(',');
			for(var i=0;i<props.length;i++) {
				var tokens = props[i].split(':');
				var key = tokens[0].trim();
				var value = tokens[1].trim();
				switch(key) {
					case 'label':
						this.config[key] = $(value);
						break;
					case 'disabled':
					case 'disableWheel':
					case 'disableArrowKeys':
						this.config[key] = eval(value);
						break;
					default:
						value = value/1;
				}
				this.config[key] = value;
			}
		}
	},
	_createHtml : function() {
		if(!this.config.el) {
			this.html.el = new Element('input', {
				maxLength : (this.config.maxValue + '').length,
				type : 'text',
				id : this.config.id,
				name: this.config.name || '',
				value : this.config.value
			});
		}else{
			this.html.el = $(this.config.el);
			this.config.el = null;
			this._setConfigPropertiesFromMarkup();
		}
		this.html.el.addClass('DG-spinner-input');

		this.html.container = this._createContainer({
			cls : 'DG-spinner-container'
		});

		this.html.container.adopt(this.html.el);



		this._createButtonElements();

		this.render();
		this._updateView();
	},

	_createButtonElements : function() {
		this.html.arrowsContainer = this._createContainer({
			cls : 'DG-spinner-arrows-container',
			renderTo : 	this.html.container
		});



		this.html.upArrow = this._createContainer( {
			cls : 'DG-spinner-arrow-up',
			renderTo: this.html.arrowsContainer
		});
		this.html.downArrow = this._createContainer( {
			cls : 'DG-spinner-arrow-down',
			renderTo: this.html.arrowsContainer
		});

		this.html.arrowSeparator = this._createContainer( {
			cls : 'DG-spinner-arrow-separator',
			renderTo: this.html.arrowsContainer
		});
	},

	_setStyles : function() {
		this.html.container.setStyles( {
			position: 'relative'
		});
		this.html.el.setStyles( {
			border : '0px'
		});
		this.html.arrowsContainer.setStyles( {
			position: 'absolute',
			top: '0px',
			height:'100%',
			right: '0px'
		});

		if(this.config.buttonAlign == 'left') {
			this.html.arrowsContainer.setStyles( {
				'left': '0px',
				'border-right-width' : '1px',
				'border-right-style' : 'solid'

			});
			this.html.container.setStyles({
				'padding-right' : '0px',
				'padding-left' : '12px'
			});
		}else{
			this.html.arrowsContainer.setStyles( {
				'right': '0px',
				'border-left-width' : '1px',
				'border-left-style' : 'solid'

			});
			this.html.container.setStyles({
				'padding-right' : '10px',
				'padding-left' : '0px'
			});
		}
		this.html.upArrow.setStyles( {
			position: 'absolute',
			'background-repeat': 'no-repeat',
			'background-position': 'center center',
			height: ' 50%',
			top:'0px'
		});
		this.html.downArrow.setStyles( {
			position: 'absolute',
			'background-repeat': 'no-repeat',
			'background-position': 'center center',
			height: ' 50%',
			bottom: '0px'
		});
		this.html.arrowSeparator.setStyles( {
			position: 'absolute',
			top: '50%'
		});

		this.getEl().setStyles(this.config.styles);
	},

	render : function() {
		if(this.config.renderTo) {
			$(this.config.renderTo).adopt(this.html.container);
		}
	},
	setDisabled : function(disabled) {
		if(disabled) {
			this.disable();
		}else{
			this.enable();
		}
	},
	enable : function() {
		this.config.disabled = false;
		this._updateView();
	},
	disable : function() {
		this.config.disabled = true;
		this._updateView();
	},
	_updateView : function() {
		if(this.config.disabled) {
			this.html.arrowsContainer.addClass('DG-spinner-arrows-container-disabled');
			this.html.container.addClass('DG-spinner-container-disabled');
			this.html.el.disabled = true;
		}else{
			this.html.arrowsContainer.removeClass('DG-spinner-arrows-container-disabled');
			this.html.container.removeClass('DG-spinner-container-disabled');
			this.html.el.disabled = false;
		}

	},
	_validateKeyStroke : function(e) {

		if(!this.config.disableArrowKeys){
			if(e.key=='up') {
				this.increment(1, e.shift);
				return false;
			}
			if(e.key=='down') {
				this.increment(-1, e.shift);
				return false;
			}
		}

		if(this.config.minValue<0 && this.html.el.value.indexOf('-')==-1 && e.key=='-') {
			return true;
		}
		if(this.config.decimals && (e.code==190 || e.code==46) && this.html.el.value.indexOf('.')==-1){
			return true; // Some strange things are going on with mootools here. e.key is "delete" when the user types in a period sign
		}
		if(Event.Keys.hasOwnProperty(e.key)){
			return true;
		}
		var regExp = new RegExp('[0-9]');
		return regExp.test(e.key);
	},
	_focus : function() {
		this.hasFocus = true;
	},
	_blur : function() {
		this.hasFocus = false;
	},
	_createEvents : function() {
		if(!this.config.disableWheel){
			this.html.el.addEvent('mousewheel', this._mouseWheel.bind(this));
			this.html.el.addEvent('focus', this._focus.bind(this));
			this.html.el.addEvent('blur', this._blur.bind(this));
		}
		this.html.el.addEvent('keydown', this._validateKeyStroke.bind(this));
		this.html.upArrow.addEvent('mouseover', this._arrowMouseOver.bind(this));
		this.html.downArrow.addEvent('mouseover', this._arrowMouseOver.bind(this));
		this.html.upArrow.addEvent('mouseout', this._arrowMouseOut.bind(this));
		this.html.downArrow.addEvent('mouseout', this._arrowMouseOut.bind(this));
		this.html.upArrow.addEvent('mousedown', this._arrowMouseDown.bind(this));
		this.html.downArrow.addEvent('mousedown', this._arrowMouseDown.bind(this));
		this.html.upArrow.addEvent('mouseup', this._arrowMouseUp.bind(this));
		this.html.downArrow.addEvent('mouseup', this._arrowMouseUp.bind(this));
		window.addEvent('domready', this._setContainerSize.bind(this));
		Window.getDocument().addEvent('mouseup', this._clearMode.bind(this));

		if(this.config.label) {
			this.html.label = $(this.config.label);
			this.config.label = null;
			this.html.label.setStyle('cursor','w-resize');
			$(this.html.label).addEvents({
				'mousedown' : this._initNudge.bind(this),
				'selectstart' : function(){ return false; }
			});
			Window.getDocument().addEvent('mousemove', this._nudge.bind(this));
		}
	},
	_initNudge : function(e) {
		this._startMode( {
			name: 'nudge',
			x : e.page.x,
			initValue : this.getValue(),
			labelWidth : this.html.label.getSize().x
		});
		return false;
	},
	_nudge : function(e) {
		if(this.mode.name=='nudge') {
			var movement = e.page.x - this.mode.x;
			var multiply = (this.config.maxValue - this.config.minValue) /  this.mode.labelWidth;
			this.setValue(this.mode.initValue + (movement * multiply));

			var currentValue = this.getValue();
			if(currentValue==this.config.maxValue || currentValue==this.config.minValue) {
				this._initNudge(e);
			}
		}
	},
	_setContainerSize : function() {
		this.html.container.setStyle('width', this.getEl().getSize().x);
	},
	_arrowMode : function() {
		if(this.mode.name) {
			switch(this.mode.modeElement){
				case this.html.upArrow:
					this.increment(1, this.mode.shiftKey);
					break;
				case this.html.downArrow:
					this.increment(-1, this.mode.shiftKey);
					break;
				default:
			};
			this.mode.timeout = Math.max(Math.round(this.mode.timeout * 0.8), 15);
			setTimeout(this._arrowMode.bind(this), this.mode.timeout);
		}
	},
	_startMode : function(modeConfig) {
		this.mode = modeConfig;
		switch(this.mode.name) {
			case 'mousedown':
				this._arrowMode();
				break;
			default:
		};
	},
	_arrowMouseDown : function(e) {
		if(!this.config.disabled) {
			e.target.addClass('DG-spinner-arrow-downeffect');
			this._startMode( {
				name: 'mousedown',
				modeElement : e.target,
				shiftKey : e.shift,
				timeout : 400
			});
		}
	},
	_arrowMouseUp : function(e) {
		e.target.removeClass('DG-spinner-arrow-downeffect');
	},
	_arrowMouseOver : function(e) {
		if(!this.config.disabled) {
			e.target.addClass('DG-spinner-arrow-overeffect');
		}
	},
	_arrowMouseOut : function(e) {
		if(!this.config.disabled) {
			e.target.removeClass('DG-spinner-arrow-overeffect');
		}
	},
	_mouseWheel : function(e) {
		if(this.hasFocus) {
			this.increment(e.wheel>0 ? Math.ceil(e.wheel) : Math.floor(e.wheel), e.shift);	// Math.ceil because of a mystery error in either firefox or mootools
		}
		return false;
	},
	increment : function(value, shiftKey) {
		value = value * (shiftKey ? this.config.shiftIncrement : this.config.increment);
		this.setValue(this.getValue() + value);
	},
	validate : function(value) {
		if(value<this.config.minValue)value = this.config.minValue;
		if(value>this.config.maxValue)value = this.config.maxValue;
		return value;
	},
	setValue : function(value) {
		if(!this.config.disabled) {
			this.getEl().value = this.validate(value).toFixed(this.config.decimals);
		}
	},
	getValue : function() {
		return this.html.el.value/1;
	},

	getEl : function() {
		return this.html.el;
	},

	fireEvent : function(e) {
		this.html.el.fireEvent(e);
	}
});

DG._createSpinBoxesFromMarkup = function() {
	var inputs = $$('input.DG-spinner');
	for(var i=0;i<inputs.length;i++) {
		new DG.Spinner({
			el: inputs[i]
		});
	}
}

window.addEvent('domready', DG._createSpinBoxesFromMarkup)
