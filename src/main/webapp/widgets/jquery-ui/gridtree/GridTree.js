jQuery.noConflict(); 
/**
 * 构造函数里面定义一些常用的表格树的内部变量.
 */
function GridTree() {
	// 主要的json数据,来自于参数
	var tc;
	// 标题列数据
	var headColumns;
	// 父亲到孩子映射关系（key：父亲id，value：孩子id的集合）
	var parentToChildMap;
	// 孩子到父亲的映射关系（key:孩子id，value：父亲id），方便找到节点的路径而设置这个变量
	var childToFatherMap;
	// 节点id,节点对象映射关系
	var nodeMap;
	// 父亲节点id集合
	var parents;
	// 第一层的节点集合
	var firstLevelNodes;
	// 第一层节点的父亲的集合
	var firstLevelParentIds;
	// 分页的相关信息
	var pagingInfo;
	// 是否合法的数据格式(默认是合法的。)
	var _isValid;
	//关于节点id和所属级别的序列的映射关系。（用于自动生成序列信息）
	var _idToNumMap;
	//选择的样式,默认为ectable样式即2.
	var _style;
	//上次选中的行id
	var _lastSelectRowId;
	// 是否后台分页模式
	var _serverPagingMode;
	// 支持的列的显示形式
	var TEXTBOX ;
	var SELECT ;
	var CHECKBOX ;
	var RADIOBOX ;
	var HTML ;
	var isIE ;//是否ie
	//要进行渲染的div
	var elct;
	//用户定义的事件,这里进行统计.
	var _usHandler;
	//标识用户是否定义了行的click事件
	var _usnoclick;
	//标识用户是否定义了行当mouseover事件
	var _usnomsover;
	//标识用户是否定义了mouseout事件
	var _usnomsout;
}

/**
 * 根据数据在指定的div形成表格树
 */
GridTree.prototype.makeTable = function() {
	if (!elct) {
		alert('出错:要渲染div不存在!');
		return false;
	}
	if (!_isValid) {
		return false;
	}

	var tableTree = document.createElement("table");
	if (tc.height != null) {
		tableTree.style.height = tc.height;
	}
	if (tc.width == null)
		tableTree.style.width = '100%';
	else {
		tableTree.style.width = tc.width;
	}
	tableTree.id = '' + tc.tableId;
	tableTree.className = 'tableRegion';
	/** ********** 根据json数据分析数据,得到父亲节点的集合,以及父亲节点和孩子节点的映射关系. */
	if (typeof tc.data != 'undefined') {
		GridTree.prototype._makeTable(tableTree, tc.data);
	} else {
		if (_serverPagingMode == 'client') {
			jQuery.ajax({
						type : "POST",
						url : tc.dataUrl,
						async : true,
						data : ['idColumn=', tc.idColumn, "&parentColumn=",
								tc.parentColumn, "&gtlimit=", tc.pageSize,
								"&pageingMode=client"].join(''),
						success : function(msg) {
							if (msg != null && msg != "") {
								try {
									// 将返回的json字符串转换为表格数据对象.
									eval(" tc.allDataInfoWithPageInfo=" + msg);
									var data = tc.allDataInfoWithPageInfo.data;
									if (typeof data == 'undefined') {
										data = tc.allDataInfoWithPageInfo;
									}
									// 验证输入的标示列的值是否在‘data’数组中存在
									var columnName = tc['idColumn'];
									if (typeof data[0][columnName] == 'undefined') {
										_isValid = false;
										alert("配置的属性[idColumn]值有误,请检查!");
										return;
									}
									// 验证输入的父级列的值是否在‘列属性’中存在
									var columnName = tc['parentColumn'];
									if (typeof data[0][columnName] == 'undefined') {
										_isValid = false;
										alert("配置的属性[parentColumn]值有误,请检查!");
										return;
									}
									GridTree.prototype._makeTable(tableTree,
											data);
								} catch (e) {
									GridTree.prototype
											._makeTableWithNoData(tableTree);
								}
							} else {
								elct.innerHTML = "没有数据.";
							}
						}
					});
		} else {
			jQuery.ajax({
						type : "POST",
						// 后台分页的时候来测试的链接
						url : tc.dataUrl,
						async : true,
						data : ['idColumn=', tc.idColumn, "&parentColumn=",
								tc.parentColumn, "&gtlimit=", tc.pageSize]
								.join(''),
						success : function(msg) {
							if (msg != null && msg != "") {
								try {
									// 如果是后台分页的话,json字符串中必须含有分页相关的信息.
									// 下面先看一下传来的json数组中的一行主要数据里面，是不是设置了idColumn的列和parentColumn的列。
									eval(" tableDataArr=" + msg);
									var data = tableDataArr.data;
									// 验证输入的标示列的值是否在‘data’数组中存在
									var columnName = tc['idColumn'];
									if (typeof data[0][columnName] == 'undefined') {
										_isValid = false;
										alert("配置的属性[idColumn]值有误,请检查!");
										return;
									}
									// 验证输入的父级列的值是否在‘列属性’中存在
									var columnName = tc['parentColumn'];
									if (typeof data[0][columnName] == 'undefined') {
										_isValid = false;
										alert("配置的属性[parentColumn]值有误,请检查!");
										return;
									}
									GridTree.prototype._makeTable(tableTree,
											msg);
								} catch (e) {
									GridTree.prototype
											._makeTableWithNoData(tableTree);
								}
							} else {
								elct.innerHTML = "没有数据.";
							}
						}
					});
		}
	}
	// 如果配置了表格树为不可用状态,就把表格树中的全部文本域等全部设置为不可用.
	if (tc.disabeld) {
		this.setDisabled(true);
	}
}

/**
 * 看指定节点的孩子
 * nodeid:节点
 * return:孩子节点id组成的数组.含有前缀'_node'
 */
GridTree.prototype.seeChildren = function(nodeid)
{
	var ansArr = parentToChildMap.get(nodeid);
	return ansArr;
}

/**
 * 判断一个节点是不是父亲节点（是父亲节点就返回'1',否则返回‘0’） nid：要判断的节点的id
 */
GridTree.prototype.isParent = function(nid) {
	if (findInArray(parents, nid) != -1) {
		return '1';
	} else
		return '0';
}

/**
 * 全部展开
 */
GridTree.prototype.expandAll = function() {	
	// 找打全部的没有展开的一级节点,全部点击打开
	if (document.all) {
		jQuery('#' + tc.tableId + ' tr[_open=false]').each(
				function(i) {
					var nodeId = this.id.replace('_node', '');
					// 下面要加这个判断条件!如果去掉的话,发现在设置了默认打开全部的时候,不会自动展开第三级的树...原因自己仔细想一想！！
					if (this._open == 'false')
						jQuery('#img_' + nodeId)[0].fireEvent('onclick');
				});
	} else {
		jQuery('#' + tc.tableId + ' tr[_open=false]').each(
				function(i) {
					var nodeId = this.id.replace('_node', '');
					var evt = document.createEvent("MouseEvents");
					evt.initEvent("click", true, true);
					_$('img_' + nodeId)
							.dispatchEvent(evt);
				});
	}
}

/**
 * 关闭全部的表格树节点
 */
GridTree.prototype.closeAll = function() {
	// 找打全部的没有展开的一级节点,全部点击打开
	if (document.all) {
		jQuery('#' + tc.tableId + ' tr[_open=true]').each(
				function(i) {
					var nodeId = this.id.replace('_node', '');
					if (this._open == 'true')
						jQuery('#img_' + nodeId)[0].fireEvent('onclick');
				});
	} else {
		jQuery('#' + tc.tableId + ' tr[_open=true]').each(
				function(i) {
					var nodeId = this.id.replace('_node', '');
					var evt = document.createEvent("MouseEvents");
					evt.initEvent("click", true, true);
					_$('img_' + nodeId)
							.dispatchEvent(evt);
				});
	}
}

/**
 * 设置表格树的编辑状态.
 * @param {状态} val(true则全部禁用或者false全部启用)
 */
GridTree.prototype.setDisabled = function(val){
	//如果是true就全部禁用.
	if(val){
		jQuery('.tableRegion input').attr('disabled','true');
		jQuery('.tableRegion button').attr('disabled','true');
		jQuery('.tableRegion select').attr('disabled','true');
	}
	//否则全部启用.除非那些设置了不可用属性的.
	else{
		if (isIE) {
			jQuery('.tableRegion input').each(function(i) {
				if (this.userSetDisabled != 'disabled'){
					jQuery(this).removeAttr('disabled');
				}
			});
			jQuery('.tableRegion button').each(function(i) {
				if (this.userSetDisabled != 'disabled') {
					jQuery(this).removeAttr('disabled');
				}
			});
			jQuery('.tableRegion select').each(function(i) {
				if (this.userSetDisabled != 'disabled') {
					jQuery(this).removeAttr('disabled');
				}
			});
		} else {
			//发现在火狐中的属性名周末成了小写了!!厉害。。。
			jQuery('.tableRegion input').each(function(i) {
				if (this.usersetdisabled != 'disabled') {
					jQuery(this).attr('disabled', false);
				}
			});
			jQuery('.tableRegion button').each(function(i) {
				if (this.usersetdisabled != 'disabled') {
					jQuery(this).attr('disabled', false);
				}
			});
			jQuery('.tableRegion select').each(function(i) {
				if (this.usersetdisabled != 'disabled') {
					jQuery(this).attr('disabled', false);
				}
			});
			jQuery('.tableRegion input[usersetdisabled=disabled]').each(function(i){
				this.disabled = true;
			});
			jQuery('.tableRegion button[usersetdisabled=disabled]').each(function(i){
				this.disabled = true;
			});
			jQuery('.tableRegion select[usersetdisabled=disabled]').each(function(i){
				this.disabled = true;
			});
		}
	}
}


/**
 * 得到指定的节点的父级节点里面的_node_num属性数组
 * @param {节点id} nid
 * return 返回父亲节点的_node_num的属性集合
 */
GridTree.prototype.getSelectedRow = function() {
	return _$(_lastSelectRowId);
}

/**
 * 得到指定的节点的父级节点里面的_node_num属性数组
 * @param {节点id} nid
 * return 返回父亲节点的_node_num的属性集合
 */
/*GridTree.prototype.getNodeNumberInSameLevel = function(nid) {
	var allParents = this.getNodePath(nid);
	var allParentNum = [];
	for(var i=allParents.length-1;i>=0;i++){
		var node = this.getNodeById(allParents[i]);
		if(node)
			allParentNum.push(node._node_num);
	}
	return allParentNum;
}

/**
 * 根据节点id得到行对象
 * @param {节点id,不含有前缀} nid
 */
GridTree.prototype.getRowObjById = function(nid){
	return _$('_node'+nid);
}

/**
 * 得到指定节点的父亲的路径。 nid：节点id 返回其父亲，祖父一直到顶层节点的id组成的一个数组
 */
GridTree.prototype.getNodePath = function(nid) {
	// 所有的父亲id组成的集合
	var allParents = [];
	while (1) {
		var pId;
		pId = childToFatherMap.get(nid);	
		if(pId!=null){
			allParents.push(pId.replace('_node',''));
			if (findInArray(parents, pId) != -1) {
				nid = pId;
			} else {
				break;
			}
		}else{
			break;
		}
	}
	return allParents.reverse();
}

/**
 * 点击一个图标,打开其子节点
 */
GridTree.prototype.openChildrenTable = function(imgid,node,e)
{
	var _id = imgid.replace('img_','').replace('_node','');
	var img = _$('img_'+_id);
	img.src = tc.closeImg;
	img.onclick = function(ee){
		GridTree.prototype.closeChildrenTable(imgid,node,ee)
	};
	//下面保证了每次都顺序都是不变的.不可以简单的使用:jQuery('tr[_node_parent='+_id+']').show().insertAfter(jQuery('tr[id='+_id+']'));
	var _preid = _id;
	jQuery('tr[_node_parent=_node'+_id+']').each(function(i){
		if(this._node_isparent=='1')
		{
			GridTree.prototype.openChildrenTable(this.id,this,e);
		}
		//在ie下面就调用下面的语句，在火狐下面不用执行下面一句。。
		if(isIE)
			this.style.display = 'inline';
		//在火狐下面不执行下面的语句也可以！！
		else{
			this.style.display = '';
		}
	});
	_$('_node'+_id)._open = 'true';
	jQuery('tr[_node_parent=_node'+_id+']').show();
	this._setColor(_$(tc.tableId));
	if(isIE)
		stopBubble();
	else{
		stopBubble(e);
	}
}

/**
 * 点击一个图标,关闭其子节点
 * @param {图标id} imgid
 * @param {} node
 */
GridTree.prototype.closeChildrenTable = function(imgid,node,e)
{
	var _id = imgid.replace('img_','').replace('_node','');
	var img = _$('img_'+_id);
	img.src = tc.openImg;
	img.onclick = function(ee){
			GridTree.prototype.openChildrenTable(imgid,node,ee)
	};
	_$('_node'+_id)._open = 'false';
	jQuery('tr[_node_parent=_node'+_id+']').each(function(i){
		if(this._node_isparent=='1')
		{
			GridTree.prototype.closeChildrenTable(this.id,this,e);
		}
		this.style.display = 'none';
	});
	this._setColor(_$(tc.tableId));
	if(isIE)
		stopBubble();
	else{
		stopBubble(e);
	}
}

/**
 * 选择树节点.
 * @param {节点id,不含有前缀} nodeId
 */
GridTree.prototype.select = function(nodeId)
{
	var obj = jQuery('input[name=_chks][value='+nodeId+']')[0];
	if(isIE){
		if(_notBindDisabled(obj))
		{
			jQuery(obj).attr('checked','true');	
		}		
		stopBubble();
	}else{
		if (obj.getAttribute('userSetDisabled') == null
				|| obj.getAttribute('userSetDisabled') != 'disabled') {
			jQuery(obj).attr('checked', 'true');
		}		
		stopBubble(window.Event);
	}
}