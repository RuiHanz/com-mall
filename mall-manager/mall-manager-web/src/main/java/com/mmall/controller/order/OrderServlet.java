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
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/OrderServlet.do")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String fun = request.getParameter("_method");
      switch (fun){
          case "add":
              add(request,response);
              break;
          case "update":
              update(request,response);
              break;
          case "delete":
              delete(request,response);
              break;
          case "save":
              save(request,response);
              break;
      }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doPost(request,response);
    }
    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       IOrderService service = new OrderServiceImpl();
       Order order = new Order();
       service.addOrder(order);
        request.getRequestDispatcher("/addorder.jsp").forward(request,response);
    }
    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id =Integer.valueOf(request.getParameter("dd_id"));
        IOrderService service = new OrderServiceImpl();
        Order order = (Order) service.findAll();
        request.setAttribute("order",order);
        request.getRequestDispatcher("/addorder.jsp").forward(request, response);
    }
    public void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id =Integer.valueOf(request.getParameter("dd_id"));
        IOrderService service = new OrderServiceImpl();
        service.removeOrder(id);
        response.sendRedirect("/order.do");
    }
    public void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
       // request.setCharacterEncoding("utf-8");
        String  dd_id = request.getParameter("dd_id");
        String yh_id =request.getParameter("yh_id");
        String mai_id = request.getParameter("mai_id");
        String shp_mch = request.getParameter("shp_mch");
        float zje = Float.parseFloat(request.getParameter("zje"));
        String shhr=request.getParameter("shhr");
        String dz_mch = request.getParameter("dz_mch");
        int jdh =Integer.valueOf(request.getParameter("jdh"));
        /*String cs = request.getParameter("chjshj");
        java.text.SimpleDateFormat   formatter   =
                new SimpleDateFormat( "yyyy-MM-dd ");
        Date  chjshj    = null;
        try {
            chjshj = formatter.parse(cs);
        } catch (ParseException e) {
            e.printStackTrace();
        }*/
        String yjsdshj = request.getParameter("yjsdshj");

        Order order = new Order();
        order.setDd_id(dd_id);
        order.setYh_id(yh_id);
        order.setMai_id(mai_id);
        order.setShp_mch(shp_mch);
        order.setZje(zje);
        order.setShhr(shhr);
        order.setDzh_mch(dz_mch);
        order.setJdh(jdh);
        /*order.setChjshj(chjshj);*/
        order.setYjsdshj(yjsdshj);
        IOrderService service = new OrderServiceImpl();
        service.addOrder(order);
        //重定向到订单页面
        response.sendRedirect("/addorder.jsp");
    }
}
