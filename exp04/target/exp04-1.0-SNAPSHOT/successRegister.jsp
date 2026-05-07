<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功界面</title>
</head>
<body>

<%
    String username = request.getParameter("username");
    String message = request.getParameter("message");
%>

<%="欢迎你，" + username + "，" + message%><br>
<br><br>
<a href="login.jsp">前往登录界面</a><br>
<a href="index.jsp">返回主页</a>
</body>
</html>
