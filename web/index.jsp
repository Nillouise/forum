<%--handnote 把文件后缀名硬写在代码里，将来换渲染技术时可能会很麻烦 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户信息</title>
    <link href="/css/main.css" type="text/css" rel="stylesheet">
  </head>
  <body style="text-align: center">

  <div>
      <jsp:include page="WEB-INF/gadget/topbar.jsp"/>
      <div>
          现在有的贴吧：
          <div style="width: 60%;margin: 0 auto;">
              <div style="clear: both;">
                  <c:forEach var="i" items="${alltieba}">
                      <div style="margin: 20px;display:inline-block">
                              <a href="/tieba?tiebaname=${i.tiebaname}">${i.tiebaname}</a><br/>
                      </div>
                  </c:forEach>
              </div>
          </div>
      </div>
      <div style="height: 50px;clear: both;">
      </div>
  </div>

  <div style="position:fixed; left:0px; bottom:0px; width:100%; height:50px;  z-index:9999;">
      使用SSM+mysql开发的贴吧 项目github地址：<a href="https://github.com/Nillouise/forum">https://github.com/Nillouise/forum</a>
  </div>
  </body>
</html>
