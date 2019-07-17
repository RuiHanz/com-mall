package com.mall.service.user;


import java.sql.SQLException;
import java.util.List;


public interface IUserDao {
    public List<User> getUsersByid() throws SQLException;

}
