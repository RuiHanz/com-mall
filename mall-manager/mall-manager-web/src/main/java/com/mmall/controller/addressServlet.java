package com.mmall.controller;

import com.mall.user.address;
import com.mall.user.dao.IaddressDao;
import com.mall.user.dao.impl.addressDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "address/member_address.do")
public class addressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        IaddressDao dao = new addressDaoImpl();
        List<address>  addlist =null;
        try {
            addlist = dao.getAddressById();
            request.setAttribute("addList",addlist);
            request.getRequestDispatcher("/Member_Address.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
