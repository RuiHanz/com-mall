package com.mmall.controller;

import com.mall.product.IProductDao;
import com.mall.product.IProductImageDao;
import com.mall.product.Product;
import com.mall.product.impl.ProductDaoImpl;
import com.mall.product.impl.ProductImageDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/searchByMch.do")
public class SearchshpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //模糊查询
        String shp_mch = req.getParameter("Search");
        IProductDao pd = new ProductDaoImpl();
        IProductImageDao dao = new ProductImageDaoImpl();

        List<Product> list = pd.selectByShp_msh(shp_mch);
        req.setAttribute("pList",list);
        req.getRequestDispatcher("/product_show.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}

