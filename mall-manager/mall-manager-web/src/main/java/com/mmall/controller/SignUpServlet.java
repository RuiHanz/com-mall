package com.mmall.controller;

import com.mall.service.impl.user.SignUpDaoImpl;
import com.mall.service.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/sign.do")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        UUIDUtils uuidUtils=new UUIDUtils();
        String yh_id=uuidUtils.getId();

        String username = req.getParameter("name");
        byte[] b=username.getBytes("iso-8859-1");
        username=new String(b,"utf-8");

        String  phonenumber=req.getParameter("phoneNumber");
        byte[] c=phonenumber.getBytes("iso-8859-1");
        phonenumber=new String(c,"utf-8");

        String  password=req.getParameter("password");
        byte[] d=password.getBytes("iso-8859-1");
        password=new String(d,"utf-8");

        System.out.println(username+"---"+password+"--"+phonenumber);

        SignUpDaoImpl signup=new SignUpDaoImpl();
        signup.saveSignData(yh_id,username,password,phonenumber);

        PrintWriter out = resp.getWriter();
        out.print("<script>alert('注册成功成功!');window.location.href='login.jsp'</script>");

        //resp.sendRedirect("login.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);

    }
}
