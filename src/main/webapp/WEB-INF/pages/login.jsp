<%@ page contentType="text/html; charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-cn" lang="zh-cn">
<head>
<%@ include file="/commons/meta.jsp"%>
<title>GovSoft系统-用户登录</title>
<%@ include file="/commons/header.jsp"%>
<%@ include file="/widgets/validation/validation.jsp"%>
<script type="text/javascript" charset="utf-8">
	
	if (self != top)
	{
		/* 在框架内，则跳出框架 */
		top.location = self.location;
	}

	$j(document).ready(function(){
		$j('#chgValidCode').click(chgValidCode);
		$j('#resetImage').click(reset);
		$j('#loginName').focus();
	}); 
	
	function chgValidCode() {//更换验证码
		var timenow = new Date().getTime();////获取当前的时间作为参数，无具体意义
		$('validCodeImage').src = "validateCode.do?d=" + timenow;
	}
	
	function reset(){//重置
		$j('#loginName').val('');
		$j('#password').val('');
		$j('#validCode').val('');
		$j('#loginName').focus();
	}
</script>
</head>
<body>
<div id="page">
	<div id="header"></div>
	<div id="container">
		<div id="content">
			<form id="loginForm" name="loginForm" method="post" action="login!login.do" class="required-validate">
				<div id="login">
					<div>
						<label>帐&nbsp;&nbsp;号:</label>
						<input id="loginName" name="loginName" type="text" class="required" title="请输入账号">
					</div>
					<div>
						<label>密&nbsp;&nbsp;码:</label>
						<input id="password" name="password" type="password" class="required" title="请输入密码">
					</div>
					<div>
						<label>验证码:</label>
						<input id="validCode" name="validCode" type="text" size="5" class="required" title="请输入验证码">
						<img id="validCodeImage" src="validateCode.do">
						<a id="chgValidCode" name="chgValidCode" href="javascript:void(0);">换一张</a>
					</div>
					<div>
						<input id="rememberPwd" name="rememberPwd" type="checkbox" value="true">记住密码
					</div>
					<div>
						<input id="enterImage" name="enterImage" type="image"> 
						<input id="resetImage" name="resetImage" type="image">
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="footer">
	<%@ include file="/commons/footer.jsp"%>
	</div>
</div>
</body>
</html>