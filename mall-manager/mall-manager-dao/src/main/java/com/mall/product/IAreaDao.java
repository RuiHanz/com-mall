package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IAreaDao {
    public List<Area> getAreasByCid(int id) throws SQLException;
    public String getAreaByAid(int aid) throws SQLException;
}
