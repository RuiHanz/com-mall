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
import java.util.List;

@WebServlet("/select.do")
public class SelectProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");


        Integer selecttype = Integer.parseInt(req.getParameter("selectType"));
        System.out.println(selecttype);

        switch (selecttype){
            case 0 :
                selectAll(req,resp);
                break;
            case 1 :
                selectByName(req,resp);
                break;
            case 2 :
                selectById(req,resp);
                break;
            case 3 :
                selectByShp_msh(req,resp);
                break;
        }
    }
//id查询
    private void selectById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String shp_id=req.getParameter("searchName");
        List<Product> productList=null;
        ProductService productService=new ProductServiceImpl();
        productList=productService.selectByShp_idService(shp_id);
        req.setAttribute("productList",productList);
        req.getRequestDispatcher("商品专区-查询修改及删除商品.jsp").forward(req,resp);
    }

    //关键词模糊查询
    private void selectByShp_msh(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String shp_msh=req.getParameter("searchName");
        List<Product> productList=null;
        ProductService productService=new ProductServiceImpl();
        productList=productService.selectByShp_mshService(shp_msh);
        req.setAttribute("productList",productList);
        req.getRequestDispatcher("商品专区-查询修改及删除商品.jsp").forward(req,resp);
    }
//商品名称查询
    private void selectByName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String shp_mch=req.getParameter("searchName");
        List<Product> productList=null;
        ProductService productService=new ProductServiceImpl();
        productList=productService.selectByNameService(shp_mch);
        req.setAttribute("productList",productList);
        req.getRequestDispatcher("商品专区-查询修改及删除商品.jsp").forward(req,resp);
    }

    private void selectAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList=null;
        ProductService productService=new ProductServiceImpl();
        productList=productService.selectAllService();
        req.setAttribute("productList",productList);
        req.getRequestDispatcher("商品专区-查询修改及删除商品.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
