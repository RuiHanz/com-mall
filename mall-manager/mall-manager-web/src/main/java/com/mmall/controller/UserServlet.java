package com.mmall.controller;

import com.alibaba.fastjson.JSON;
import com.mall.service.impl.user.UserDaoImpl;
import com.mall.service.user.IUserDao;
import com.mall.service.user.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/user/member.do")
public class UserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IUserDao dao = new UserDaoImpl();
        List<User> uList = null;
        try {
            uList = dao.getUsersByid();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PrintWriter out = resp.getWriter();
        String uListJson = JSON.toJSONString(uList);
        req.setAttribute("uList",uListJson);
        out.print(uListJson);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
