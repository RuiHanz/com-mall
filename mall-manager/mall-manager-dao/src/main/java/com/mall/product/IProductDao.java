package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    public List<Product> getAll() throws SQLException;
    public Product selectShpByShpmch(String shpmch) throws SQLException;
    public Product selectShpByShpid(String shp_id) throws SQLException;
}
