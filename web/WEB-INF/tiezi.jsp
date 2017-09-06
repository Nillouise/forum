<%--
  Created by IntelliJ IDEA.
  User: win7x64
  Date: 2017/8/24
  Time: 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/js/json2.js"></script>
    <title>${tiezi.title}</title>
    <script>
        function requestZanAct(act,sendjson,callbackfun)
        {
            $.ajax("${pageContext.request.contextPath}/json/"+act+".do",
                {
                    dataType:"json",
                    type:"post",
                    contentType:"application/json;charset=utf-8",
                    data:JSON.stringify(sendjson),
                    async:true,
                    success:callbackfun,
                    error:function ()
                    {
                        console.log("json send fail");
                    }
                });

        }

        function dianzan(e)
        {
            var json = {};
            json["floorid"]=e.id.substr(3);

            function receive(data)
            {
                e.value = "赞"+data;
            }

            requestZanAct("dianzan",json,receive);
        }

        function diancai(e)
        {
            var json = {};
            json["floorid"]=e.id.substr(3);

            function receive(data)
            {
                e.value = "踩"+data;
            }

            requestZanAct("diancai",json,receive);
        }

    </script>
</head>
<body>
<a href="/">首页</a>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<div style="border: 1px #0000ff;" >--%>
                    <%--<span>--%>
                        <%--<img src="..${tiezi.user.avatar.path}${tiezi.user.avatar.savename}" style="width: 80px;height: 80px;"/><br/>--%>
                        <%--${tiezi.user.username}--%>
                    <%--</span>--%>
                    <%--<span>--%>
                        <%--${tiezi.content}--%>
                    <%--</span>--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${tiezi.floors}"  var="i">--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<div >--%>
                        <%--<span>--%>
                            <%--<img src="..${i.user.avatar.path}${i.user.avatar.savename}" style="width: 80px;height: 80px;"/>--%>
                            <%--<br/>--%>
                                <%--${i.user.username}--%>
                        <%--</span>--%>
                        <%--<span>--%>
                                <%--${i.content}--%>
                            <%--<input type="button" id="zan${i.id}" value="赞" onclick="dianzan(this)">--%>
                            <%--<input type="button" id="cai${i.id}" value="踩" onclick="diancai(this)">--%>
                        <%--</span>--%>
                    <%--</div>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>
<div style="padding-left: 10%">
    <h3>${tiezi.title}</h3>
    <div style="width: 740px;clear: both;
                    margin: 0;
                    padding: 0;">
        <div
                style="border:0;
                border-left: 1px solid #E5E5E5;
                border-bottom: 1px solid #E1E4E6;
                box-sizing: content-box;
                display: block;
                margin: 0;
                padding: 0;
                width: 739px;
                box-sizing: content-box;">
            <div style="float: left;width: 130px;">
                <ul style="list-style: none;">
                    <li><img src="..${tiezi.user.avatar.path}${tiezi.user.avatar.savename}" style="width: 80px;height: 80px;"/></li>
                    <li>${tiezi.user.username}</li>
                </ul>
            </div>
            <div style="float: left;position: relative;width: 588px;">
                ${tiezi.content}
            </div>
            <div style="clear: both;"></div>
        </div>
        <c:forEach items="${tiezi.floors}"  var="i">
            <div
                    style="border:0;
                    border-left: 1px solid #E5E5E5;
                    border-bottom: 1px solid #E1E4E6;
                    box-sizing: content-box;
                    display: block;
                    margin: 0;
                    padding: 0;
                    width: 739px;
                    box-sizing: content-box;">
                <div style="float: left;text-align: center;width: 130px;">
                    <ul style="list-style: none;">
                        <li><img src="..${i.user.avatar.path}${i.user.avatar.savename}" style="width: 80px;height: 80px;"/></li>
                        <li>${i.user.username}</li>
                    </ul>
                </div>
                <div style="float: left;position: relative;width: 588px;">
                        ${i.content}
                </div>
                <div style="clear: both;"></div>
                <%--加了上面这句，才能让div在用了float的情况下，父div能被子div撑开--%>
                <div style="text-align:right;">
                    <input type="button" id="zan${i.id}" value="赞" onclick="dianzan(this)" style="">
                    &nbsp;
                    <input type="button" id="cai${i.id}" value="踩" onclick="diancai(this)" style="">
                </div>
            </div>
        </c:forEach>
    </div>
    <br/>
        <form:form commandName="floor" action="addfloor.do" method="post" id="floor">
            <input type="hidden" name="tieziid" value="${tiezi.id}"/>
            <form:textarea path="content" cssStyle="width: 708px;min-height: 220px;"/><br/>
            <input type="submit" value="提交"/>
        </form:form>
</div>
</body>
</html>
