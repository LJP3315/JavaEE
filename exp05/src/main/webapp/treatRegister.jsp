<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<jsp:useBean id="user" class="com.lyon.exp05.userBean" scope="page"/>
<jsp:setProperty name="user" property="*"/>
<%
    // 获取用户输入
    String username = user.getUsername();
    String password = user.getPassword();

    // 使用 application 作用域存储用户数据库（模拟持久化）
    Map<String, String> userDatabase = (Map<String, String>) application.getAttribute("userDatabase");
    if (userDatabase == null) {
        userDatabase = new HashMap<>();
        application.setAttribute("userDatabase", userDatabase);
    }

    // 注册逻辑：验证并保存用户信息

    String message = "";
    String targetPage = "failRegister.jsp";
    if (username == null || username.trim().equals("")) {
        message = "用户名不能为空";
    } else if (password == null || password.trim().equals("")) {
        message = "密码不能为空";
    } else if (userDatabase.containsKey(username)) {
        message = "用户名已存在";
    } else {
        userDatabase.put(username, password);
        message = "注册成功";
        targetPage = "successRegister.jsp";
    }
%>

<jsp:forward page="<%=targetPage%>">
    <jsp:param name="message" value="<%=message%>"/>
</jsp:forward>

<html>
<head>
    <title>处理注册</title>
</head>
<body>

</body>
</html>
