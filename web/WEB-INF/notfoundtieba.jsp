<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/9/17
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<span style="color: #FF0000;">${tiebaname}</span>吧 还没有成立，希望创建一个吗？<br/>
<a href="/tieba/create.do?tiebaname=${tiebaname}">
    <input type="button" value="创建">
</a>

</body>
</html>
