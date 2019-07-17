package com.mmall.controller;

import com.mall.user.dao.IOrderDao;
import com.mall.user.dao.impl.OrederDaoImpl;
import com.mall.user.order;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.SQLException;
import java.util.List;


public class orderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IOrderDao odao = new OrederDaoImpl();
        List<order> orderl = null;
        try {
            orderl = odao.getOrderBid();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("orderlist",orderl);
       request.getRequestDispatcher("/Member_Order.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
