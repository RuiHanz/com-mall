package com.mmall.controller;

import com.mall.product.IShopCartDao;
import com.mall.product.OrderDao;
import com.mall.product.impl.OrderDaoImpl;
import com.mall.product.impl.ShopCartImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/pay.do")
public class PayServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String dz_id = req.getParameter("dz");
        System.out.println(dz_id);
        IShopCartDao iso = new ShopCartImpl();
        String gwc_id = req.getParameter("gwc_id");
        String shp_mch = req.getParameter("shp_mch");
        System.out.println(shp_mch+"---------");
        System.out.println(gwc_id+"--------");
        OrderDao od = new OrderDaoImpl();
        try {
            int a = od.addOrder(gwc_id,"2019-08-12",1,dz_id,shp_mch);
            iso.deleteByGwcid(gwc_id);
            System.out.println(a);
        } catch (SQLException e) {
            e.printStackTrace();
        }


        PrintWriter out = resp.getWriter();
        out.print("<script>alert('支付成功！');window.location.href='member_collect.jsp';</script>");



    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
