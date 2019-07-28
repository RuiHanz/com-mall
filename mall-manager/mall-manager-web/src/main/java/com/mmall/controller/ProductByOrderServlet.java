package com.mmall.controller;

import com.mall.product.Category;
import com.mall.product.Mark;
import com.mall.product.PPAll;
import com.mall.product.impl.MarkDaoImpl;
import com.mall.product.impl.ProImgDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ProductByOrderServlet")
public class ProductByOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MarkDaoImpl mb = new MarkDaoImpl();
        ProImgDaoImpl pi = new ProImgDaoImpl();
        MarkDaoImpl m = new MarkDaoImpl();
        List<PPAll> proByOrdList = null;
        List<PPAll> ppList = null;
        List<Mark> mList = null;
        List<Category> cList = null;
        String pp_id = request.getParameter("pp_id");
        int flmch2_id = Integer.parseInt(request.getParameter("flmch2_id"));
        try {
            proByOrdList = mb.findProByOrder(pp_id,flmch2_id);
            ppList = pi.findAllPP();
            //父目录
            mList = m.findAll();
            //附属目录下的子目录
            cList = m.findCAll();
            request.setAttribute("mList",mList);
            request.setAttribute("cList",cList);
            request.setAttribute("proByOrdList",proByOrdList);
            request.setAttribute("ppList",ppList);
            request.getRequestDispatcher("productshow_byorder.jsp").forward(request,response);
            return;
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
