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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/save.do")
public class OrderSaveServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       req.setCharacterEncoding("utf-8");
        String  dd_id = req.getParameter("dd_id");
        String yh_id =req.getParameter("yh_id");
        String mai_id = req.getParameter("mai_id");
        String shp_mch = req.getParameter("shp_mch");
        float zje = Float.parseFloat(req.getParameter("zje"));
        String shhr=req.getParameter("shhr");
        String dzh_mch = req.getParameter("dzh_mch");
        System.out.println(dzh_mch);
        int jdh =Integer.valueOf(req.getParameter("jdh"));
        String chjshj = req.getParameter("chjshj");
        String yjsdshj = req.getParameter("yjsdshj");
       /* System.out.println(yjsdshj);*/
        Order order = new Order();
        order.setDd_id(dd_id);
        order.setYh_id(yh_id);
        order.setMai_id(mai_id);
        order.setShp_mch(shp_mch);
        order.setZje(zje);
        order.setShhr(shhr);
        order.setDzh_mch(dzh_mch);
        order.setJdh(jdh);
        order.setChjshj(chjshj);
        order.setYjsdshj(yjsdshj);
        System.out.println(order);
        IOrderService service = new OrderServiceImpl();
        service.addOrder(order);
      //重定向到订单页面
        resp.sendRedirect("/order.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }
}
