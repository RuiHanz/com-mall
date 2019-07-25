package com.mall.product;
import java.sql.SQLException;
import java.util.List;

public interface ICityDao {
    public List<City> getCitysByPid(int pid) throws SQLException;
    public String getCityByCid(int cid) throws SQLException;
}
