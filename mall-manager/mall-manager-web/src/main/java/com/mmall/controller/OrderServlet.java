package com.mmall.controller;

import com.mall.product.Order;
import com.mall.product.OrderDao;
import com.mall.product.impl.OrderDaoImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

@WebServlet("/showorder.do")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDao odao = new OrderDaoImpl();
        List<Order> orderl = null;
        String id = (String) request.getSession().getAttribute("loginName");
        try {
            orderl = odao.getOrderBid(id);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("orderlist",orderl);
       request.getRequestDispatcher("/member_order.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
