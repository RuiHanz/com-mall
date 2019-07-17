package com.mall.user.dao;

import com.mall.user.User;

import java.sql.SQLException;
import java.util.List;


public interface IUserDao {
    public List<User> getUsersByid() throws SQLException;

}
