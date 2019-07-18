package com.mmall.controller;

import com.mall.product.IProductDao;
import com.mall.product.Product;
import com.mall.product.impl.ProductDaoImpl;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/product/single.do")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String shp_id = (String) req.getAttribute("shp_id");
        IProductDao pDao = new ProductDaoImpl();
        List<Product> pList = null;
        try {
            pList = pDao.getAll("shp_id");
            //pList = pDao.getAll(shp_id);
            req.setAttribute("pList",pList);
            req.getRequestDispatcher("/single.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
