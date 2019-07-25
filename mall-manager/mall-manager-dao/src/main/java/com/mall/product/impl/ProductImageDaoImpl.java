package com.mall.product.impl;

import com.mall.product.IProductImageDao;
import com.mall.product.Product_Image;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class ProductImageDaoImpl implements IProductImageDao {
    @Override
    public String getTuByShp_id(String shp_id) throws SQLException {
        String sql = "select url from product_image where shp_id=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String url = qr.query(sql,new BeanHandler<>(Product_Image.class),shp_id).getUrl();
        return  url;
    }
}
