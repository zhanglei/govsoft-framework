$.fn.parseTemplate = function(data)
{
    var str = (this).html();
    var _tmplCache = {}
    var err = "";
    try
    {
        var func = _tmplCache[str];
        if (!func)
        {
            var strFunc =
            "var p=[],print=function(){p.push.apply(p,arguments);};" +
                        "with(obj){p.push('" +
            str.replace(/[\r\t\n]/g, " ")
               .replace(/'(?=[^#]*#>)/g, "\t")
               .split("'").join("\\'")
               .split("\t").join("'")
               .replace(/<#=(.+?)#>/g, "',$1,'")
               .split("<#").join("');")
               .split("#>").join("p.push('")
               + "');}return p.join('');";

            //alert(strFunc);
            func = new Function("obj", strFunc);
            _tmplCache[str] = func;
        }
        return func(data);
    } catch (e) { err = e.message; }
    return "< # ERROR: " + err.toString() + " # >";
}
/**
<script id="MyTemplate" type="text/html">
    <table style="width:400px;">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
            </tr>
        </thead>
        <tbody>
        <#
            for(var i=0; i < d.length; i++)     
            {      
               var cust = d[i]; 
        #>
                <tr>
                   <td id="CustomerRow_<#= i.toString() #>">
                        <#= cust.FirstName #> 
                   </td>
                   <td>
                        <#= cust.LastName #>
                   </td>
                   <td>
                      <#= cust.Address.Street #>
                      <br />
                      <#= cust.Address.City #>, <#= cust.Address.State #>
                        <#= cust.Address.Zip #>
                   </td>
                </tr>
        <# 
            }
        #>
        </tbody>
    </table>
    <br />
    <#= d.length #> records shown
</script>
*/