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
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@WebServlet("/comment.do")
public class CommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
       //req.getRequestDispatcher("comment.jsp").forward(req,resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String fun = req.getParameter("_method");
        switch (fun){
            case "add":
                add(req,resp);
                break;
            case "selectUser":
                selectUser(req,resp);
                break;
            case "selectPro":
                selectPro(req,resp);
                break;
            case "del":
                del(req,resp);
                break;
//            case "update":
//                update(req,resp);
//                break;

        }


    }
    public void add(HttpServletRequest req, HttpServletResponse resp)  {
        //都要替换 pl_id 增加 yh_id 获取
        Comment comment = new Comment();
        comment.setPl_id("1");
        comment.setYh_id("123");
        comment.setPlnr(req.getParameter("content"));
        comment.setPlshj("2017-07-18");
        comment.setHpjb(5);
        comment.setShp_mch("Y700p");
        comment.setDd_id("33556");
        comment.setShp_id("1001");

        ICommentDao com = new CommentDaoImpl();
        com.addComment(comment);

        try {
            resp.sendRedirect("/product/single.do");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void selectUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String yh_id = (String) req.getAttribute("yh_id");
        ICommentDao cDao = new CommentDaoImpl();
        List<Comment> cList = null;
        String id = (String) req.getSession().getAttribute("loginName");
        try {
            cList = cDao.getCommentUser(id);
            for (Comment c:cList){
                System.out.println(c);
            }
            req.setAttribute("cList",cList);
            req.getRequestDispatcher("/member_links.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    public void selectPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String shp_id = (String) req.getParameter("shp_id");
        System.out.println(shp_id);
        ICommentDao cDao = new CommentDaoImpl();
        List<Comment> cList = null;
        try {
            cList = cDao.getCommentPro(shp_id);

            req.setAttribute("shlist",cList);
           req.getRequestDispatcher("/pinglun.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void del(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String dd_id = (String) req.getAttribute("dd_id");
        ICommentDao cDao = new CommentDaoImpl();
        cDao.delComment("dd_id");
        req.getRequestDispatcher("/").forward(req,resp);

    }

//    public void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String dd_id = (String) req.getAttribute("dd_id");
//        ICommentDao cDao = new CommentDaoImpl();
//        cDao.updateComment("dd_id");
//        req.getRequestDispatcher("/").forward(req,resp);
//    }

}
