<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/8/23
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message code="logintitle"></spring:message></title>
</head>
<body>

<form:form commandName="user" action="login.do" method="post" id="user">
    username:
    <form:input path="username" />
    <form:errors path="username" cssStyle="color:red"/>
    <br/>
    password:
    <input type="password" id="password" name="password">
    <br/>
    <input type="submit" value="submit">
    <br/>
</form:form>


</body>
</html>
