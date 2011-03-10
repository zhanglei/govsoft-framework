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
<%@ include file="/widgets/jquery-ui/messager/messager.jsp"%>
<script src="${ctx}/wro/util.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
	function showMessager() {//显示系统消息
		var loginCount = parseInt('<sec:authentication property="principal.loginCount"/>') + 1;
		var lastLoginTime = '<sec:authentication property="principal.lastLoginTime"/>';
		var lastLoginIp = '<sec:authentication property="principal.lastLoginIp"/>';
		var msg = '欢迎您,<sec:authentication property="principal.realName"/>!<br>';
		var lastLoginCountry = '';
		msg += '您是第' + loginCount + '登录本系统.<br>';
		msg += '上次登录时间:' + lastLoginTime + '<br>';
		msg += '上次登录IP:' + lastLoginIp + '<br>';
		msg += '上次登录地点:' + lastLoginCountry + '.';

		$j.messager.show( {
			title : '系统消息',
			msg : msg,
			showType : 'show',
			width : 250,
			height : 120
		});
	}

	function logout() {//注销
		$j.messager.confirm('注销', '确定要退出系统吗?', function(r) {
			if (r) {
				location.href = "${ctx}/j_spring_security_logout";
			}
		});
	}

	$j(document).ready(function() {
		$j('#logout').click(logout);
		showMessager();
	});
</script>
</head>
<body style="overflow-y:hidden">
<div id="page">
	<div id="header">
		<div id="topside">
			<div id="headerlogo">
				<img src="${ctx}/images/logo.jpg">
			</div>
			<div id="headerleft">
				<div id="topmenu">
					<ul>
						<li><a id="home" name="home" href="${ctx}">首页</a></li>
						<li><a id="system" name="system" href="#">系统管理</a></li>
						<li><a id="logout" name="logout" href="javascript:void(0);">退出系统</a></li>
					</ul>
					<div id="headerinfo">您好,<font color="#296DC1"><sec:authentication property="principal.realName" /></font></div>
				</div>
			</div>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<div id="leftside">
				<iframe id="left" name="left" src="${ctx}/left.do" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
			</div>
			<div id="rightside">
				<iframe	id="right" name="right" src="${ctx}/right.do" width="100%" height="100%" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto" hspace="0" vspace="0" ></iframe>
			</div>
		</div>
	</div>
	<div id="footer">
		<%@ include file="/commons/footer.jsp"%>
	</div>
</div>
</body>
</html>