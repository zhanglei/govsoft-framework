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
<script type="text/javascript" charset="utf-8">
	$j(document).ready(function() {
		$j('#logout').click(logout);
		showMessager();
	});

	function showMessager() {//显示系统消息
		var msg = '欢迎您,${user.realName}!<br>';
		msg += '您是第${user.loginCount+1}登录本系统.<br>';
		msg += '上次登录时间:${user.lastLoginTime}<br>';
		msg += '上次登录IP:${user.lastLoginIp}<br>';
		msg += '上次登录地点:${lastLoginCountry}';

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
</script>
</head>
<body>
<div id="page">
	<div id="header">
		<div id="topside">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" background="${ctx}/images/top_bg.jpg">
				<tr>
					<td><img src="${ctx}/images/logo.jpg"></td>
					<td>
						<table width="100%" border="0" align="left" cellpadding="0" cellspacing="5">
							<tr>
								<td valign="bottom">
									<div align="right">
										<a href="#" target="right"><font color="#3D3E3E">首页</font></a>&nbsp;| 
										<a href="#" target="right"><font color="#3D3E3E">个人信息</font></a>&nbsp;| 
										<a href="javascript:logout()"><font color="#3D3E3E">退出系统</font></a>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
								<div align="right">
									您好, <font color="#296DC1"><sec:authentication property="principal.realName"/></font>
								</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<div id="leftside">
			</div>
			<div id="rightside">
			</div>
		</div>
	</div>
	<div id="footer">
	<%@ include file="/commons/footer.jsp"%>
	</div>
</div>
</body>
</html>