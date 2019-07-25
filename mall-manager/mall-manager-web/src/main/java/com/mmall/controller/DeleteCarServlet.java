package com.mmall.controller;

import com.mall.product.IShopCartDao;
import com.mall.product.impl.ShopCartImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
@WebServlet("/deleteCar.do")
public class DeleteCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String gwc_id = req.getParameter("gwc_id");
        IShopCartDao iShopCartDao = new ShopCartImpl();
        try {
            iShopCartDao.deleteByGwcid(gwc_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/showCar.do").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }
}
