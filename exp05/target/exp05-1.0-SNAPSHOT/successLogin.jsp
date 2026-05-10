<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h2>登录成功！</h2>
<p>欢迎，<%= session.getAttribute("currentUser") %>！</p>
<br>
<a href="index.jsp">返回首页</a>
<a href="login.jsp">退出登录</a>
</body>
</html>

