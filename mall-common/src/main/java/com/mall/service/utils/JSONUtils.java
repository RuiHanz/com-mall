package com.mall.service.utils;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;

public class JSONUtils {

    // 从输入流中获取JSON数据
    public static JSONObject getJSON (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 输入流
        StringBuffer sb = new StringBuffer();
        String line = null;
        BufferedReader br = request.getReader();
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        // 返回JSONObject
        String jsonStr = sb.toString();
        JSONObject jsonObj = JSONObject.parseObject(jsonStr);
        return jsonObj;
    }

    // 返回JSON格式的数据
    public static void returnJSON (HttpServletRequest request, HttpServletResponse response, JSONObject jsonObj)
            throws ServletException, IOException {
        // 设置编码格式，解决乱码
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter() ;
        out.write(jsonObj.toString());
        out.flush();
        out.close();
    }

}


