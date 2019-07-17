package com.mmall.controller;

import com.mall.user.Shopingcar;
import com.mall.user.dao.IShoppingCarDao;
import com.mall.user.dao.impl.ShoppingcarDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "")
public class ShoppingCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IShoppingCarDao dao = new ShoppingcarDaoImpl();
        List<Shopingcar> shopList = null;
        try {
            shopList = dao.getShopingcarById();
            request.setAttribute("shoplist",shopList);
            request.getRequestDispatcher("/Member_Collect.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
