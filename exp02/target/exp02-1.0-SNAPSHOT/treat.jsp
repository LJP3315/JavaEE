<%--
  Created by IntelliJ IDEA.
  User: LiGaB
  Date: 2026/5/5
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单信息</title>
</head>
<body>
<%
    // request.getParameter(name)
    // 获取浏览器提交的请求参数值
    String name = request.getParameter("username");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    String[] hobbies = request.getParameterValues("hobby");
    String introduction = request.getParameter("introduction");
%>

用户名：<%=name%> <br>
密码：<%=password%><br>
性别：<%=gender%><br>
爱好：<%
    for (String hobby : hobbies) {
        out.print(hobby + " ");
    }
%><br>
介绍：<%=introduction%><br>

<a href="index.jsp">返回</a>
</body>
</html>
