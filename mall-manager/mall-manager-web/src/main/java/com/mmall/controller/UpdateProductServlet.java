package com.mmall.controller;

import com.mall.service.ProductService;
import com.mall.service.impl.ProductServiceImpl;
import com.mall.service.product.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/update.do")
public class UpdateProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String shp_id = req.getParameter("shp_id");
        System.out.println(shp_id);
        List<String> list=new ArrayList<String>();

        list.add(shp_id);
        System.out.println(list.toString());

        ProductService productService=new ProductServiceImpl();
        List<Product> productList=productService.selectByShp_idService(shp_id);
        req.setAttribute("productList",productList);


        req.setAttribute("id",list);
        req.getRequestDispatcher("商品专区-修改2.jsp").forward(req,resp);




    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
