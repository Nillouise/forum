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
<%@ taglib uri="https://journaldev.com/jsp/tlds/mytags" prefix="mytags"%>
<%@ taglib uri="https://journaldev.com/jsp/tlds/pagetags" prefix="pp" %>


<html>
  <head>
    <title>$Title$</title>
  </head>
  <body style="text-align: center">
  <div>
      <span STYLE="float: right">
          <c:if test="${null!=sessionScope['userinfo']}">
              <a href="/userinfo"> ${userinfo.username}</a>
              <a href="/logout">注销</a>
          </c:if>
          <c:if test="${null==sessionScope['userinfo']}">
             <a href="/register">注册</a>
             <a href="/login">登录</a>
          </c:if>
      </span>
      <div style="float: left;">
          <jsp:include page="WEB-INF/gadget/searchTool.jsp"/>
      </div>
      <div style="clear: both;"></div>
  </div>

  <div>
      现在有的贴吧：
      <div>
          <c:forEach var="i" items="${alltieba}">
              <a href="/tieba?tiebaname=${i.tiebaname}">${i.tiebaname}</a><br/>
          </c:forEach>
      </div>
  </div>

  test:
  <mytags:formatNumber number="100050.574" format="#,###.00"/><br><br>
  <mytags:formatNumber number="1234.567" format="$# ###.00"/><br><br>

  <pp:pager pageModel="${pagemodel}" submitUrl="test?id={0}"/>


  <div style="position:fixed; left:0px; bottom:0px; width:100%; height:50px;  z-index:9999;">
      使用SSM+mysql开发的贴吧 项目github地址：<a href="https://github.com/Nillouise/forum">https://github.com/Nillouise/forum</a>
  </div>
  </body>
</html>
