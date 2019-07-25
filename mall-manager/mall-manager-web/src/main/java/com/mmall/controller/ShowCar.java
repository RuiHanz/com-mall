package com.mmall.controller;

import com.mall.addcarservice.ShowCarService;
import com.mall.product.ShoppingCar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/showCar.do")
public class ShowCar extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String yh_id = (String) req.getSession().getAttribute("loginName");
        ShowCarService showCarService = new ShowCarService();
        List<ShoppingCar> list = new ArrayList<ShoppingCar>();
        try {
            list =(ArrayList<ShoppingCar>) showCarService.showCarByYhid(yh_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("list",list);
        req.getRequestDispatcher("/member_collect.jsp").forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
