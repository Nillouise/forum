<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/8/25
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userInfo</title>
</head>
<body>

userid: ${userinfo.id}<br/>
username:${userinfo.username}<br/>
password:${userinfo.password}<br/>

<form action="/upload/avatar.do" enctype="multipart/form-data" method="post">
    请选择文件:
    <input type="file" name="file">
    <input type="submit" value="上传">
</form>
<img src="images/avatars/${userinfo.avatar.savename}"/>


</body>
</html>
