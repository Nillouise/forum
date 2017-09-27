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
<%@ taglib prefix="pp" uri="https://journaldev.com/jsp/tlds/pagetags" %>
<html>
<head>
    <title>${tiebaname}</title>
    <link href="/css/main.css" type="text/css" rel="stylesheet">
</head>
<body style="text-align: center">

<jsp:include page="gadget/topbar.jsp"/>

<div>
    <form action="/tieba" method="get">
        <input type="text" name="tiebaname" value="${tiebaname}">
        <input type="submit" value="打开贴吧">
    </form>
</div>


    <div class="tiezi">
        <div class="title">
            <div class="top">Title</div>
            <c:forEach items="${alltiezi}" var="t">
                <div class="content">
                    <a href="/selecttiezi?tieziid=${t.id}">${t.title}</a>
                </div>
            </c:forEach>
        </div>
        <div class="user">
            <div class="top">user</div>
            <c:forEach items="${alltiezi}" var="t">
                <div class="content">
                        ${t.user.username}
                </div>
            </c:forEach>
        </div>
        <div style="clear: both;"></div>
        <pp:pager pageModel="${pagemodel}" submitUrl="/tieba?page={0}&tiebaname=${tiebaname}"/>
    </div>

    <div style="max-width: 600px;margin: 0 auto;">

    <br/>
    <br/>
    <div style="max-width: 300px;margin: 0 auto;">
        <form action="/addthread.do" method="post" name="form" cssStyle="float:right;">
            <input type="hidden" name="tiebaid" value="${tiebaid}">
            <input name="title" style="width: 300px"/><br/>
            <textarea name="content" style="margin-top: 5px;width: 300px;"></textarea>
            <br/>
            <input type="submit" style="float:right"/>
        </form>
    </div>
</div>
<div style="position:fixed; left:0px; bottom:0px; width:100%; height:50px;  z-index:9999;">
    使用SSM+mysql开发的贴吧 项目github地址：<a href="https://github.com/Nillouise/forum">https://github.com/Nillouise/forum</a>
</div>
</body>
</html>
