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
            $.ajax("${pageContext.request.contextPath}/json/"+act,
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
    <h3>${tiezi.title}</h3>
    <table>
        <th>
            <td>${tiezi.userid}</td>
            <td>${tiezi.content}</td>
        </th>
        <c:forEach items="${tiezi.floors}"  var="i">
            <tr>
                <td>${i.userid}</td>
                <td>
                    <div style="width: 200px;height: 100px;">
                        ${i.content}
                        <input type="button" id="zan${i.id}" value="赞" onclick="dianzan(this)">
                        <input type="button" id="cai${i.id}" value="踩" onclick="diancai(this)">
                    </div>
                </td>
            </tr>
        </c:forEach>

    </table>
    <form:form commandName="floor" action="addfloor.do" method="post" id="floor">
        <input type="hidden" name="tieziid" value="${tiezi.id}"/>
        <form:textarea path="content"/><br/>
        <input type="submit"/>
    </form:form>
</body>
</html>
