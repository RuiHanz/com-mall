package com.mall.product.impl;

import com.mall.product.Category;
import com.mall.product.ICategoryDao;
import com.mall.product.IMarkDao;
import com.mall.product.Mark;
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
    public List<Category> findCAll() throws SQLException {
        String sql = "select * from class_2";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<Category> cList = qr.query(sql,new BeanListHandler<>(Category.class));
        return cList;
    }
}
