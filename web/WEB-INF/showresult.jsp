<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/9/8
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="width: 740px;clear: both;
                    margin: 0;
                    padding: 0;">
    <c:forEach items="${searchresult}"  var="i">
        <div style="border:0;
                    border-left: 1px solid #E5E5E5;
                    border-bottom: 1px solid #E1E4E6;
                    box-sizing: content-box;
                    display: block;
                    margin: 0;
                    padding: 0;
                    width: 739px;
                    box-sizing: content-box;">
            ${i.tiezi.title}<br/>
            ${i.floor.content}<br/>
            ${i.floor.user.username}<br/>

            <%--<div style="float: left;text-align: center;width: 130px;">--%>
                <%--<ul style="list-style: none;">--%>
                    <%--<li><img src="..${i.user.avatar.path}${i.user.avatar.savename}" style="width: 80px;height: 80px;"/></li>--%>
                    <%--<li>${i.user.username}</li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div style="float: left;position: relative;width: 588px;">--%>
                    <%--${i.content}--%>
            <%--</div>--%>
            <%--<div style="clear: both;"></div>--%>
                <%--&lt;%&ndash;加了上面这句，才能让div在用了float的情况下，父div能被子div撑开&ndash;%&gt;--%>
            <%--<div style="text-align:right;">--%>
                <%--<input type="button" id="zan${i.id}" value="赞" onclick="dianzan(this)" style="">--%>
                <%--&nbsp;--%>
                <%--<input type="button" id="cai${i.id}" value="踩" onclick="diancai(this)" style="">--%>
            <%--</div>--%>
        </div>
    </c:forEach>
</div>
</body>
</html>
