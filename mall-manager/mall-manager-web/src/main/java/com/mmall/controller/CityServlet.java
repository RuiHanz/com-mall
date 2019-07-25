package com.mmall.controller;

import com.alibaba.fastjson.JSON;
import com.mall.product.City;
import com.mall.product.ICityDao;
import com.mall.product.impl.CityDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/city.do")
public class CityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        ICityDao dao = new CityDao();
        List<City> cList = null;
        try {
            cList = dao.getCitysByPid(Integer.valueOf(pid));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String cListJson = JSON.toJSONString(cList);
        request.setAttribute("cList",cListJson);
        out.print(cListJson);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
