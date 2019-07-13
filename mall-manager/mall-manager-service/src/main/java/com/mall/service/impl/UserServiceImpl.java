package com.mall.service.impl;

import com.mall.service.IUserDao;
import com.mall.service.IUserService;
import com.mall.service.User;

import java.sql.SQLException;

public class UserServiceImpl implements IUserService {
    @Override
    public User loginService(String username, String password) throws SQLException {
        IUserDao dao = new UserDaoImpl();

        return dao.selelctUser2Login(username,password);
    }
}
