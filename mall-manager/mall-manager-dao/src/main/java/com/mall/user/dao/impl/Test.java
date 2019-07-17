package com.mall.user.dao.impl;

import com.mall.user.User;
import com.mall.user.dao.IUserDao;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws SQLException {
        IUserDao dao = new UserDaoImpl();
        List list1 = null;

            list1 = (List) dao.getUsersByid();

        System.out.println(list1);
    }
}
