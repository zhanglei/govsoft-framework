/**
 * 用于表格树的一些公用方法。可以用于其它的js。
 */
 
 
/**
 * 将默认的右键屏蔽
 * @return {Boolean}
 */
document.oncontextmenu = function(event) {
    return false;
}

/**
 * 设置页面的单击事件就隐藏菜单层
 */
document.onclick = function() {
	var mndiv = _$('_menuDiv');
	if(mndiv)
        mndiv.style.visibility = "hidden";
}

/**
 * 实现数组对象。
 * @param {} ary
 * @return {}
 */
function toArray(ary) {
	var result = new Array(ary.length);
	for (var i = 0; i < ary.length; i++) {
		result[i] = ary[i]
	}
	return result;
}

/**
 * 定义bind方法为function自动的再多绑定自定义的参数，返回新的函数。用于在事件的绑定方法中传递参数很有作用
 * @return {}
 */
Function.prototype.bind = function() {
	var args = toArray(arguments);
	var owner = args.shift();
	var _this = this;
	return function(owner) {
		return _this.apply(owner, args.concat(toArray(arguments)));
	}
}

/**
 * 添加样式文件
 * csspath:样式文件的地址
 */
function importcss(csspath) {
	var scripts = document.getElementsByTagName("link");
	for (var i = 0; i < scripts.length; i++) {
		if (csspath == scripts[i].getAttribute("href")) {
			return;
		}
	}
	// 在ie中.
	if (isIE)
		document.createStyleSheet(csspath);
	// 在火狐中
	else {
		var headElement = document.getElementsByTagName("head")[0];
		var tempStyleElement = document.createElement('link');// w3c
		tempStyleElement.setAttribute("rel", "stylesheet");
		tempStyleElement.setAttribute("type", "text/css");
		tempStyleElement.setAttribute("href", csspath);
		headElement.appendChild(tempStyleElement);
	}
}


/**
 * 将json的map对象转换为程序中的hashMap对象
 * @param {json的map对象} jsonMap
 */
function jsonMapToJsHashMap(jsonMap){
	var mapObj = new HashMap();
	for(var obj in jsonMap){
		mapObj.put(obj,jsonMap[obj]);
	}
	return mapObj;
}


/**
 * 从一个数组中减去另外一个数组 arr1:数组1 arr2:数组2 返回:arr1 - arr2的新数组
 */
function removeArrayFromOtherArray(arr1, arr2) {
	var tempArr = [];
	var bingo = [];
	var len1 = arr2.length;
	for (var ii = 0; ii < len1; ii++) {
		bingo.push(findInArray(arr1, arr2[ii]));
	}
	var len2 = arr1.length;
	for (var ii = 0; ii < len2; ii++) {
		if (findInArray(bingo, ii) == -1) {
			tempArr.push(arr1[ii]);
		}
	}
	return tempArr;
}

/**
 * 在一个数组中找指定的元素 
 * arr:数组对象 
 * obj:要查找的对象
 * 返回值:如果找到就返回数组中的位置(从0开始),否则就返回-1
 */
function findInArray(arr, obj) {
	var ans = -1;
	var len = arr.length;
	for (var i = 0; i < len; i++) {		
		if(arr[i]==obj){
			ans = i;
			return ans;
		}
	}
	return -1;
}


/**
 * 控制多个多选按钮的选择状态
 * checkName:多选按钮的name
 * v:设置的值
 */
function _checkedAll(checkName,v)
{
	var objs = document.getElementsByName(checkName);	
	var len = objs.length;
	if(isIE){
		for(var i=0;i<len;i++)
		{
			//排除那些有定义了是否后台选择的节点.
			if(objs[i].userSetDisabled==null||objs[i].userSetDisabled!='disabled')
				objs[i].checked = v;
			
		}
	} else {
		for (var i = 0; i < len; i++) {
			// 排除那些有定义了是否后台选择的节点.
			if (objs[i].getAttribute('userSetDisabled') == null
					|| objs[i].getAttribute('userSetDisabled') != 'disabled')
				objs[i].checked = v;

		}
	}
}

/**
 * 解决在火狐下面不可以使用innerText的问题
 */
function appendText(node, txt) {
	var nd = document.createTextNode(txt);
	node.appendChild(nd);
}

/**
 * 删除指定对象的指定样式名
 * @param {对象} obj
 * @param {样式名} cssName
 */
function rmCss(obj,cssName)
{
	if(obj){
		if(includeClassInObj(obj,cssName)){
			//下面首先删除样式里面已经存在的这个样式，然后合并两个以上的空格为一个空格。
			obj.className = obj.className.replace(cssName, '').replace(/\s{2,}/g,' ');
		}
	}
}

/**
 * 判断指定对象是否有指定的样式
 * @param {对象} obj
 * @param {样式名} cssName
 * @return {Boolean}
 */
function includeClassInObj(obj, cssName) {
	if (!obj.className) { return false; }
	return obj.className.indexOf(cssName)!= -1;	
}

/**
 * 为指定对象添加指定样式名
 * @param {对象} obj
 * @param {样式名} cssName
 */
function adCss(obj,cssName)
{
	if(obj){
		if (includeClassInObj(obj, cssName)) {
		 	return ; 
		}
		if (typeof obj.className!='undefined') {
			obj.className = obj.className +' '+cssName;
		} else {
			obj.className = cssName;
		}
	}
}

/**
 * 判断一个元素是否被自动绑定了为不可用.
 * 如果没有userSetDisabled属性或者这个属性为disabled.就返回true,
 * 否则返回false.
 * @param {元素对象} o
 */
function _notBindDisabled(o){
	if(o.userSetDisabled==null||o.userSetDisabled!='disabled'){
		return 1;
	}
	return 0;
}

/**
 * 设置指定元素不可用或者可用
 * obj:元素
 * val:不可用(1)或者可用(0)
 */
function disableDom(obj,val)
{
	if(obj)
		obj.disabled = val;
}

/**
 * 设置指定name的元素是否可用
 * @param {name属性} domName
 * @param {不可用(1)或者可用(0)} val
 */
function disableDomByName(domName,val)
{
	var obj = document.getElementsByName(domName);
	var len = obj.length;
	if(len>0){		
		if(isIE){
				for(var i=0;i<len;i++){
					if(_notBindDisabled(obj[i]))
						obj[i].disabled = val;
				}
		}else{
			for(var i=0;i<len;i++){
				if(obj[i].getAttribute('userSetDisabled')==null||obj[i].getAttribute('userSetDisabled')!='disabled')
					obj[i].disabled = val;
			}
		}
	}
}


/**
 * 移除指定节点的特殊显示
 */
function removeHightLight(obj)
{
	obj.className = obj.className.replace('highlight','').replace(/\s{2,}/g,' ');
}

/**
 * 设置指定节点的特殊显示
 * @param {行对象} obj
 */
function addHightLight(obj)
{
	obj.className = obj.className+' highlight';
}


/**
 * 阻止js事件的冒泡
 */
function stopBubble(e){ 
	 //一般用在鼠标或键盘事件上 
     if(!isIE){ 
     	e.preventDefault();
     	e.stopPropagation();
     }else{ 
         //IE取消冒泡事件 
         window.event.cancelBubble = true; 
     } 
 }
 
/**
 * 得到选择的id行的id
 */
function getAllCheckValue(){
	var chks = document.getElementsByName('_chks');
	var ans = '';
	var len = chks.length;
	for(i=0;i<len;i++)
	{
		if(chks[i].checked)
		{
			ans += chks[i].value+',';
		}
	}
	ans = ans.substring(0,ans.length-1);  
	return ans;
}

/**
 * 动态创建一个radio的方法
 * @param {附属的上级dom元素} el
 * @param {是否可用} dis
 * @param {样式文本} sty
 * @param {名字属性} name
 * @param {值属性} val
 * @param {单击事件} click
 * @param {innerText值} innertext
 * @param {样式名} cssname
 * @param {是否默认选择} chk
 */
function createRadio(el,dis,sty,name,val,click,innertext,cssname,chk){
	var rd ; 
	//下面的方式在ie下面好用，而且创建出来的radio可以被选择。而在hh不行。
	if(isIE)
	{
		rd = document.createElement(["<input type='radio' name='",name,"' style='",sty,"' value='",val
			,"' ",dis," class='",cssname,"' userSetDisabled='",dis,"' ",chk,">"].join(''));
	}else{
		rd = document.createElement("input");
		rd.setAttribute('type','radio');
		rd.disabled = dis;
		rd.checked = chk;
		rd.setAttribute('style',sty);
		rd.setAttribute('name',name);
		rd.setAttribute('userSetDisabled',dis);
		rd.setAttribute('value',val);
	}
	if(click)
		rd.onclick = click;
	el.appendChild(rd);
	if(innertext!='')
		el.appendChild(document.createTextNode(innertext));
}

/**
 * 动态创建一个多选按钮
 * @param {附属的上级dom元素} el
 * @param {是否可用} dis
 * @param {样式文本} sty
 * @param {名字属性} name
 * @param {值属性} val
 * @param {单击事件} click
 * @param {innerText值} innertext
 * @param {样式名} cssname
 * @param {是否默认选择} chk
 */
function createCheckbox(el,dis,sty,name,val,click,innertext,cssname,chk){
	var rd ; 
	//下面的方式在ie下面好用，而且创建出来的checkbox可以被选择。而在hh不行。
	if(isIE)
	{
		rd = document.createElement(["<input type='checkbox' name='",name,"' style='",sty,"' value='",val
			,"' ",dis," class='",cssname,"' userSetDisabled='",dis,"' ",chk,">"].join(''));
	}else{
		rd = document.createElement("input");
		rd.setAttribute('type','checkbox');
		rd.disabled = dis;
		rd.checked = chk;
		rd.setAttribute('style',sty);
		rd.setAttribute('name',name);
		rd.setAttribute('userSetDisabled',dis);
		rd.setAttribute('value',val);
	}
	if(click)
		rd.onclick = click;
	el.appendChild(rd);
	if(innertext!='')
		el.appendChild(document.createTextNode(innertext));
}

/**
 * 动态创建hidden。
 * @param {id值} id
 * @param {名字值} name
 * @param {val属性} val
 * @return {}
 */
function createHidden(id,name,val){
	var hid;
	if(isIE){
		hid = document.createElement(["<input type='hidden' id='",id,"' name='",name,"' value='",val,"'>"].join(''));
	}else{
		hid = document.createElement("hidden");
		hid.setAttribute('id',id);
		hid.setAttribute('name',name);
		hid.setAttribute('value',val);
	}
	return hid;
}
/**
 * 创建一个Img元素
 * @param {图片来源} imgsrc
 */
function createImg(imgsrc)
{
	var node = document.createElement('img');
	node.setAttribute('src',imgsrc);
	return node;
}

/**
 * 得到指定的元素id对应的节点.
 * @param {} id
 */
function _$(id){
	return document.getElementById(id);
}

Function.prototype.attachAfter = function(closure,functionOwner) {
	var _this = this;
	return function() {
		this.apply(functionOwner,arguments);
		closure();
	}
}
function attachEvent (obj , eventName,handler) {
	obj[eventName]=(obj[eventName]||function(){}).attachAfter(handler,obj);
}