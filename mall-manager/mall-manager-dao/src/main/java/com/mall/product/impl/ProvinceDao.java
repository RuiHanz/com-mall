package com.mall.product.impl;


import com.mall.product.IProvinceDao;
import com.mall.product.Province;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import java.sql.SQLException;
import java.util.List;

public class ProvinceDao implements IProvinceDao {
    @Override
    public List<Province> getProvince() throws SQLException {
        String sql = "select * from provinces";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        return qr.query(sql,new BeanListHandler<>(Province.class));
    }

    @Override
    public String getProvinceBypid(int pid) throws SQLException {
        String sql = "select province from provinces where provinceid=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        Province province = qr.query(sql,new BeanHandler<>(Province.class),pid);
        return province.getProvince();
    }
}
