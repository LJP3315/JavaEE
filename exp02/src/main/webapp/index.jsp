<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
</head>
<body>
    <h2>用户注册</h2>
    <form action="treat.jsp" method="post">
        <table border="1">
            <tr>
                <td>用户名</td>
                <td><input type="text" name="username"> <br></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"> <br></td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                    <input type="radio" name="gender" value="男" checked> 男
                    <input type="radio" name="gender" value="女"> 女 <br>
                </td>
            </tr>
            <tr>
                <td>爱好</td>
                <td>
                    <input type="checkbox" name="hobby" value="阅读">阅读
                    <input type="checkbox" name="hobby" value="运动">运动
                    <input type="checkbox" name="hobby" value="游戏">游戏
                    <input type="checkbox" name="hobby" value="音乐">音乐 <br>
                </td>
            </tr>
            <tr>
                <td>自我介绍</td>
                <td><textarea name="introduction" rows="4" cols="40"></textarea> <br></td>
            </tr>
            <tr>
                <td>点击操作</td>
                <td><input type="submit" value="提交"> <input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</body>
</html>