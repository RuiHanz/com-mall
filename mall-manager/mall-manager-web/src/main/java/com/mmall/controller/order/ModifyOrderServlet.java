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

@WebServlet("/modify.do")
public class ModifyOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String  dd_id = req.getParameter("dd_id");
        String yh_id =req.getParameter("yh_id");
        String mai_id = req.getParameter("mai_id");
        String shp_mch = req.getParameter("shp_mch");
        float zje = Float.parseFloat(req.getParameter("zje"));
        String shhr=req.getParameter("shhr");
        String dz_mch = req.getParameter("dz_mch");
        int jdh =Integer.valueOf(req.getParameter("jdh"));
      /*  String cs = req.getParameter("chjshj");
        java.text.SimpleDateFormat   formatter   =
                new SimpleDateFormat( "yyyy-MM-dd ");
        Date chjshj    = null;
        try {
            chjshj = formatter.parse(cs);
        } catch (ParseException e) {
            e.printStackTrace();
        }*/
        String yjsdshj = req.getParameter("yjsdshj");
        Order order = new Order();
        order.setDd_id(dd_id);
        order.setYh_id(yh_id);
        order.setMai_id(mai_id);
        order.setShp_mch(shp_mch);
        order.setZje(zje);
        order.setShhr(shhr);
        order.setDzh_mch(dz_mch);
        order.setJdh(jdh);
     /*   order.setChjshj(chjshj);*/
        order.setYjsdshj(yjsdshj);
        IOrderService service = new OrderServiceImpl();
        service.modifyOrder(order);
        //重定向到订单页面
        resp.sendRedirect("/addorder.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
