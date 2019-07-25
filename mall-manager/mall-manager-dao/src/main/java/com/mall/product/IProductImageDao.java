package com.mall.product;

import java.sql.SQLException;

public interface IProductImageDao {
    //查询图片通过shp_id
    public String getTuByShp_id(String shp_id) throws SQLException;
}
