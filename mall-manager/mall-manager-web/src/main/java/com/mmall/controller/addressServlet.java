package com.mmall.controller;
import com.mall.product.Address;
import com.mall.product.IaddressDao;
import com.mall.product.impl.AddressDaoImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/member_address.do")
public class addressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        IaddressDao dao = new AddressDaoImpl();
        List<Address>  addlist =null;
        String yh_id = (String) request.getSession().getAttribute("loginName");
        try {
            addlist = dao.getAddressById(yh_id);
            request.setAttribute("addList",addlist);
            request.getRequestDispatcher("/member_address.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
