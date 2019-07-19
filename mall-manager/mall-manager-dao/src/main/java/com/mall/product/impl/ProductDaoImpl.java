package com.mall.product.impl;

import com.mall.product.IProductDao;
import com.mall.product.Product;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import java.sql.SQLException;
import java.util.List;

public class ProductDaoImpl implements IProductDao {
    @Override
    public List<Product> getAll() throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql ="select * from product where shp_id = 1001";
        List<Product> pList = qr.query(sql,new BeanListHandler<>(Product.class));

        return pList;
    }

    @Override
    public List<Product> findAll() throws SQLException {
        String sql = "select * from product";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<Product> pList = qr.query(sql,new BeanListHandler<>(Product.class));
        return pList;
    }
}
