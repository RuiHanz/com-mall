package com.mall.product.impl;

import com.mall.product.*;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class MarkDaoImpl implements IMarkDao , ICategoryDao {

    @Override
    public List<Mark> findAll() throws SQLException {
        String sql = "select * from mark";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<Mark> mList = qr.query(sql,new BeanListHandler<>(Mark.class));
        return mList;
    }

    @Override
    public List<PPAll> findProByOrder(String pp_id,int flmch2_id) throws SQLException {
        String sql = "SELECT product.shp_id,product.shp_mch,product.shp_msh,product_image.url from product,product_image where pp_id ='？' and flmch2_id=？ and product.shp_id=product_image.shp_id";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<PPAll> proByOrder = qr.query(sql,new BeanListHandler<>(PPAll.class),2);
        return proByOrder;
    }

    @Override
    public List<Category> findCAll() throws SQLException {
        String sql = "select * from class_2";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<Category> cList = qr.query(sql,new BeanListHandler<>(Category.class));
        return cList;
    }
}
