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
import java.io.PrintWriter;
@WebServlet("/updateProduct2.do")
public class UpdateProductServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        Product product=new Product();
        String id=req.getParameter("id");
        System.out.println(id);
        String shp_id=req.getParameter("shp_id");
        product.setShp_id(shp_id);
        product.setShp_mch(req.getParameter("shp_mch"));
        product.setFlmch1_id(Integer.parseInt(req.getParameter("flmch1_id")));
        product.setFlmch2_id(Integer.parseInt(req.getParameter("flmch2_id")));
        product.setPp_id(req.getParameter("pp_id"));
        product.setShp_ys(req.getParameter("shp_ys"));
        product.setShp_kc(Integer.parseInt(req.getParameter("shp_kc")));
        product.setShp_jg(Float.parseFloat(req.getParameter("shp_jg")));
        product.setShp_msh(req.getParameter("shp_msh"));
        product.setChjshj(req.getParameter("chjshj"));


        ProductService productService=new ProductServiceImpl();
        productService.updateProduct(product,id);

        PrintWriter out = resp.getWriter();
        out.print("<script>alert('修改成功!');window.location.href='商品专区-查询修改及删除商品.jsp'</script>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
