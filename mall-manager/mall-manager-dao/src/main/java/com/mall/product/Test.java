package com.mall.product;


import com.mall.product.impl.MarkDaoImpl;
import com.mall.product.impl.ProductDaoImpl;


import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws SQLException {
        MarkDaoImpl mark = new MarkDaoImpl();
        List<Mark> mList = mark.findAll();
        List<Category> cList = mark.findCAll();
        System.out.println(mList);
        System.out.println(cList);
    }
}
