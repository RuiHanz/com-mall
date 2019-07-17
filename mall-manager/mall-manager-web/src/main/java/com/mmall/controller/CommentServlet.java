package com.mmall.controller;

import com.mall.product.Comment;
import com.mall.product.ICommentDao;
import com.mall.product.impl.CommentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/comment.do")
public class CommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
//        req.getRequestDispatcher("comment.jsp").forward(req,resp);
        resp.sendRedirect("/single.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Comment comment = new Comment();
        comment.setPlnr(req.getParameter("content"));


        ICommentDao com = new CommentDaoImpl();
        com.addComment(comment);



    }
}
