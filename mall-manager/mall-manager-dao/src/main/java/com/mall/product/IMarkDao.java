package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IMarkDao {
    //查找所有品牌名字
    public List<Mark> findAll() throws SQLException;
}
