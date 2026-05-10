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
    <title>登录失败</title>
</head>
<body>
<h2>登录失败！</h2>

<%
    String message = request.getParameter("message");
%>

登录失败原因: <%=message%> !!

<br>
<a href="login.jsp">重新登录</a>
<a href="register.jsp">去注册</a>
<a href="index.jsp">返回首页</a>
</body>
</html>

