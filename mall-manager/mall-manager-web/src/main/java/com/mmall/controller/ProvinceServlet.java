package com.mmall.controller;

import com.alibaba.fastjson.JSON;
import com.mall.product.IProvinceDao;
import com.mall.product.Province;
import com.mall.product.impl.ProvinceDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/province.do")
public class ProvinceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IProvinceDao dao = new ProvinceDao();
        List<Province> pList = null;
        try {
            pList = dao.getProvince();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String pListJson = JSON.toJSONString(pList);
        request.setAttribute("pList",pListJson);
        out.print(pListJson);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
