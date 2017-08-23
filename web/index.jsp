<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/8/23
  Time: 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  ${userinfo}
  <a href="/register">注册</a>
  <a href="/login">登录</a>

  <table>
      <tr><th>Title</th><th>userid</th></tr>

      <c:forEach items="${alltiezi}" var="t">
          <tr>
              <td>${t.title}</td>
              <td>${t.userid}</td>
          </tr>
      </c:forEach>

  </table>


  <form:form commandName="tiezi" action="addthread.do" method="post" id="tiezi">
      <form:input path="title"/><br/>
      <form:textarea path="content"/><br/>
      <input type="submit"/>
  </form:form>
  </body>
</html>
