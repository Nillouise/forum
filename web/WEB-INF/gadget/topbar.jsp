<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="topbar">
    <div class="search">
        <form action="/searchbykeyword.do">
            搜索：
            <input type="text" name="keyword" style="width: 80px"/>
            <input type="submit"/>
        </form>
    </div>
    <div class="status">
        <div>
          <c:if test="${null!=sessionScope['userinfo']}">
              <a href="/userinfo"> ${userinfo.username}</a>
              <a href="/logout">注销</a>
          </c:if>
          <c:if test="${null==sessionScope['userinfo']}">
              <a href="/register">注册</a>
              <a href="/login">登录</a>
          </c:if>
        </div>
    </div>
    <div style="clear: both;"></div>
</div>