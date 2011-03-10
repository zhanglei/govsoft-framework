var QuickUpload = function(file, options) {
	
	this.file = $$(file);
	
	this._sending = false;//�Ƿ������ϴ�
	this._timer = null;//��ʱ��
	this._iframe = null;//iframe����
	this._form = null;//form����
	this._inputs = {};//input����
	this._fFINISH = null;//���ִ�к���
	
	$$.extend(this, this._setOptions(options));
};
QuickUpload._counter = 1;
QuickUpload.prototype = {
  //����Ĭ������
  _setOptions: function(options) {
    this.options = {//Ĭ��ֵ
		action:		"",//����action
		timeout:	0,//���ó�ʱ(��Ϊ��λ)
		parameter:	{},//��������
		onReady:	function(){},//�ϴ�׼��ʱִ��
		onFinish:	function(){},//�ϴ����ʱִ��
		onStop:		function(){},//�ϴ�ֹͣʱִ��
		onTimeout:	function(){}//�ϴ���ʱʱִ��
    };
    return $$.extend(this.options, options || {});
  },
  //�ϴ��ļ�
  upload: function() {
	//ֹͣ��һ���ϴ�
	this.stop();
	//û���ļ�����
	if ( !this.file || !this.file.value ) return;
	//������onReady���޸�����������Է�ǰ��
	this.onReady();
	//����iframe,form�ͱ��ؼ�
	this._setIframe();
	this._setForm();
	this._setInput();
	//���ó�ʱ
	if ( this.timeout > 0 ) {
		this._timer = setTimeout( $$F.bind(this._timeout, this), this.timeout * 1000 );
	}
	//��ʼ�ϴ�
	this._form.submit();
	this._sending = true;
  },
  //����iframe
  _setIframe: function() {
	if ( !this._iframe ) {
		//����iframe
		var iframename = "QUICKUPLOAD_" + QuickUpload._counter++,
			iframe = document.createElement( $$B.ie ? "<iframe name=\"" + iframename + "\">" : "iframe");
		iframe.name = iframename;
		iframe.style.display = "none";
		//��¼��ɳ��򷽱��Ƴ�
		var finish = this._fFINISH = $$F.bind(this._finish, this);
		//iframe�������ִ����ɳ���
		if ( $$B.ie ) {
			iframe.attachEvent( "onload", finish );
		} else {
			iframe.onload = $$B.opera ? function(){ this.onload = finish; } : finish;
		}
		//����body
		var body = document.body; body.insertBefore( iframe, body.childNodes[0] );
		
		this._iframe = iframe;
	}
  },
  //����form
  _setForm: function() {
	if ( !this._form ) {
		var form = document.createElement('form'), file = this.file;
		//��������
		$$.extend(form, {
			target: this._iframe.name, method: "post", encoding: "multipart/form-data"
		});
		//������ʽ
		$$D.setStyle(form, {
			padding: 0, margin: 0, border: 0,
			backgroundColor: "transparent", display: "inline"
		});
		//�ύǰȥ��form
		file.form && $$E.addEvent(file.form, "submit", $$F.bind(this.dispose, this));
		//����form
		file.parentNode.insertBefore(form, file).appendChild(file);
		
		this._form = form;
	}
	//action���ܻ��޸�
	this._form.action = this.action;
  },
  //����input
  _setInput: function() {
	var form = this._form, oldInputs = this._inputs, newInputs = {}, name;
	//����input
	for ( name in this.parameter ) {
		var input = form[name];
		if ( !input ) {
			//���û�ж�Ӧinput�½�һ��
			input = document.createElement("input");
			input.name = name; input.type = "hidden";
			form.appendChild(input);
		}
		input.value = this.parameter[name];
		//��¼��ǰinput
		newInputs[name] = input;
		//ɾ�����м�¼
		delete oldInputs[name];
	}
	//�Ƴ�����input
	for ( name in oldInputs ) { form.removeChild( oldInputs[name] ); }
	//���浱ǰinput
	this._inputs = newInputs;
  },
  //ֹͣ�ϴ�
  stop: function() {
	if ( this._sending ) {
		this._sending = false;
		clearTimeout(this._timer);
		//����iframe
		if ( $$B.opera ) {//operaͨ������src��������
			this._removeIframe();
		} else {
			this._iframe.src = "";
		}
		this.onStop();
	}
  },
  //���ٳ���
  dispose: function() {
	this._sending = false;
	clearTimeout(this._timer);
	//���iframe
	if ( $$B.firefox ) {
		setTimeout($$F.bind(this._removeIframe, this), 0);
	} else {
		this._removeIframe();
	}
	//���form
	this._removeForm();
	//���dom����
	this._inputs = this._fFINISH = this.file = null;
  },
  //���iframe
  _removeIframe: function() {
	if ( this._iframe ) {
		var iframe = this._iframe;
		$$B.ie ? iframe.detachEvent( "onload", this._fFINISH ) : ( iframe.onload = null );
		document.body.removeChild(iframe); this._iframe = null;
	}
  },
  //���form
  _removeForm: function() {
	if ( this._form ) {
		var form = this._form, parent = form.parentNode;
		if ( parent ) {
			parent.insertBefore(this.file, form); parent.removeChild(form);
		}
		this._form = this._inputs = null;
	}
  },
  //��ʱ����
  _timeout: function() {
	if ( this._sending ) { this._sending = false; this.stop(); this.onTimeout(); }
  },
  //��ɺ���
  _finish: function() {
	if ( this._sending ) { this._sending = false; this.onFinish(this._iframe); }
  }
}