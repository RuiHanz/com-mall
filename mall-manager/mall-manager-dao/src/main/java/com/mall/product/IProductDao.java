package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    public List<Product> getAll() throws SQLException;
    public List<Product> getAll(String shp_id) throws SQLException;
    public Product selectShpByShpmch(String shpmch) throws SQLException;
    public Product selectShpByShpid(String shp_id) throws SQLException;
    //陈希元：查询全部商品
    public List<Product> findAll() throws SQLException;
    //查询,按描述模糊查询
    public List<Product> selectByShp_msh(String shp_mch);

}
