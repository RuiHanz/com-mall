package com.mall.product.impl;

import com.mall.product.Address;
import com.mall.product.ICommentDao;
import com.mall.product.IaddressDao;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException {
        ICommentDao i = new CommentDaoImpl();
        System.out.println(i.getCommentPro("1EA7D5D45A3C4B638253C0AA045DB020"));
    }
}
