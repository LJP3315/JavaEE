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
    <title>注册失败</title>
</head>
<body>
<h2>注册失败！</h2>

<%
    String message = request.getParameter("message");
%>

注册失败原因：<%=message%>
<br>
<a href="register.jsp">重新注册</a>
<a href="login.jsp">去登录</a>
<a href="index.jsp">返回首页</a>
</body>
</html>

