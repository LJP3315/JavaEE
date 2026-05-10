<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<h2>登录界面</h2>

<form action="login" method="post">
    <label>用户名：</label>
    <input type="text" name="username">
    <br>
    <label>密码：</label>
    <input type="password" name="password">
    <br>
    <input type="submit" value="登录">
    <input type="reset" value="重置">
</form>
<br>

<a href="register.jsp">没有账号？去注册</a>
<a href="index.jsp">返回首页</a>

</body>
</html>
