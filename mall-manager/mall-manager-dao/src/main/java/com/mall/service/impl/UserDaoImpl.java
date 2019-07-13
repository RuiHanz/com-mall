package com.mall.service.impl;

import com.mall.service.IUserDao;
import com.mall.service.User;
import com.mall.service.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UserDaoImpl  implements IUserDao {
    @Override
    public User selelctUser2Login(String username, String password) throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select username,password from mmall_user where username=? and password =?";
       User user =  qr.query(sql,new BeanHandler<>(User.class),username,password);
        return user;
    }
}
