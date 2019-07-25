package com.mmall.controller;



import com.mall.product.IaddressDao;
import com.mall.product.impl.AddressDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteAddress.do")
public class deleteAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dz_id = request.getParameter("dz_id");
        System.out.println(dz_id);
        IaddressDao iShopCartDao = new AddressDaoImpl();

        try {
            iShopCartDao.deleteByDzid(dz_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.getRequestDispatcher("/member_address.do").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
