package com.mall.user.dao.impl;


import com.mall.user.Shopingcar;
import com.mall.user.dao.IShoppingCarDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ShoppingcarDaoImpl implements IShoppingCarDao {
    @Override
    public List<Shopingcar> getShopingcarById() throws SQLException {
        String sql = "select shp_mch,shp_jg,sku_shx from shoppingcar where yh_id = 123";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<Shopingcar> carlist = null;
        carlist =  qr.query(sql,new BeanListHandler<>(Shopingcar.class));
        return carlist;
    }
}
