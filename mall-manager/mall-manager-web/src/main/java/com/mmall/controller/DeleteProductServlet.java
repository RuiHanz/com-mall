package com.mmall.controller;

import com.alibaba.fastjson.JSONObject;
import com.mall.service.ProductService;
import com.mall.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/product/delete.do")
public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String shp_id = req.getParameter("shp_id");
        ProductService productService=new ProductServiceImpl();
        productService.deleteProductService(shp_id);
        PrintWriter out = resp.getWriter();
        out.print("<script>alert('删除成功!');window.location.href='http://localhost:8080/商品专区-查询修改及删除商品.jsp'</script>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        JSONObject jsonObjIn = JSONUtil.getJSON(request, response);
        doGet(req, resp);
    }
}
