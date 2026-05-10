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
  <title>注册界面</title>
</head>
<body>

<h2>注册界面</h2>

<form action="register" method="post">
  <label>用户名：</label>
  <input type="text" name="username">
  <br>
  <label>密码：</label>
  <input type="password" name="password">
  <br>
  <label>确认密码：</label>
  <input type="password" name="confirmPassword">
  <br>
  <input type="submit" value="注册">
  <input type="reset" value="重置">
</form>

<br>
<a href="login.jsp">已有账号？去登录</a>
<a href="index.jsp">返回首页</a>

</body>
</html>
