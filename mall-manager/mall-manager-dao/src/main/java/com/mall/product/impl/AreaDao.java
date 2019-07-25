package com.mall.product.impl;


import com.mall.product.Area;
import com.mall.product.City;
import com.mall.product.IAreaDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;
public class AreaDao implements IAreaDao {
    @Override
    public List<Area> getAreasByCid(int cid) throws SQLException {
        String sql = "select * from areas where cityid=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        return qr.query(sql, new BeanListHandler<>(Area.class), cid);

    }

    @Override
    public String getAreaByAid(int aid) throws SQLException {
        String sql = "select area from areas where areaid=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        Area area = qr.query(sql,new BeanHandler<>(Area.class),aid);
        return area.getArea();
    }
}
