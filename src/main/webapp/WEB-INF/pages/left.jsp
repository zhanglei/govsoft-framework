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
<%@ include file="/widgets/jquery-ui/accordion/accordion.jsp"%>
<script type="text/javascript" charset="utf-8">
	var url = "${ctx}/leftmenu.do";
	var menujson = {};
	$j(document).ready(function(){
		$j.getJSON(url,function(json){
			menujson = json;
			$j.each(json,function(i,menu){
				var menu_h3;
				var menu_div;
				var menu_span;				
				var menu_a = $j('<a href="#">'+menu.name+'</a>');
				if(i==0){
					menu_h3 = $j('<h3 class="ui-accordion-header ui-helper-reset ui-state-active ui-corner-top"></h3>');
					menu_span = $j('<span class="ui-icon ui-icon-triangle-1-s"/>');
					menu_div = $j('<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active"></div>');
				} else {
					menu_h3 = $j('<h3 class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all"></h3>');
					menu_span = $j('<span class="ui-icon ui-icon-triangle-1-e"/>');
					menu_div = $j('<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom"></div>');
				}
				menu_h3.append(menu_span);
				menu_h3.append(menu_a);
				menu_h3.click(function() {
					$j(this).children('span').toggleClass('ui-icon-triangle-1-s');
					$j(this).next().toggle('slow');
					return false;
				}).next().hide();
				var authorizedChild = menu.authorizedChild;
				if(typeof authorizedChild !== 'undefined'){
					var menu_ul = $j("<ul></ul>");
					$j.each(authorizedChild,function(j,submenu){
						var menu_li = $j('<li></li>');
						var submenu_a = $j('<a href="javascript:void(0)">'+submenu.name+'</a>');
						submenu_a.click(function(){
							parent.right.location.href = "${ctx}/"+submenu.url;
						});
						menu_li.append(submenu_a);
						menu_ul.append(menu_li);
					});
					menu_div.append(menu_ul);
				}
				$j('#accordion').append(menu_h3);
				$j('#accordion').append(menu_div);
			});
		});
		$j('#accordion').accordion();
	});
</script>	
</head>
<body>
<div id="page">
<div id="header"></div>
<div id="container">
	<div id="content">
		<div id="leftmenu" class="ui-widget-content">
			<div id="accordion">
			</div>
		</div>
	</div>
</div>
<div id="footer">
<%@ include file="/commons/footer.jsp"%>
</div>
</div>
</body>
</html>