package com.mmall.controller;

import com.mall.service.IUserService;
import com.mall.service.User;
import com.mall.service.impl.UserServiceImpl;
import com.mall.service.utils.MD5Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

public class BaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("_method");
        if(method == null){
            execute(req, resp);
        }
     //   Class clazz = this.getClass();
        try {
           String forwardPath =  (String)this.getClass().getMethod(method,HttpServletRequest.class,HttpServletResponse.class).invoke(this,req,resp);
           if(forwardPath != null){
               req.getRequestDispatcher(forwardPath).forward(req,resp);
           }

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }



    public  String execute(HttpServletRequest req, HttpServletResponse resp){

        return null;
    }
}
