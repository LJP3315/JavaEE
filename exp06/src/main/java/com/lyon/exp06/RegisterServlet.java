package com.lyon.exp06;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // 获取表单参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        String message;
        boolean success = false;

        // 判断用户名和密码是否为空
        if (username == null || username.trim().equals("")) {
            message = "用户名不能为空";
        } else if (password == null || password.trim().equals("")) {
            message = "密码不能为空";
        } else if (!password.equals(confirmPassword)) {
            // 判断密码和确认密码是否相同
            message = "两次输入的密码不一致";
        } else {
            // 检查用户是否已经存在
            ServletContext application = getServletContext();
            userBean existingUser = (userBean) application.getAttribute(username);
            
            if (existingUser != null) {
                // 用户已存在
                message = "用户名已存在，请使用其他用户名";
            } else {
                // 注册成功：将 UserBean 对象以用户名为键存入 application
                userBean user = new userBean(username, password);
                application.setAttribute(username, user);
                message = "注册成功";
                success = true;
            }
        }

        // 将处理结果传递给 registerResult.jsp 显示
        request.setAttribute("message", message);
        request.setAttribute("success", success);
        request.getRequestDispatcher("registerResult.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
