<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/8/23
  Time: 7:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="register.do" method="post" id="user">
    username:
    <input type="text" id="username" name="username" ><br/>
    <form:errors path="username" cssStyle="color:red"/>
    password:
    <input type="password" id="password" name="password" ><br/>
    <input type="submit" value="submit">
</form>

</body>
</html>
