<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录处理界面</title>
</head>
<body>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String message = "";
    Boolean flag = false;

    if (username == null || username.trim().equals("")) {
        message = "用户名不能为空";
    } else if (password == null || password.trim().equals("")) {
        message = "密码不能为空";
    } else if (!(username.equals("admin") && password.equals("123456"))) {
        message = "用户名或密码错误";
    } else {
        message = "登录成功";
        flag = true;
    }

    if (flag) {
%>

<jsp:forward page="successLogin.jsp">
    <jsp:param name="message" value="<%=message%>"/>
</jsp:forward>

<%
    } else {
%>

<jsp:forward page="failLogin.jsp">
    <jsp:param name="message" value="<%=message%>"/>
</jsp:forward>

<%
    }
%>


</body>
</html>
