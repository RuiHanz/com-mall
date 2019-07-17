package com.mmall.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mall.service.ProductService;
import com.mall.service.impl.ProductServiceImpl;
import com.mall.service.product.Product;
import com.mall.service.utils.JSONUtils;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UserServlet")
public class ProductJsonServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ProductJsonServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置返回编码格式，解决中文乱码
        response.setCharacterEncoding("utf-8");

        // 根据action的值来执行不同的动作，例如显示所有用户或显示单个用户
        String action = request.getParameter("action");

        // 显示所有用户
        if (action.equals("listAll")) {
            ProductService productService = new ProductServiceImpl();
            List<Product> productList = productService.selectAllService();

            // 返回JSON数据格式

            JSONArray jsonArr = JSONArray.parseArray(JSON.toJSONString(productList));
            JSONObject jsonObjOut = new JSONObject();
            jsonObjOut.put("users", jsonArr);
            JSONUtils.returnJSON(request, response, jsonObjOut);
        }

        // 显示单个商品
//        if (action.equals("getById")) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            ProductService productService = new ProductServiceImpl();
//            Product product = productService.selectByShp_idService(id);
//
//            // 返回JSON数据格式
//            JSONObject jsonObjOut = new JSONObject();
//            jsonObjOut.put("product", product);
//            JSONUtils.returnJSON(request, response, jsonObjOut);
//        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 获取JSON数据
        JSONObject jsonObjIn = JSONUtils.getJSON(request, response);

        Product product = new Product();
        product.setShp_id(jsonObjIn.getString("shp_id"));
        product.setShp_mch(jsonObjIn.getString("shp_mch"));
        product.setFlmch1_id(jsonObjIn.getInteger("flmch1_id"));
        product.setFlmch2_id(jsonObjIn.getInteger("flmch2_id"));
        product.setPp_id(jsonObjIn.getString("pp_id"));
        product.setChjshj(jsonObjIn.getString("chjshj"));
        product.setShp_msh(jsonObjIn.getString("shp_msh"));
        product.setShp_jg(jsonObjIn.getFloat("Shp_mch"));
        product.setShp_ys(jsonObjIn.getString("shp_ys"));
        product.setShp_kc(jsonObjIn.getInteger("shp_kc"));


        ProductService productService = new ProductServiceImpl();
        productService.addProductService(product.getShp_id(),product.getShp_mch(),product.getFlmch1_id(),
                product.getFlmch2_id(),product.getPp_id(),product.getChjshj(),product.getShp_msh(),product.getShp_jg(),product.getShp_ys(),product.getShp_kc());

        // 返回JSON数据格式
        JSONObject jsonObjOut = new JSONObject();
//        jsonObjOut.put("isSuccess", isSuccess);
        JSONUtils.returnJSON(request, response, jsonObjOut);
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 获取JSON数据
        JSONObject jsonObjIn = JSONUtils.getJSON(request, response);
        String id = jsonObjIn.getString("id");

        ProductService productService = new ProductServiceImpl();
        productService.deleteProductService(id);

        // 返回JSON数据格式
        JSONObject jsonObjOut = new JSONObject();
//        jsonObjOut.put("isSuccess", isSuccess);
        JSONUtils.returnJSON(request, response, jsonObjOut);

    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 获取JSON数据
        JSONObject jsonObjIn = JSONUtils.getJSON(request, response);

        Product product = new Product();
        product.setShp_id(jsonObjIn.getString("shp_id"));
        product.setShp_mch(jsonObjIn.getString("shp_mch"));
        product.setFlmch1_id(jsonObjIn.getInteger("flmch1_id"));
        product.setFlmch2_id(jsonObjIn.getInteger("flmch2_id"));
        product.setPp_id(jsonObjIn.getString("pp_id"));
        product.setChjshj(jsonObjIn.getString("chjshj"));
        product.setShp_msh(jsonObjIn.getString("shp_msh"));
        product.setShp_jg(jsonObjIn.getFloat("Shp_mch"));
        product.setShp_ys(jsonObjIn.getString("shp_ys"));
        product.setShp_kc(jsonObjIn.getInteger("shp_kc"));

        ProductService productService = new ProductServiceImpl();
//        productService.updateProduct(product,);

//        // 返回JSON数据格式
//        JSONObject jsonObjOut = new JSONObject();
//        jsonObjOut.put("isSuccess", isSuccess);
//        JSONUtil.returnJSON(request, response, jsonObjOut);
    }

}
