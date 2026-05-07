<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/7
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    // 从session中获取当前用户信息
    String currentUser = (String) session.getAttribute("currentUser");
%>

<p>欢迎 <%= currentUser %> 使用本系统!</p>

<a href="index.jsp">返回首页</a>

</body>
</html>