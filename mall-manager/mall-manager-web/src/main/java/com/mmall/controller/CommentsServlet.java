package com.mmall.controller;

import com.mall.user.Comments;
import com.mall.user.dao.ICommentsDao;
import com.mall.user.dao.impl.CommentsDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CommentsServlet")
public class CommentsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICommentsDao dao = new CommentsDaoImpl();
        List<Comments> commentsList=null;
        try {
            commentsList = dao.getCommentsById();
            request.setAttribute("pList",commentsList);
            request.getRequestDispatcher("/Member_Links.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
