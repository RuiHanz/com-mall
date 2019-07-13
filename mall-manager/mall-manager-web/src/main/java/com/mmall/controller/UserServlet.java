package com.mmall.controller;

import com.mall.service.IUserService;
import com.mall.service.User;
import com.mall.service.impl.UserServiceImpl;
import com.mall.service.utils.MD5Utils;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
@WebServlet("/user/login.do")
public class UserServlet extends  BaseServlet {
    public String login(HttpServletRequest req, HttpServletResponse resp){

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        password = MD5Utils.md5(password);
        IUserService service = new UserServiceImpl();
        try {
            User user =  service.loginService(username,password);
            if(user != null){

                System.out.println("登录成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "/index.jsp";
    }
}
