package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface ICategoryDao {
    //查找所有分类
    public List<Category> findCAll() throws SQLException;
}
