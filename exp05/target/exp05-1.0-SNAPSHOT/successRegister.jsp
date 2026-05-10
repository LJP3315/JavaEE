<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功</title>
</head>
<body>

<%
    String message = request.getParameter("message");
%>

<%=message%>

<p>您已成功注册，现在可以登录了。</p>
<br>
<a href="login.jsp">去登录</a>
<a href="index.jsp">返回首页</a>
</body>
</html>

