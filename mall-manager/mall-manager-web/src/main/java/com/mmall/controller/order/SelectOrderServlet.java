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
import java.util.List;

@WebServlet("/order.do")
public class SelectOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IOrderService service = new OrderServiceImpl();
        List<Order> orderList = service.findAll();
        req.setAttribute("orderList",orderList);
        req.getRequestDispatcher("/order.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
