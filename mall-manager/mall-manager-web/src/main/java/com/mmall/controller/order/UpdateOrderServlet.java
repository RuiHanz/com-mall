package com.mmall.controller.order;

import com.mall.order.IOrderService;
import com.mall.order.Order;
import com.mall.order.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/updateOrder.do")
public class UpdateOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id =Integer.valueOf(req.getParameter("id"));
        IOrderService service = new OrderServiceImpl();
        Order order = (Order) service.findAll();
        req.setAttribute("order",order);
        req.getRequestDispatcher("/addorder.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
