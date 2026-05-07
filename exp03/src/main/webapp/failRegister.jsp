<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册失败界面</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String message = request.getParameter("message");
%>

<%=message %>
</body>
</html>
