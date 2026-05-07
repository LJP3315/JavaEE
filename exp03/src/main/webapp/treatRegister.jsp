<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册处理界面</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmedPassword = request.getParameter("confirmedPassword");

    String message = "";
    Boolean flag = false;

    if (username == null || username.trim().equals("")) {
        message = "用户名不能为空";
    } else if (password == null || password.trim().equals("")) {
        message = "密码不能为空";
    } else if (confirmedPassword == null || confirmedPassword.trim().equals("")) {
        message = "请再次输入密码";
    } else if (!password.equals(confirmedPassword)) {
        message = "两次输入的密码不一致";
    } else {
        message = "注册成功";
        flag = true;
    }

    if (flag) {
%>

<jsp:forward page="successRegister.jsp">
    <jsp:param name="message" value="<%=message%>"/>
</jsp:forward>

<%
    } else {
%>

<jsp:forward page="failRegister.jsp">
    <jsp:param name="message" value="<%=message%>"/>
</jsp:forward>

<%
    }
%>

</body>
</html>
