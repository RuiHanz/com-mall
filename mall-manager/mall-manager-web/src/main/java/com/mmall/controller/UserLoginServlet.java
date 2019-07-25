package com.mmall.controller;

import com.mall.product.IUserDao;
import com.mall.product.User;
import com.mall.product.impl.UserDaoImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
@WebServlet("/userLogin.do")
public class UserLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String passWord = req.getParameter("passWord");
        User user = new User();
        if(userName.equals("")){
            resp.setContentType("text/html;charset=GBK ");
            PrintWriter out = resp.getWriter();
            out.print("<script>alert('用户名不能为空!');location.href='home/login.jsp'</script>");
        }else {
            //测试数据
            //System.out.println(name + " " + password);
            //获取login.jsp页面提交的账号和密码设置到实体类User中
            user.setYh_shjh(userName);
            user.setYh_mm(passWord);
            //引入数据交互层
           IUserDao dao = new UserDaoImpl();
            User us = null;
            try {
                us = dao.login(user);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            //测试返回的值
            //System.out.println(us);
            if (us != null) {
                HttpSession session = req.getSession();
                //把用户数据保存在session域对象中
                session.setAttribute("loginName", us.getYh_id());
                session.setAttribute("userName",us.getYh_mch());
                resp.sendRedirect(req.getContextPath()+"/member.do");
                // request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                //response.sendRedirect("home/login.jsp?error=yes");
                resp.setContentType("text/html;charset=GBK ");
                PrintWriter out = resp.getWriter();
                out.print("<script>alert('用户名或密码错误!');location.href='/login.jsp'</script>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
