package com.mall.service;

import java.sql.SQLException;

public interface IUserDao {

    public User selelctUser2Login(String username, String password) throws SQLException;
}
