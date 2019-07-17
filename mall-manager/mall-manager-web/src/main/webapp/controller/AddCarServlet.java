package com.mmall.controller;

import com.mall.product.IShopCartDao;
import com.mall.product.ShoppingCar;
import com.mall.product.impl.ShopCartImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
@WebServlet("/addCar")
public class AddCarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IShopCartDao dao = new ShopCartImpl();
        List<ShoppingCar>list = null;
        try {
            list = dao.selectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String json="{\"people\":[";
        for (ShoppingCar dataInfo : list) {
            String line="{\"name\":\""+dataInfo.getShp_mch()+
                    "\",\"jg\":"+dataInfo.getShp_jg()+","+
                    "\"msh\":"+dataInfo.getSku_shx()+","+
                    "\r\n";
            json=json+line;
        }
        json=json.substring(0, json.length()-3);
        json=json+"]}";
        PrintWriter out = resp.getWriter();
        out.println(json);
        out.close();


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
