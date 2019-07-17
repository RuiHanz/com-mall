package com.mmall.controller;

//import com.mall.service.IUserService;
//import com.mall.service.impl.UserServiceImpl;
import com.mall.service.utils.MD5Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.SQLException;

public class BaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String method = req.getParameter("_method");
//        if(method == null){
//            execute(req, resp);
//        }
//        req.setCharacterEncoding("UTF-8");
//        resp.setContentType("text/html;charset=UTF-8");
//        try {
//            // 获取请求标识
//            String methodName = req.getParameter("method");
//            // 获取指定类的字节码对象
//            Class<? extends BaseServlet> clazz = this.getClass();//这里的this指的是继承BaseServlet对象
//            // 通过类的字节码对象获取方法的字节码对象
//            Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
//            // 让方法执行
//            method.invoke(this, req, resp);
//
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }



     //   Class clazz = this.getClass();
//        try {
//           String forwardPath =  (String)this.getClass().getMethod(method,HttpServletRequest.class,HttpServletResponse.class).invoke(this,req,resp);
//           if(forwardPath != null){
//               req.getRequestDispatcher(forwardPath).forward(req,resp);
//           }
//
//        } catch (IllegalAccessException e) {
//            e.printStackTrace();
//        } catch (InvocationTargetException e) {
//            e.printStackTrace();
//        } catch (NoSuchMethodException e) {
//            e.printStackTrace();
//        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }



//    public  String execute(HttpServletRequest req, HttpServletResponse resp){
//
//        return null;
//    }
}
