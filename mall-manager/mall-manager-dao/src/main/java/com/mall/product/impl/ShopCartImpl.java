package com.mall.product.impl;

import com.mall.product.IShopCartDao;
import com.mall.product.ShoppingCar;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class ShopCartImpl implements IShopCartDao {
    @Override
    public ShoppingCar selectAll() throws SQLException {
        String sql = "select shp_mch,shp_jg,sku_shx from shoppingcar_info";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        ShoppingCar cars = null;
       cars =  qr.query(sql,new BeanHandler<>(ShoppingCar.class));
        return cars;
    }
}
