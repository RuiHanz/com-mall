package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    public List<Product> getAll() throws SQLException;

}
