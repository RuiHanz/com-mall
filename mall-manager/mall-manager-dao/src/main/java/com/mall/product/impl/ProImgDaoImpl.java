package com.mall.product.impl;

import com.mall.product.IProImgDao;
import com.mall.product.ProductImg;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProImgDaoImpl implements IProImgDao {
    @Override
    public List<ProductImg> findAll() throws SQLException {
        String sql = "SELECT product_image.url,product.shp_mch,product.shp_jg FROM product_image,product where product.shp_id=product_image.shp_id";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<ProductImg> pList = qr.query(sql,new BeanListHandler<>(ProductImg.class));
        return pList;
    }
}
