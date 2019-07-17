package com.mmall.controller;

import com.mall.addcarservice.AddCarService;
import com.mall.product.IProductDao;
import com.mall.product.IShopCartDao;
import com.mall.product.Product;
import com.mall.product.ShoppingCar;
import com.mall.product.impl.ProductDaoImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
@WebServlet("/addCar")
public class AddCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String spmc =new String(req.getParameter("spmc"));
        //spmc = new String(spmc.getBytes("ISO-8859-1"),"utf-8");
        System.out.println(spmc);
        PrintWriter out = resp.getWriter();
        String shp_id = req.getParameter("shp_id");
        String yh_id = req.getParameter("yh_id");
        System.out.println(shp_id+"---------"+yh_id);
        AddCarService acs = new AddCarService();
        try {
            acs.addCar(shp_id,yh_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }




    }





    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
