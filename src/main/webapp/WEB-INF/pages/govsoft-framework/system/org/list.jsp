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
	var dsOption = [ 'id', 'name', 'description', 'disabled', 'version' ];

	var colsOption = [ {
		name : 'id',
		index : 'id'
	}, {
		name : 'name',
		index : 'name'
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
		url : '${ctx}/org!query.do?d=' + new Date().getTime(),
		datatype : 'json',
		mtype : "POST",
		height : 250,
		autowidth : true,
		colNames : dsOption,
		colModel : colsOption,
		viewrecords : true,
		rowNum : 15,
		rowList : [ 15, 50, 100 ],
		prmNames : {
			search : "search"
		},
		jsonReader : {
			root : "gridModel",
			records : "record",
			repeatitems : false
		},
		multiselect : true,
		rownumbers : true,
		pager : "#gridPager",
		caption : "组织机构列表",
		hidegrid : false
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