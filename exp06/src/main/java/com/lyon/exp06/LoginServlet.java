package com.lyon.exp06;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // 获取表单参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String message;
        boolean success = false;

        // 判断用户名和密码是否为空
        if (username == null || username.trim().equals("")) {
            message = "用户名不能为空";
        } else if (password == null || password.trim().equals("")) {
            message = "密码不能为空";
        } else {
            // 从 application 中查找该用户名对应的 UserBean 对象
            ServletContext application = getServletContext();
            Object obj = application.getAttribute(username);

            if (obj != null) {
                userBean storedUser = (userBean) obj;
                if (storedUser.getPassword().equals(password)) {
                    // 登录成功：生成 UserBean 对象，以 "user" 为名存入 session
                    userBean user = new userBean(username, password);
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    message = "登录成功";
                    success = true;
                } else {
                    message = "密码错误";
                }
            } else {
                message = "用户不存在";
            }
        }

        // 将处理结果传递给 loginResult.jsp 显示
        request.setAttribute("message", message);
        request.setAttribute("success", success);
        request.getRequestDispatcher("loginResult.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
