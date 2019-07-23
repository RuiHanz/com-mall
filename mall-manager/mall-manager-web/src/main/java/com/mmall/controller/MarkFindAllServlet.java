package com.mmall.controller;

import com.mall.product.Category;
import com.mall.product.Mark;
import com.mall.product.Product;
import com.mall.product.ProductImg;
import com.mall.product.impl.MarkDaoImpl;
import com.mall.product.impl.ProImgDaoImpl;
import com.mall.product.impl.ProductDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("")
public class MarkFindAllServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MarkDaoImpl m = new MarkDaoImpl();
        ProductDaoImpl pro = new ProductDaoImpl();
        ProImgDaoImpl pi = new ProImgDaoImpl();
        List<ProductImg> piList = null;
        List<Product> pList = null;
        List<Mark> mList = null;
        List<Category> cList = null;
        try {
            //父目录
            mList = m.findAll();
            //附属目录下的子目录
            cList = m.findCAll();
            request.getSession().setAttribute("mList",mList);
            request.getSession().setAttribute("cList",cList);
            pList = pro.findAll();
            piList = pi.findAll();
            request.setAttribute("pList",pList);
            request.setAttribute("piList",piList);
            request.getRequestDispatcher("index.jsp").forward(request,response);
            return;
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }

    }
}
