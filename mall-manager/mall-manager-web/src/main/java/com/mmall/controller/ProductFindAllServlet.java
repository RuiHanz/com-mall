package com.mmall.controller;

import com.mall.product.Product;
import com.mall.product.impl.ProductDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ProductFindAllServlet")
public class ProductFindAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDaoImpl pro = new ProductDaoImpl();
        List<Product> pList = null;
        try {
            pList = pro.findAll();
            request.setAttribute("pList",pList);
            request.getRequestDispatcher("product_show.jsp").forward(request,response);
            return;
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }
    }
}
