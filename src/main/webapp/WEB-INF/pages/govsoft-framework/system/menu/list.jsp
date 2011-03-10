<%@ page contentType="text/html; charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-cn" lang="zh-cn">
<head>
<%@ include file="/commons/meta.jsp"%>
<title>GovSoft系统</title>
<%@ include file="/commons/header.jsp"%>
<%@ include file="/widgets/jquery-ui/grid/grid.jsp"%>
<script type="text/javascript" charset="utf-8">
	var dsOption = [ 'id', 'name', 'url', 'sequence', 'description',
			'disabled', 'version' ];

	var colsOption = [ {
		name : 'id',
		index : 'id'
	}, {
		name : 'name',
		index : 'name'
	}, {
		name : 'url',
		index : 'url'
	}, {
		name : 'sequence',
		index : 'sequence'
	}, {
		name : 'description',
		index : 'description'
	}, {
		name : 'disabled',
		index : 'disabled'
	}, {
		name : 'version',
		index : 'version'
	} ];

	var gridOption = {
		url : '${ctx}/menu!query.do',
		datatype : 'json',
		mtype : "POST",
		colNames : dsOption,
		colModel : colsOption,
		autowidth : true,
		viewrecords : true,
		altRows : true,
		multiselect: true, 
		rownumbers: true,
		hidegrid : false,
		rowNum : 15,
		rowList : [ 10, 15, 20 ],
		prmNames : {
			search : "search"
		},
		jsonReader : {
			root : "gridModel",
			records : "record",
			repeatitems : false
		},
		height : 250,
		pager : "#gridPager",
		caption : "菜单列表"
	};

	$j(document).ready(function() {
		$j("#gridTable").jqGrid(gridOption);
	});
</script>
</head>
<body>
<div id="page">
<div id="header"></div>
<div id="container">
<div id="content">
<table id="gridTable">
</table>
<div id="gridPager"></div>
</div>
</div>
<div id="footer"><%@ include file="/commons/footer.jsp"%></div>
</div>
</body>
</html>