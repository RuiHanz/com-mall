package com.mmall.controller;

import com.alibaba.fastjson.JSON;
import com.mall.product.IUserDao;
import com.mall.product.User;
import com.mall.product.impl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/member.do")
public class UserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IUserDao dao = new UserDaoImpl();
        List<User> uList = null;
        String id = (String) req.getSession().getAttribute("loginName");
        try {
            uList = dao.getUsersByid(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PrintWriter out = resp.getWriter();
        /*String uListJson = JSON.toJSONString(uList);*/
        req.setAttribute("uList",uList);
        req.getRequestDispatcher("/member.jsp").forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
