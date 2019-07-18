package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    public List<Product> getAll(String shp_id) throws SQLException;

}
