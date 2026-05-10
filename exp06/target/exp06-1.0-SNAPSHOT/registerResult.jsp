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
    <title>注册结果</title>
</head>
<body>

<%
    String message = (String) request.getAttribute("message");
    Boolean success = (Boolean) request.getAttribute("success");
    if (success == null) success = false;
%>

<%if (success) {%>
<h2>注册成功！</h2>
<p><%=message%></p>
<p>您已成功注册，现在可以登录了。</p>
<br>
<a href="login.jsp">去登录</a>
<a href="index.jsp">返回首页</a>
<%} else {%>
<h2>注册失败！</h2>
<p>注册失败原因：<%=message%></p>
<br>
<a href="register.jsp">重新注册</a>
<a href="login.jsp">去登录</a>
<a href="index.jsp">返回首页</a>
<%}%>

</body>
</html>
