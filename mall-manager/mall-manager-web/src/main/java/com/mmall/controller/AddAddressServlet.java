package com.mmall.controller;


import com.mall.addcarservice.GetAddressService;
import com.mall.product.Address;
import com.mall.product.IaddressDao;
import com.mall.product.impl.AddressDaoImpl;
import com.mall.user.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addAddress.do")
public class AddAddressServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String shhrName = req.getParameter("shhrName");
        int pid = Integer.parseInt(req.getParameter("province"));
        int cid = Integer.parseInt(req.getParameter("city"));
        int aid = Integer.parseInt(req.getParameter("area"));
        GetAddressService gas = new GetAddressService();
        String address = null;
        try {
            address = gas.getAddress(pid,cid,aid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String phoneNum = req.getParameter("phoneNum");
        String yh_id = (String) req.getSession().getAttribute("loginName");
       Address addr = new Address(shhrName+address,address,phoneNum,shhrName,yh_id);
        //测试
        System.out.println(addr);
        IaddressDao iad = new AddressDaoImpl();
        try {
            iad.insertDZ(addr);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/member_address.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
