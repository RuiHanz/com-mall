package com.mall.product;

import com.mall.product.impl.ProductDaoImpl;
import com.mall.product.impl.ShopCartImpl;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        IProductDao dao = new ProductDaoImpl();
        Product list = null;
        try {
             list = dao.selectShpByShpmch("戴尔灵越");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(list);

    }
}
