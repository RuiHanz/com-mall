package com.mmall.controller;

import com.mall.product.Category;
import com.mall.product.Mark;
import com.mall.product.impl.MarkDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/MarkFindAllServlet")
public class MarkFindAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MarkDaoImpl m = new MarkDaoImpl();
        List<Mark> mList = null;
        List<Category> cList = null;
        try {
            //父目录
            mList = m.findAll();
            //附属目录下的子目录
            cList = m.findCAll();
            request.setAttribute("mList",mList);
            request.setAttribute("cList",cList);
            request.getRequestDispatcher("index.jsp").forward(request,response);
            return;
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }

    }
}
