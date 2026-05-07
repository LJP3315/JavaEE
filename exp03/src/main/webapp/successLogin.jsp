<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功界面</title>
</head>
<body>

<%
    String message = request.getParameter("message");
    String username = request.getParameter("username");
%>

<%=message + "! 欢迎" + username + " ,使用本系统!!"%>

</body>
</html>
