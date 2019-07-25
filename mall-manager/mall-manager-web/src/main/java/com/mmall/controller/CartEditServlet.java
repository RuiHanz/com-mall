package com.mmall.controller;
import com.mall.product.IShopCartDao;
import com.mall.product.Product;
import com.mall.product.ShoppingCar;
import com.mall.product.impl.ShopCartImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet("/updateNum")
public class CartEditServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int newNum = Integer.parseInt(request.getParameter("newNum"));
        String gwc_id = request.getParameter("gwc_id");
        String yh_id = (String) request.getSession().getAttribute("loginName");
        IShopCartDao icd  = new ShopCartImpl();
        try {
            icd.updateShpshlByGwcid(gwc_id,newNum);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/showCar.do?yh_id=${sessionScope.loginName}").forward(request,response);
    }
}
