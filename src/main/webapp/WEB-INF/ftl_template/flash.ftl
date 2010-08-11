<script language="javascript">
<#list actionMessages+actionErrors as msg>
new Effect.Highlight('${msg}');
window.setTimeout("Effect.DropOut('${msg}')", 2000);
</#list>
</script>