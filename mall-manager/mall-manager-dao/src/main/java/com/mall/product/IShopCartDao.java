package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IShopCartDao {
    //查询所有购物车信息
    public ShoppingCar selectAll() throws SQLException;
}
