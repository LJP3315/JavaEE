<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功界面</title>
</head>
<body>

<%
    // 从session中获取当前用户信息
    String currentUser = (String) session.getAttribute("currentUser");

    if (currentUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<h2>登录成功!</h2>
<p>欢迎 <%= currentUser %> 使用本系统!</p>

<a href="index.jsp">返回首页</a>

</body>
</html>