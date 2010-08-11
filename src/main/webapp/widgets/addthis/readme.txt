
官方网站：http://addthis.org.cn/sharetools/jQuery/
下载地址：http://code.google.com/p/china-addthis/downloads/list


安装：

将addthis_org_cn文件夹放在网站目录内

调用：

1、在网页中插入
<link type="text/css" href="http://你的url/addthis_org_cn/CSS/addthis.css" rel="stylesheet" media="all" />
<script type="text/javascript" src="http://你的url/addthis_org_cn/addthis-jq.js" charset="UTF-8"></script>

2、执行绑定：$("...").addthis(); 

实例：<a class="addthis_org_cn" href="http://addthis.org.cn/share/"><img src="http://你的url/addthis_org_cn/images/a1.gif" alt="分享家" align="absmiddle" /></a>（可自由配置属性，请见下文）

在文档ready时，执行$(".addthis_org_cn").addthis(); 


-----------------------------------------------------

详细配置说明：


<a class="addthis_org_cn" 

    i="0|1|2|3|4|5|6|71"  <!--[可选]设置想要的收藏服务id(见http://addthis.org.cn/sharetools/)，不设置表示全部选择-->

    e="click或者mouseover"  <!--[可选]设置绑定触发事件，默认为mouseover-->

    u="http://www.metasoo.com/"    <!--[可选]表示要收藏的网址，不设置默认是当前页面网址-->

    t="觅搜：元搜索引擎"     <!--[可选]作为收藏的标题，不设置默认是当前页面<title>值-->

    d="觅搜：帮您从谷歌、百度、必应等搜索引擎优化结果"   <!--[可选]设置收藏描述，默认为空-->

    tag="觅搜,搜索引擎,元搜索引擎"      <!--[可选]设置tags（只有部分收藏服务网站支持），默认为空-->

    href="http://addthis.org.cn/share/"   <!--[可选]当网页支持javascript时不会发生页面跳转，当不支持javascript访问该地址仍然可以收藏你的网页-->
	
    abordercolor="#DDD" <!--[可选]自定义按钮窗体边框颜色-->

    aheadbgcolor="#F2F2F2" <!--[可选]自定义按钮窗体标题栏背景颜色-->

    title="收藏&amp;分享">

        <img src="http://你的url/addthis_org_cn/images/a1.gif" alt="" align="absmiddle" />     <!--可以自定义为任何图片、文字-->

</a>

<script type="text/javascript">
$(function(){
      $(".addthis_org_cn").addthis();
});
</script>


