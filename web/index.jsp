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
  <body style="text-align: center">
  <a href="/userinfo"> ${userinfo}</a>
  <a href="/register">注册</a>
  <a href="/login">登录</a>
  <a href="/logout">注销</a>
  <jsp:include page="WEB-INF/gadget/searchTool.jsp"/>
<div style="max-width: 600px;margin: 0 auto;">
      <table style="margin: 0px auto;">
          <tr><th>Title</th><th>userid</th></tr>
          <c:forEach items="${alltiezi}" var="t">
              <tr>
                  <td><a href="/selecttiezi?tieziid=${t.id}">${t.title}</a></td>
                  <td>${t.user.username}</td>
              </tr>
          </c:forEach>
      </table>

    <br/>
    <br/>
    <div style="max-width: 300px;margin: 0 auto;">
        <form action="addthread.do" method="post" id="tiezi" cssStyle="float:right;">
            <input name="title" style="width: 300px"/><br/>
            <textarea name="content" style="margin-top: 5px;width: 300px;"></textarea>
            <br/>
            <input type="submit" style="float:right"/>

        </form>
    </div>
</div>
  </body>
</html>
