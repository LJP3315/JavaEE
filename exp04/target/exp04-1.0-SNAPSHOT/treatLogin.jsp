<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 15:10
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
  } else {
    java.util.Map<String, String> users = (java.util.Map<String, String>) application.getAttribute("users");

    // 检查用户是否存在且密码正确
    if (users != null && users.containsKey(username) && users.get(username).equals(password)) {
      message = "登录成功";
      flag = true;

      // 将用户名存储到session中，表示用户已登录
      session.setAttribute("currentUser", username);
    } else {
      message = "用户名或密码错误";
    }

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
