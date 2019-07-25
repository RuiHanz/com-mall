package com.mall.product.impl;
import com.mall.product.City;
import com.mall.product.ICityDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import java.sql.SQLException;
import java.util.List;

public class CityDao implements ICityDao {
    @Override
    public List<City> getCitysByPid(int pid) throws SQLException {
        String sql = "select * from cities where provinceid = ?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        return qr.query(sql,new BeanListHandler<>(City.class),pid);
    }
    @Override
    public String getCityByCid(int cid) throws SQLException {
        String sql = "select city from cities where cityid=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        City city = qr.query(sql,new BeanHandler<>(City.class),cid);
        return city.getCity();
    }
}
