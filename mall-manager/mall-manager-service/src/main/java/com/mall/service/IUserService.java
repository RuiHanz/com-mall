package com.mall.service;

import java.sql.SQLException;

public interface IUserService  {
    public  User loginService(String username,String password) throws SQLException;
}
