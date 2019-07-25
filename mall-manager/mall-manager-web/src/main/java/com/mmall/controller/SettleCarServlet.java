package com.mmall.controller;

import com.mall.product.Address;
import com.mall.product.IShopCartDao;
import com.mall.product.IaddressDao;
import com.mall.product.ShoppingCar;
import com.mall.product.impl.AddressDaoImpl;
import com.mall.product.impl.ShopCartImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
@WebServlet("/settle.do")
public class SettleCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String gwc_id = req.getParameter("gwc_id");

        IShopCartDao iShopCartDao = new ShopCartImpl();
        List<ShoppingCar> list = null;
        try {
             list = iShopCartDao.selectById(gwc_id);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        IaddressDao dao = new AddressDaoImpl();
        List<Address>  addlist =null;
        String yh_id = (String) req.getSession().getAttribute("loginName");
        try {
            addlist = dao.getAddressById(yh_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for (Address a:addlist){
            System.out.println(a);
        }
        req.setAttribute("list",list);
        req.setAttribute("addList",addlist);
        req.getRequestDispatcher("/member_pay.jsp").forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
