package com.mall.product;
import java.sql.SQLException;
import java.util.List;

public interface IProvinceDao {
    public List<Province> getProvince() throws SQLException;
    public String getProvinceBypid(int pid) throws SQLException;
}
