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
    public List<Product> getAll(String shp_id) throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql ="select * from product where shp_id = ?";
        //String sql ="select * from product where shp_id = ?";

        List<Product> pList = qr.query(sql,new BeanListHandler<>(Product.class),shp_id);

        return pList;
    }
}
