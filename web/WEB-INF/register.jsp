<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/8/23
  Time: 7:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<div style="text-align: center">
    <form:form commandName="user" action="register.do" method="post" id="user">
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
    <spring:message code="usernamelength"></spring:message>
</div>
<%-- erros 标签好像一定要把这个form都用spring的form渲染才能正确显示错误 --%>
<%--<form action="register.do" method="post" name="user" id="user">--%>
    <%--username:--%>
    <%--<input name="username" /><br/>--%>
    <%--<form:errors path="username" cssStyle="color:red"/>--%>
    <%--password:--%>
    <%--<input type="password" id="password" name="password" ><br/>--%>
    <%--<input type="submit" value="submit">--%>
<%--</form>--%>

</body>
</html>
