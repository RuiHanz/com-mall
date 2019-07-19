package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    public List<Product> getAll() throws SQLException;

    //陈希元：查询全部商品
    public List<Product> findAll() throws SQLException;

}
