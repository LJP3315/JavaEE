<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/10
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.lyon.exp06.userBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录结果</title>
</head>
<body>

<%
    String message = (String) request.getAttribute("message");
    Boolean success = (Boolean) request.getAttribute("success");
    if (success == null) success = false;
%>

<%if (success) {%>
<h2>登录成功！</h2>
<%
    userBean user = (userBean) session.getAttribute("user");
%>
<p>欢迎，<%=user != null ? user.getUsername() : ""%>！</p>
<br>
<a href="index.jsp">返回首页</a>
<a href="login.jsp">退出登录</a>
<%} else {%>
<h2>登录失败！</h2>
<p>登录失败原因：<%=message%></p>
<br>
<a href="login.jsp">重新登录</a>
<a href="register.jsp">去注册</a>
<a href="index.jsp">返回首页</a>
<%}%>

</body>
</html>
