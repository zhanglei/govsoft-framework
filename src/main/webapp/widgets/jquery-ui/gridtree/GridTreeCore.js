
GridTree.prototype._initData=function(){parentToChildMap=new HashMap();nodeMap=new HashMap();firstLevelNodes=[];firstLevelParentIds=[];childToFatherMap=new HashMap();_idToNumMap=new HashMap();parents=[];_usHandler=[];_lastSelectRowId="";pagingInfo={};TEXTBOX='textbox';SELECT='select';CHECKBOX='checkbox';RADIOBOX='radiobox';HTML='html';_usnoclick=0,_usnomsover=0,_usnomsout=0;if(document.all){isIE=true;}else{isIE=false;}}
GridTree.prototype._addEventToObj=function(obj,funObj){if(isIE){for(eventName in funObj){var fun=funObj[eventName];obj.attachEvent(eventName,function(){fun(obj);});}}else{for(eventName in funObj){var fun=funObj[eventName];var len=eventName.length;var newfun=fun.bind(null,obj);obj.addEventListener(eventName.substring(2,len),newfun,false);}}}
GridTree.prototype._getSelectRowId=function(){return _lastSelectRowId;}
GridTree.prototype._chooseParentNode=function(checkboxDom){var nodeId=checkboxDom.value;if(checkboxDom.checked){while(1==1){var parentId=_$('_node'+nodeId)._node_parent;if(_$(parentId)!=null)
{nodeId=parentId.replace('_node','');var obj=_$('_chk'+nodeId).firstChild;if(_notBindDisabled(obj))
obj.checked=1;}else{break;}}}}
GridTree.prototype._chooseChildrenNode=function(checkboxDom){var nodeId=checkboxDom.value;if(checkboxDom.checked){this._chooseAllChildrenNode('_node'+nodeId,true);}}
GridTree.prototype._cancleChildrenNode=function(checkboxDom){var nodeId=checkboxDom.value;if(!checkboxDom.checked){this._chooseAllChildrenNode('_node'+nodeId,false);}}
GridTree.prototype._chooseAllChildrenNode=function(nodeId,v){var children=this.seeChildren(nodeId);if(children){var len=children.length;for(var i=0;i<len;i++){var nodeId=children[i].replace('_node','');var obj=_$('_chk'+nodeId).firstChild;if(_notBindDisabled(obj))
obj.checked=v;if(findInArray(parents,children[i])!=-1)
{this._chooseAllChildrenNode(children[i],v);}}}}
GridTree.prototype._cancelFaher=function(checkboxDom){var nodeId=checkboxDom.value;if(!checkboxDom.checked){while(1==1){var parentId=_$('_node'+nodeId)._node_parent;if(_$(parentId))
{nodeId=parentId.replace('_node','');if(!this._anyChildChoosed(parentId))
{var obj=_$('_chk'+nodeId).firstChild;if(_notBindDisabled(obj))
obj.checked=0;}}else{break;}}}}
GridTree.prototype._anyChildChoosed=function(parentId){var children=this.seeChildren(parentId);var len=children.length;for(var i=0;i<len;i++){var nodeId=children[i].replace('_node','');if(_$('_chk'+nodeId).firstChild.checked)
{return true;}}
return false;}
GridTree.prototype._createContent=function(showTypeDesc,onerow,dataColumn,idValue){var tp=showTypeDesc.inputtype;var cssName=showTypeDesc.style;var allvalues=showTypeDesc.values;var texts=[];var value=onerow[dataColumn];var inputName=showTypeDesc.nameId+idValue;var setVisible=showTypeDesc.visibledIndex;var setDisabled=showTypeDesc.disabledIndex;var node=document.createElement("div");if(setVisible==null||onerow[setVisible]+''=='1'){if(onerow[setDisabled]+''=='1'){setDisabled='disabled';}else{setDisabled='';}
node.style.textAlign='center';if(tp==TEXTBOX){node.innerHTML=["<input type='text' class='",cssName,"'  value='",value,"' name='",inputName,"' ",setDisabled," userSetDisabled='",setDisabled,"'/>"].join('');}else if(tp==HTML){texts=showTypeDesc.htmlStr;node.setAttribute('id',inputName);node.innerHTML=texts.replace(/[$]/g,value);}
else if(tp==SELECT){texts=showTypeDesc.texts;var ans=[];if(isIE)
ans.push(["<select class='",cssName,"' name='",inputName,"' onclick='stopBubble(event);'",setDisabled," userSetDisabled='",setDisabled,"'/>"].join(''));else
ans.push(["<select class='",cssName,"' name='",inputName,"' onclick='stopBubble(event);'",setDisabled," userSetDisabled='",setDisabled,"'/>"].join(''));for(var i=0;i<allvalues.length;i++){if(allvalues[i]==value){ans.push(["<option value='",allvalues[i],"' selected>",texts[i],"</option>"].join(''));}
else{ans.push(["<option value='",allvalues[i],"'>",texts[i],"</option>"].join(''));}}
ans.push("</select>");node.innerHTML=ans.join('');}
else if(tp==RADIOBOX){texts=showTypeDesc.texts;node.appendChild(createHidden(inputName,inputName,value));var f=function(){if(showTypeDesc.onclick)
showTypeDesc.onclick();_$(inputName).value=this.value;};for(var i=0;i<allvalues.length;i++){if(value==allvalues[i]){createRadio(node,setDisabled,'','rd_'+inputName,allvalues[i],f,texts[i],cssName,'checked');}else{createRadio(node,setDisabled,'','rd_'+inputName,allvalues[i],f,texts[i],cssName,'');}}}
else if(tp==CHECKBOX){texts=showTypeDesc.texts;var chArry=value.split(',');var f=function(e){if(showTypeDesc.onclick)
showTypeDesc.onclick();};for(var i=0;i<allvalues.length;i++){if(findInArray(chArry,allvalues[i])!=-1){createCheckbox(node,setDisabled,'',inputName,allvalues[i],f,texts[i],cssName,'checked');}else{createCheckbox(node,setDisabled,'',inputName,allvalues[i],f,texts[i],cssName,'');}}}else{node.innerHTML='<font color="red">配置表格树的列类型出错.</font>';}}
return node;}
GridTree.prototype._resetPageBtns=function(){var f1t=_$("_firstPageBtn"),pre=_$("_prePageBtn"),lst=_$("_lastPageBtn"),nex=_$("_nextPageBtn"),tpg=_$("_toPageBtn");if(pagingInfo.pagesCount==1||pagingInfo.pagesCount==0){rmCss(f1t,"firstPage");rmCss(pre,"prevPage");rmCss(lst,"lastPage");rmCss(nex,"nextPage");adCss(f1t,"disFirstPage");adCss(pre,"disPrevPage");adCss(lst,"disLastPage");adCss(nex,"disNextPage");disableDom(f1t,1);disableDom(pre,1);disableDom(lst,1);disableDom(nex,1);if(pagingInfo.pagesCount==0){rmCss(tpg,"nextPage");adCss(tpg,"disFirstPage");disableDom('_toPageBtn',1);}}else{if(pagingInfo.currentPage==1){rmCss(f1t,"firstPage");rmCss(pre,"prevPage");rmCss(lst,"disLastPage");rmCss(nex,"disNextPage");adCss(f1t,"disFirstPage");adCss(pre,"disPrevPage");adCss(lst,"lastPage");adCss(nex,"nextPage");disableDom(f1t,1);disableDom(pre,1);disableDom(lst,0);disableDom(nex,0);}
else if(pagingInfo.currentPage==pagingInfo.pagesCount){rmCss(lst,"lastPage");rmCss(nex,"nextPage");rmCss(f1t,"disFirstPage");rmCss(pre,"disPrevPage");adCss(lst,"disLastPage");adCss(nex,"disNextPage");adCss(f1t,"firstPage");adCss(pre,"prevPage");disableDom(f1t,0);disableDom(pre,0);disableDom(lst,1);disableDom(nex,1);}
else{rmCss(f1t,"disFirstPage");rmCss(pre,"disPrevPage");rmCss(lst,"disLastPage");rmCss(nex,"disNextPage");adCss(f1t,"firstPage");adCss(pre,"prevPage");adCss(lst,"lastPage");adCss(nex,"nextPage");disableDom(f1t,0);disableDom(pre,0);disableDom(lst,0);disableDom(nex,0);}}}
GridTree.prototype._showMsg=function(v)
{divNode=_$("_msgDiv");var table=_$('_trhead');if(v){divNode.innerText='正在提交...';divNode.style.top=table.offsetTop+10;divNode.style.left=table.offsetLeft+table.offsetWidth/9*8;divNode.style.display='inline';}
else
divNode.style.display='none';}
GridTree.prototype._createMsgDiv=function(){msgDiv=document.createElement("div");msgDiv.setAttribute('id','_msgDiv');msgDiv.className='msgdiv';msgDiv.appendChild(document.createTextNode("正在提交..."));document.body.appendChild(msgDiv);}
GridTree.prototype.loadData=function(obj){this._initData();tc=obj;elct=_$(tc.el);headColumns=[];_isValid=true;this._checkData(tc,'columnModel');this._checkData(tc,'idColumn');this._checkData(tc,'parentColumn');this._checkData(tc,'tableId');this._checkData(tc,'el');if(tc.openImg==null){tc.openImg='./images/plus.gif';}
if(tc.closeImg==null){tc.closeImg='./images/minus.gif';}
if(tc.blankImg==null){tc.blankImg='./images/blank.gif';}
if(tc.noparentImg==null){tc.noparentImg='./images/leaf.gif';}
if(tc.lonelyImg==null){tc.lonelyImg='./images/tv-item.gif';}
if(tc.pageBarId==null){tc.pageBarId='pageBarTable';}
if(tc.pageBar==true&&tc.pageSize==null){tc.pageSize=10;}
else if(tc.pageBar==null||tc.pageBar==false){tc.pageSize=-1;}
if(tc.styleOption==null||(tc.styleOption+'')!='2'){_style=2;if(tc.ectableCssFile==null)
importcss("GridTree2.css");else{importcss(tc.ectableCssFile);}}else{_style=tc.styleOption;if(tc.extCssFile==null)
importcss("GridTree.css");else{importcss(tc.extCssFile);}}
if(tc.rowCount==true&&tc.countColumnDesc==null){tc.countColumnDesc='序列';}
if(!(tc.checkOption+''=="1"&&tc.checkOption+''=="2")&&tc.checkColumnDesc==null){tc.checkColumnDesc='请选择';}
if(typeof tc.dataUrl!='undefined'){tc.pageAtServer=true;_serverPagingMode='server';this._createMsgDiv();}else{_serverPagingMode='client';}
if(tc.showMenu==true){}
if(tc.debug==true){this._createDebugDiv();}}
GridTree.prototype._makeTableWithNoData=function(tree){pagingInfo.allCount=0;pagingInfo.pageSize=0;pagingInfo.pagesCount=0;pagingInfo.currentPage=0;this._addTitleHead(tree);elct.innerHTML='';if(tc.pageBar){this._makePageBar(tree,1);}
elct.appendChild(tree);this._resetPageBtns();}
GridTree.prototype._createMenuDiv=function()
{var menuDiv=document.createElement("div");menuDiv.setAttribute('id','_menuDiv');menuDiv.className='menuDiv';document.body.appendChild(menuDiv);menuDiv.innerHTML='<iframe style="position: absolute; z-index: -1; '+'width: 100%; height: 100%; top: 0; left: 0; scrolling: no;" '+'frameborder="0" id="menuFrame"></iframe><div class="menuContent" id="_menuContentDiv"></div>';}
GridTree.prototype._getSplitLine=function(){return"<table cellspacing=0 cellpadding=0 width=400 height=1 bgcolor=008000><tr><td></table>";}
GridTree.prototype._showMenu=function(e){var tdCom;var mX=window.event?event.clientX:e.clientX;var mY=window.event?event.clientY:e.clientY;if(document.all)
tdCom=window.event.srcElement;else
tdCom=e.target;_lastSelectRowId=tdCom.parentNode.id;this._setMenu('_menuContentDiv',tc.contextMenu);var mndiv=_$('_menuDiv');var offsetWid=jQuery('#_menuDiv').width();var offsetHei=mndiv.clientHeight;var clientWid=document.body.clientWidth;var clientHei=document.body.clientHeight;var left=(mX+offsetWid>clientWid)?(mX-offsetWid):(mX-3);var top=(mY+offsetHei>clientHei)?(mY-offsetHei):(mY-3);if(isIE){mndiv.style.left=left;mndiv.style.top=top;}else{mndiv.setAttribute('style','left:'+left+'px;top:'+top+'px');}
_$('_menuDiv').style.visibility="visible";}
GridTree.prototype._setMenu=function(domId,menuData){var menu=_$(domId);var str=[];if(menu.innerHTML==''){var len=menuData.length;if(isIE){for(var i=0;i<len;i++){var obj=menuData[i];var aDiv=document.createElement("div");if(typeof obj=='string'&&obj.toLowerCase()=='splitline'){aDiv.innerHTML='<hr>';}else if(typeof obj=='object'){var aspan=document.createElement('span');aspan.style.cssText="cursor:pointer";aspan.setAttribute('class',"font-size:1px;");aspan.onclick=obj.onclick;aspan.innerText=obj.text;aDiv.appendChild(aspan);}
aDiv.onmouseout=function(){removeHightLight(this);};aDiv.onmouseover=function(){addHightLight(this);};menu.appendChild(aDiv);}}else{for(var i=0;i<len;i++){var obj=menuData[i];var aDiv=document.createElement("div");if(typeof obj=='string'&&obj.toLowerCase()=='splitline'){aDiv.innerHTML='<hr>';}else if(typeof obj=='object'){var aspan=document.createElement('span');aspan.setAttribute("class","menuContentDiv");aspan.onclick=obj.onclick;aspan.appendChild(document.createTextNode(obj.text));aDiv.appendChild(aspan);}
aDiv.onmouseout=function(){removeHightLight(this);};aDiv.onmouseover=function(){addHightLight(this);};menu.appendChild(aDiv);}}}}
GridTree.prototype._createDebugDiv=function()
{var debugDiv=document.createElement("div");debugDiv.setAttribute('id','_debugDiv');debugDiv.className='debugdiv';document.body.appendChild(debugDiv);}
GridTree.prototype._checkData=function(obj,dataColumn){if(_isValid){if(typeof obj[dataColumn]=='undefined'){_isValid=false;alert("请配置必须的属性["+dataColumn+"]!");return;}
if(typeof tc.data!='undefined'){if(dataColumn=='idColumn')
{var columnName=obj['idColumn'];if(typeof tc.data[0][columnName]=='undefined'){_isValid=false;alert("配置的属性[idColumn]值有误,请检查!");return;}}
else if(dataColumn=='parentColumn')
{var columnName=obj['parentColumn'];if(typeof tc.data[0][columnName]=='undefined'){_isValid=false;alert("配置的属性[parentColumn]值有误,请检查!");return;}}}
_isValid=true;}}
GridTree.prototype._makeTable=function(tree,data)
{var o=new Date();if(_serverPagingMode=='client'){this._analyseData(data);}
else{this._serverAnalyseData(data);}
this._initPageInfo();this._addTitleHead(tree);if(tc.pageBar!=true){this._showTable(tree,0,firstLevelNodes.length);}
else{if(tc.pageSize>firstLevelNodes.length)
this._showTable(tree,0,firstLevelNodes.length);else
this._showTable(tree,0,tc.pageSize);this._makePageBar(tree,tree.rows.lenght);}
elct.innerHTML='';this._setColor(tree);elct.appendChild(tree);if(tc.expandAll){this.expandAll();}
this._resetPageBtns();var gotime=new Date()-o;this._wirteDebug('第一次显示前台消耗时间:'+gotime);if(tc.disabled)
this.setDisabled(1);}
GridTree.prototype._initPageInfo=function()
{if(_serverPagingMode=='client'){pagingInfo.allCount=firstLevelNodes.length;pagingInfo.pageSize=tc.pageSize;pagingInfo.pagesCount=Math.ceil(pagingInfo.allCount/pagingInfo.pageSize*1.0);pagingInfo.currentPage=1;}else{pagingInfo.allCount=tc.allDataInfoWithPageInfo.allCount;pagingInfo.pageSize=tc.allDataInfoWithPageInfo.pageSize;pagingInfo.pagesCount=Math.ceil(pagingInfo.allCount/pagingInfo.pageSize*1.0);pagingInfo.currentPage=1;}}
GridTree.prototype._analyseData=function(data)
{var o=new Date();var len=data.length;for(var i=0;i<len;i++){var _id=data[i][tc.idColumn];var _parent=data[i][tc.parentColumn];if(findInArray(parents,'_node'+_parent)==-1)
parents.push('_node'+_parent);if(parentToChildMap.containsKey('_node'+_parent)){var arr=parentToChildMap.get('_node'+_parent);arr.push('_node'+_id);parentToChildMap.put('_node'+_parent,arr);}else{var arr=[];arr.push('_node'+_id);parentToChildMap.put('_node'+_parent,arr);}
childToFatherMap.put('_node'+_id,'_node'+_parent);nodeMap.put('_node'+_id,data[i]);}
firstLevelParentIds=removeArrayFromOtherArray(parents,nodeMap.keys());parents=removeArrayFromOtherArray(parents,firstLevelParentIds);for(var ii=0;ii<firstLevelParentIds.length;ii++){firstLevelNodes=firstLevelNodes.concat(parentToChildMap.get(firstLevelParentIds[ii]));}
var gotime=new Date()-o;this._wirteDebug('前台自行分析消耗时间:'+gotime);}
GridTree.prototype._wirteDebug=function(msg){if(tc.debug==1){var dbg=_$('_debugDiv');if(dbg.innerHTML!='')
dbg.innerHTML+='<br>'+msg;else{dbg.innerHTML=msg;}
dbg.scrollTop=dbg.scrollHeight;}}
GridTree.prototype._serverAnalyseData=function(msg){var o=new Date();eval("tc.allDataInfoWithPageInfo="+msg);parents=tc.allDataInfoWithPageInfo.parents;firstLevelNodes=tc.allDataInfoWithPageInfo.firstLevelNodes;parentToChildMap=jsonMapToJsHashMap(tc.allDataInfoWithPageInfo.parentToChildMap);nodeMap=jsonMapToJsHashMap(tc.allDataInfoWithPageInfo.idToNodeMap);childToFatherMap=jsonMapToJsHashMap(tc.allDataInfoWithPageInfo.idToParent);var gotime=new Date()-o;this._wirteDebug('前台分析后台的json串耗时:'+gotime);}
GridTree.prototype._pagingServerMakeTable=function(tree,msg)
{eval(" tc.allDataInfoWithPageInfo="+msg);var data=tc.allDataInfoWithPageInfo.data;this._initData();this._analyseData(data);pagingInfo.currentPage=tc.allDataInfoWithPageInfo.currentPage;pagingInfo.allCount=tc.allDataInfoWithPageInfo.allCount;pagingInfo.pageSize=tc.allDataInfoWithPageInfo.pageSize;pagingInfo.pagesCount=Math.ceil(pagingInfo.allCount/pagingInfo.pageSize*1.0);this._showTable(tree,0,firstLevelNodes.length+1);this._resetPageBtns();this._setColor(tree);elct.appendChild(tree);if(tc.expandAll){this.expandAll();}}
GridTree.prototype._newPagingServerMakeTable=function(tree,msg)
{this._initData();this._serverAnalyseData(msg);pagingInfo.currentPage=tc.allDataInfoWithPageInfo.currentPage;pagingInfo.allCount=tc.allDataInfoWithPageInfo.allCount;pagingInfo.pageSize=tc.allDataInfoWithPageInfo.pageSize;pagingInfo.pagesCount=Math.ceil(pagingInfo.allCount/pagingInfo.pageSize*1.0);this._showTable(tree,0,firstLevelNodes.length+1);this._resetPageBtns();this._setColor(tree);elct.appendChild(tree);if(tc.expandAll){this.expandAll();}}
GridTree.prototype._setColor=function(tableTree){var allRows;if(tableTree.tBodies[0])
allRows=tableTree.tBodies[0].rows;else{allRows=tableTree.rows;}
if(allRows.length==0)
allRows=tableTree.rows;var ans='';var num=1;var ids='';var len=allRows.length;for(var i=0;i<len;i++){var onerow=allRows[i];if(onerow.style.display!='none'&&onerow.id.indexOf('_node')!=-1){if(num++%2==1){rmCss(onerow,'TrEven');adCss(onerow,'TrOdd');}else{rmCss(onerow,'TrOdd');adCss(onerow,'TrEven');}
ids+=onerow.id+",";}}}
GridTree.prototype._addTitleHead=function(tableTree){var cms=tc.columnModel;var tableHeadRow=tableTree.createTHead();var newRow=tableHeadRow.insertRow(0);newRow.setAttribute('id','_trhead');if(tc.rowCount){var countCell=newRow.insertCell(0);countCell.className='tablehead';adCss(countCell,'countCell');countCell.id='countCell';countCell.style.width='5%';appendText(countCell,tc.countColumnDesc);}
if(tc.checkOption=='1'||tc.checkOption=='2'){var checkCell=newRow.insertCell(0);checkCell.className='tablehead';adCss(checkCell,'checkCell');checkCell.id='checkCell';checkCell.style.width='5%';if(tc.checkOption=='2'&&tc.allCheck)
{checkCell.innerHTML="<input type='checkbox' style='width:20px;border:0px;' id='_checkAll' onclick='GridTree.prototype._chooseAll()'>";}
else{appendText(checkCell,tc.checkColumnDesc);}}
var i=0;var lenlen=cms.length;for(var ii=0;ii<lenlen;ii++){var oneColumn=cms[ii];var newCell=newRow.insertCell(newRow.cells.length);if(tc.columnModel[i].width!=null&&tc.columnModel[i].width!='*')
newCell.style.width=tc.columnModel[i].width;i=i+1;newCell.className='tablehead';newCell.id=oneColumn.headerIndex;appendText(newCell,oneColumn.header);headColumns.push(oneColumn.headerIndex);}}
GridTree.prototype._chooseAll=function()
{if(_$('_checkAll').checked)
{_checkedAll("_chks",true);}
else{_checkedAll("_chks",false);}}
GridTree.prototype._getFirstIndexInThisPage=function(){var _firstIndex=0;if(tc.pageBar)
_firstIndex=(pagingInfo.currentPage-1)*pagingInfo.pageSize;return _firstIndex;}
GridTree.prototype._showTable=function(tableTree,startParentIndex,endParentIndex){jQuery('#'+tc.tableId+' tr[id]').each(function(i){if(this.id!='_trpagebar'&&this.id!='_trhead'){jQuery(this).remove();}});var rowCount=1;var lenlen=firstLevelNodes.length;for(var ind=startParentIndex;ind<endParentIndex&&ind<lenlen;ind++){var _parentId=firstLevelNodes[ind];var oneObj=nodeMap.get(_parentId);if(typeof oneObj=='string'){eval("oneObj="+oneObj);}
this._addOneRowByData(tableTree,rowCount,oneObj,1);rowCount=rowCount+1;addChildByParentNode(oneObj,2);}
function addChildByParentNode(parentNode,level){var _id=parentNode[tc.idColumn];var _parent=parentNode[tc.parentColumn];var _isP=GridTree.prototype.isParent('_node'+_id);var _children=parentToChildMap.get('_node'+_id);if(_children!=null){for(var i=0;i<_children.length;i++){var oneObj;oneObj=nodeMap.get(_children[i]);if(typeof oneObj=='string'){eval("oneObj="+oneObj);}
GridTree.prototype._addOneRowByData(tableTree,rowCount,oneObj,level);rowCount=rowCount+1;if(GridTree.prototype.isParent('_node'+oneObj[tc.idColumn])=='1'){addChildByParentNode(oneObj,level+1);}}}}}
GridTree.prototype._makePageBar=function(tableObj,index){var pageBar=document.createElement('table');pageBar.setAttribute('id',tc.pageBarId);pageBar.cellPadding='0px';pageBar.cellSpacing='0px';var pageBarTR=pageBar.insertRow(0);var firstCell=pageBarTR.insertCell(pageBarTR.cells.length);firstCell.setAttribute('id','firstPageCell');firstCell.innerHTML='<button onclick="GridTree.prototype._toFirstPage(event)" class="pagebarbtn disFirstPage" title="第一页" id="_firstPageBtn" disabled></button>';var preCell=pageBarTR.insertCell(pageBarTR.cells.length);preCell.setAttribute('id','prePageCell');preCell.innerHTML='<button onclick="GridTree.prototype._toPrePage()" class="pagebarbtn disPrevPage" title="前一页" id="_prePageBtn" disabled></button>';var afterCell=pageBarTR.insertCell(pageBarTR.cells.length);afterCell.setAttribute('id','nextPageCell');if(pagingInfo.pagesCount==1){afterCell.innerHTML='<button onclick="GridTree.prototype._toAfterPage()" class="pagebarbtn disNextPage" title="后一页" id="_nextPageBtn"></button>';}
else{afterCell.innerHTML='<button onclick="GridTree.prototype._toAfterPage()" class="pagebarbtn nextPage" title="后一页" id="_nextPageBtn"></button>';}
var lastCell=pageBarTR.insertCell(pageBarTR.cells.length);lastCell.setAttribute('id','lastPageCell');if(pagingInfo.pagesCount==1){lastCell.innerHTML='<button onclick="GridTree.prototype._toLastPage()" class="pagebarbtn disLastPage" title="最后一页" id="_lastPageBtn"></button>';}
else{lastCell.innerHTML='<button onclick="GridTree.prototype._toLastPage()" class="pagebarbtn lastPage" title="最后一页" id="_lastPageBtn"></button>';}
var selectPageCell=pageBarTR.insertCell(pageBarTR.cells.length);selectPageCell.setAttribute('id','selectPageCell');selectPageCell.innerHTML=['<input type="text" style="width:30px" id="_pageNum" ','onkeypress="return event.keyCode>=48&&event.keyCode<=57||event.keyCode==46"','onpaste="return !clipboardData.getData(\'text\').match(/\D/)">','<button class="pagebarbtn jumpPage" onclick="GridTree.prototype._toPage(-1)" title="跳转" id="_toPageBtn"></button>'].join('');var selectPagingCell=pageBarTR.insertCell(pageBarTR.cells.length);selectPagingCell.innerHTML='每页<select onchange="GridTree.prototype._reMakeTable(this.value);" id="_changePageSizeSel"><option value="5">5</option><option value="10" selected>10</option><option value="20">20</option><option value="40">40</option><option value="100">100</option></select>条';var msgCell=pageBarTR.insertCell(pageBarTR.cells.length);msgCell.style.textAlign='right';msgCell.setAttribute('id','msgCell');msgCell.innerHTML=["当前第",pagingInfo.currentPage,"页/总共",pagingInfo.pagesCount,"页"].join('');if(_style==1)
{pageBar.style.width='100%';pageBar.className='pagebartable';pageBar.style.height='20px';firstCell.className='pagebartd';firstCell.style.width='1%';preCell.className='pagebartd';preCell.style.width='1%';afterCell.className='pagebartd';afterCell.style.width='1%';lastCell.className='pagebartd';lastCell.style.width='1%';selectPageCell.className='pagebartd';selectPageCell.style.width='1%';selectPagingCell.className='pagebartd';selectPagingCell.style.width='1%';selectPagingCell.style.width='1%';msgCell.className='pagebartd';msgCell.style.width='1%';}
else{pageBar.style.width='100%';pageBar.className='pageBar';firstCell.className='pageNavigationTool';firstCell.nowrap='nowrap';preCell.className='pageNavigationTool';preCell.nowrap='nowrap';afterCell.className='pageNavigationTool';afterCell.nowrap='nowrap';lastCell.className='pageNavigationTool';lastCell.nowrap='nowrap';selectPageCell.className='pageJumpTool';selectPageCell.nowrap='nowrap';selectPagingCell.className='pageSizeTool';selectPagingCell.nowrap='nowrap';msgCell.className='statusTool';msgCell.nowrap='nowrap';}
var tfoot=tableObj.createTFoot();var newTr=tfoot.insertRow(0);var newCell=newTr.insertCell(0);var colspan=headColumns.length;if(tc.rowCount)
colspan=colspan+1;if(tc.checkOption=='1'||tc.checkOption=='2')
colspan=colspan+1;newCell.colSpan=colspan;newCell.appendChild(pageBar);}
GridTree.prototype._reMakeTable=function(pageSize)
{if(pagingInfo.pagesCount!=0){if(_serverPagingMode=='client'){pagingInfo.pageSize=pageSize;pagingInfo.pagesCount=Math.ceil(pagingInfo.allCount/pagingInfo.pageSize*1.0);pagingInfo.currentPage=1;_$('msgCell').innerHTML="当前第"+pagingInfo.currentPage+"页/总共"
+pagingInfo.pagesCount+"页";this._toPage(1);_$(tc.tableId).focus();}
else{pagingInfo.pageSize=pageSize;this._toPage(1,"repaging");_$(tc.tableId).focus();}}}
GridTree.prototype._addOneRowByData=function(tableObj,index,rowData,level){var newRow=tableObj.insertRow(index);var _id=rowData[tc.idColumn];var _parent=rowData[tc.parentColumn];var _isP=this.isParent('_node'+_id);newRow.setAttribute('id','_node'+_id);_parent=_parent==""?'-1':_parent;_parent='_node'+_parent;newRow.setAttribute('_node_parent',_parent);if(level==1)
newRow.setAttribute('_node_path','-1');else{newRow.setAttribute('_node_path',this.getNodePath('_node'+_id).join(','));}
newRow.setAttribute('_node_isparent',_isP);newRow.setAttribute('_node_level',level);if(_isP=='1')
newRow.setAttribute('_open','false');this._userSetPros(rowData,newRow);this._addCountCell(rowData,newRow,index,level);this._addCheckOptionCell(rowData,newRow);this._addOneRowContent(rowData,newRow,_id,_isP,level);this._addOneRowListerners(newRow);}
GridTree.prototype._addOneRowContent=function(rowData,newRow,_id,_isP,level){var i=0;for(;i<headColumns.length;i++){var newSmallCell=newRow.insertCell(newRow.cells.length);newSmallCell.setAttribute('_td_pro',headColumns[i]);var _t=rowData[headColumns[i]];if(i==0){if(_t!=''){var ct=level-1;var ans=[];for(var ii=0;ii<ct;ii++){ans.push(['<IMG ','src="',tc.blankImg,'"/>'].join(''));}
if(_isP=='1'){ans.push(["<IMG id='img_",_id,"' style='CURSOR: hand' ","onclick='javascript:GridTree.prototype.openChildrenTable(this.id,this,event);' src='",tc.openImg,"'/>",_t].join(''));if(findInArray(firstLevelNodes,'_node'+_id)==-1){newRow.style.display='none';}}else{if(findInArray(firstLevelNodes,'_node'+_id)==-1){ans.push(["<IMG id='img_",_id,"' src='",tc.noparentImg,"'/>",_t].join(''));newRow.style.display='none';}
else{ans.push(["<IMG id='img_",_id,"' src='",tc.noparentImg,"'/>",_t].join(''));}}
newSmallCell.innerHTML=ans.join('');}else
newSmallCell.innerHTML='&nbsp;';}
else{if(_t!=''){var showTypeDesc=tc.columnModel[i].columntype;if(showTypeDesc!=null){newSmallCell.appendChild(GridTree.prototype._createContent(showTypeDesc,rowData,headColumns[i],_id));}else{newSmallCell.innerHTML=rowData[headColumns[i]];}}else
newSmallCell.innerHTML='&nbsp;';}}}
GridTree.prototype._toFirstPage=function(){if(_serverPagingMode=='server'){this._toPage(this._getFirstIndexInThisPage(),'first');}else{this._toPage(1);}}
GridTree.prototype._toPrePage=function(){if(_serverPagingMode=='server'){this._toPage(this._getFirstIndexInThisPage(),'pre');}else{pagingInfo.currentPage=(pagingInfo.currentPage-1)<1?1:(pagingInfo.currentPage-1);this._toPage(pagingInfo.currentPage);}}
GridTree.prototype._toPage=function(num,operCode){var pnum=_$('_pageNum'),mdiv=_$('_msgDiv'),mcel=_$('msgCell'),tb=_$(tc.tableId);if(num==-1){num=pnum.value;if(num==''||num>pagingInfo.pagesCount){alert("输入页码有误或者为空，请重新输入！");pnum.focus();return;}else{operCode='refresh';}}
if(_serverPagingMode=='server'){GridTree.prototype._showMsg(true);jQuery.ajax({type:"POST",url:tc.dataUrl,data:'gtstart='+num+'&idColumn='+tc.idColumn+"&parentColumn="+tc.parentColumn+"&gtlimit="+pagingInfo.pageSize+"&gtoper="+operCode+"&gtcount="+pagingInfo.allCount,async:1,success:function(msg){var o=new Date();mdiv.innerText='正在画表格树...';GridTree.prototype._newPagingServerMakeTable(tb,msg);GridTree.prototype._showMsg(0);mcel.innerHTML=["当前第",pagingInfo.currentPage,"页/总共",pagingInfo.pagesCount,"页"].join('');var gotime=new Date()-o;GridTree.prototype._wirteDebug('翻页显示前台消耗时间:'+gotime);}});}
else{pagingInfo.currentPage=num;var end=pagingInfo.currentPage*pagingInfo.pageSize>pagingInfo.allCount?pagingInfo.allCount:pagingInfo.currentPage*pagingInfo.pageSize;GridTree.prototype._showTable(document.getElementById(tc.tableId),(pagingInfo.currentPage-1)*pagingInfo.pageSize,end);mcel.innerHTML=["当前第",pagingInfo.currentPage,"页/总共",pagingInfo.pagesCount,"页"].join('');if(tc.expandAll){GridTree.prototype.expandAll();}
pnum.value='';this._resetPageBtns();this._setColor(tb);}}
GridTree.prototype._toAfterPage=function(){if(_serverPagingMode=='server'){this._toPage(this._getFirstIndexInThisPage(),'after');}else{pagingInfo.currentPage=(pagingInfo.currentPage+1)>pagingInfo.pagesCount?pagingInfo.pagesCount:(pagingInfo.currentPage+1);this._toPage(pagingInfo.currentPage);}}
GridTree.prototype._toLastPage=function(){if(_serverPagingMode=='server'){this._toPage(this._getFirstIndexInThisPage(),'last');}else{pagingInfo.currentPage=pagingInfo.pagesCount;this._toPage(pagingInfo.currentPage);}}
GridTree.prototype._userSetPros=function(rowData,newRow){if(tc.hidddenProperties!=null){for(var i=0;i<tc.hidddenProperties.length;i++){var proName=tc.hidddenProperties[i];newRow.setAttribute(proName,rowData[proName]);}}}
GridTree.prototype._addCountCell=function(rowData,newRow,index,level){var _id=rowData[tc.idColumn];var _parent=rowData[tc.parentColumn];_parent=_parent==""?'-1':_parent;_parent='_node'+_parent;var _isP=this.isParent('_node'+_id);if(tc.rowCount){var countCell=newRow.insertCell(0);countCell.className='countCell';var indexNum=0;if(tc.rowCountOption+''=='3'){indexNum=index;}
else if(tc.rowCountOption+''=='2'){if(findInArray(parents,_parent)!=-1){var brothers=this.seeChildren(_parent);var parentIndex=_idToNumMap.get(_parent);indexNum=parentIndex+'.'+(1+findInArray(brothers,'_node'+_id));newRow.setAttribute('_node_num',indexNum);_idToNumMap.put('_node'+_id,indexNum);}else{indexNum=1+findInArray(firstLevelNodes,'_node'+_id);newRow.setAttribute('_node_num',indexNum);_idToNumMap.put('_node'+_id,indexNum);}
var ct=level-1;for(var i=0;i<ct;i++){countCell.appendChild(createImg(tc.blankImg));}}
else{if(findInArray(parents,_parent)!=-1){var brothers=this.seeChildren(_parent);var parentIndex=_idToNumMap.get(_parent);indexNum=parentIndex+'.'+(1+findInArray(brothers,'_node'+_id));newRow.setAttribute('_node_num',indexNum);_idToNumMap.put('_node'+_id,indexNum);}else{indexNum=1+findInArray(firstLevelNodes,'_node'+_id);if(_serverPagingMode=='client'){indexNum=indexNum-this._getFirstIndexInThisPage();}
newRow.setAttribute('_node_num',indexNum);_idToNumMap.put('_node'+_id,indexNum);}
var ct=level-1;for(var i=0;i<ct;i++){countCell.appendChild(createImg(tc.blankImg));}}
appendText(countCell,indexNum);}}
GridTree.prototype._addCheckOptionCell=function(rowData,newRow){var _id=rowData[tc.idColumn];var setOptionDisabled=tc.disableOptionColumn;if(rowData[setOptionDisabled]+''=='1'){setOptionDisabled='disabled';}else{setOptionDisabled='';}
var setChoosedColumn=tc.chooesdOptionColumn;var defalutChoose=0;if(tc.checkOption==2&&setChoosedColumn!=null){defalutChoose=rowData[setChoosedColumn];if(defalutChoose+''=='1'){defalutChoose='checked';}else{defalutChoose='';}}
if(tc.checkOption=='1'){var checkCell=newRow.insertCell(0);checkCell.className='checkCell';checkCell.setAttribute('id','_chk'+_id);createRadio(checkCell,setOptionDisabled,'width:20px;border:0px;','_chks',_id,tc.handleCheck,'','','');}else if(tc.checkOption==2){var checkCell=newRow.insertCell(0);checkCell.className='checkCell';checkCell.setAttribute('id','_chk'+_id);if(tc.multiChooseMode==4){createCheckbox(checkCell,setOptionDisabled,'width:20px;border:0px;','_chks',_id,function(){GridTree.prototype._chooseChildrenNode(this);GridTree.prototype._cancleChildrenNode(this);GridTree.prototype._cancelFaher(this);if(tc.handleCheck)
tc.handleCheck();},'','',defalutChoose);}
else if(tc.multiChooseMode==3){createCheckbox(checkCell,setOptionDisabled,'width:20px;border:0px;','_chks',_id,function(){GridTree.prototype._chooseChildrenNode(this);GridTree.prototype._chooseParentNode(this);GridTree.prototype._cancelFaher(this);if(tc.handleCheck)
tc.handleCheck();},'','',defalutChoose);}
else if(tc.multiChooseMode==2){createCheckbox(checkCell,setOptionDisabled,'width:20px;border:0px;','_chks',_id,function(){GridTree.prototype._chooseParentNode(this);GridTree.prototype._cancelFaher(this);if(tc.handleCheck)
tc.handleCheck();},'','',defalutChoose);}
else{createCheckbox(checkCell,setOptionDisabled,'width:20px;border:0px;','_chks',_id,tc.handleCheck,'','',defalutChoose);}}}
var nnn=0;GridTree.prototype._addOneRowListerners=function(newRow){if(tc.handler){var lenlen=tc.handler.length;for(var i=lenlen-1;i>=0;i--){GridTree.prototype._addEventToObj(newRow,tc.handler[i]);}
if(!_usHandler.length){for(var i=lenlen-1;i>=0;i--){for(eventName in tc.handler[i])
_usHandler.push(eventName);}
if(findInArray(_usHandler,'onclick')==-1){_usnoclick=1;}
if(findInArray(_usHandler,'onmouseout')==-1){_usnomsout=1;}
if(findInArray(_usHandler,'onmouseover')==-1){_usnomsover=1;}}
if(_usnoclick){newRow.onclick=function(){if(_$(_lastSelectRowId)){rmCss(_$(_lastSelectRowId),"selectlight");}
adCss(newRow,"selectlight");_lastSelectRowId=newRow.id;};}
if(_usnomsover){newRow.onmouseout=function(){removeHightLight(newRow);};}
if(_usnomsout){newRow.onmouseover=function(){addHightLight(newRow);};}}else{if(tc.showMenu==1){newRow.oncontextmenu=function(event){}}
newRow.onmouseover=function(){addHightLight(newRow);};newRow.onmouseout=function(s){removeHightLight(newRow);};newRow.onclick=function(){if(_$(_lastSelectRowId)){rmCss(_$(_lastSelectRowId),"selectlight");}
adCss(newRow,"selectlight");_lastSelectRowId=newRow.id;};}}