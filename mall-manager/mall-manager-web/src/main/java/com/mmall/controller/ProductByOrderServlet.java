package com.mmall.controller;

import com.mall.product.PPAll;
import com.mall.product.impl.MarkDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("ProductByOrderServlet")
public class ProductByOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MarkDaoImpl mb = new MarkDaoImpl();
        List<PPAll> proByOrdList = null;
        String pp_id = null;
        int flmch2_id = 0;
        try {
            proByOrdList = mb.findProByOrder(pp_id,flmch2_id);
            request.setAttribute("proByOrdList",proByOrdList);
            request.getRequestDispatcher("productshow_byorder.jsp").forward(request,response);
            return;
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }
    }
}
