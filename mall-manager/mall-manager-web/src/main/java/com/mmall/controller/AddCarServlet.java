package com.mmall.controller;
import com.mall.addcarservice.AddCarService;
import com.mall.addcarservice.ShowCarService;
import com.mall.product.ShoppingCar;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/addCar")
public class AddCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        //spmc = new String(spmc.getBytes("ISO-8859-1"),"utf-8");

        PrintWriter out = resp.getWriter();
        String shp_id = req.getParameter("shp_id");
        String yh_id = req.getParameter("yh_id");

        if (StringUtils.isNotBlank(yh_id)){
            AddCarService acs = new AddCarService();
            try {
                acs.addCar(shp_id,yh_id);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            ShowCarService showCarService = new ShowCarService();
            List<ShoppingCar> list = new ArrayList<ShoppingCar>();
            try {
                list =(ArrayList<ShoppingCar>) showCarService.showCarByYhid(yh_id);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            req.setAttribute("list",list);
            req.getRequestDispatcher("/member_collect.jsp").forward(req,resp);
        }else {
            out.print("<script>alert('请登录!');window.location.href='login.jsp';</script>");
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
