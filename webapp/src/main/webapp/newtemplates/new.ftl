<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="GBK">
    <title>Title</title>
    <script type="text/javascript" src="../one/home/bootcommon.jsp"></script>
</head>
<body>


<#list  list as   new>
<center>
 ${new.title}<br/>
     &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--${new.newsdate}<br/>


<textarea class="form-control"   name="${new.content}"  id="zhi" cols="110" rows="30"></textarea>
</center>



</#list>
</table>
共  ${list?size}  条记录
<script language="javascript">
    var textobj=document.getElementById('zhi');
    textobj.innerHTML=textobj.name;


</script>
</body>
</html>
