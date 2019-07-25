package com.mmall.controller;

import com.alibaba.fastjson.JSON;
import com.mall.product.Area;
import com.mall.product.IAreaDao;
import com.mall.product.impl.AreaDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/area.do")
public class AreaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid = request.getParameter("cid");
        IAreaDao dao = new AreaDao();
        List<Area> aList = null;
        try {
            aList = dao.getAreasByCid(Integer.valueOf(cid));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String aListJson = JSON.toJSONString(aList);
        request.setAttribute("aList",aListJson);
        out.print(aListJson);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
