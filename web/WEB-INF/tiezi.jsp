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
    <title>${tiezi.title}</title>
</head>
<body>
<h3>${tiezi.title}</h3>
<table>
    <th>
        <td>${tiezi.userid}</td>
        <td>${tiezi.content}</td>
    </th>
    <c:forEach items="${tiezi.floors}"  var="i">
        <tr>
            <td>${i.userid}</td>
            <td>${i.content}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
