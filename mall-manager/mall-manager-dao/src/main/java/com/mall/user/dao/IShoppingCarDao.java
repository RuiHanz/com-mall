package com.mall.user.dao;


import com.mall.user.Shopingcar;

import java.sql.SQLException;
import java.util.List;

public interface IShoppingCarDao {
    public List<Shopingcar> getShopingcarById() throws SQLException;
}
