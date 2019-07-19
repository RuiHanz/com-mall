package com.mmall.controller;

import com.mall.product.Product;
import com.mall.product.impl.ProductDaoImpl;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws SQLException {
        ProductDaoImpl pro = new ProductDaoImpl();
        List<Product> pList = null;
        pList = pro.findAll();
        System.out.println(pList.size());
    }
}
