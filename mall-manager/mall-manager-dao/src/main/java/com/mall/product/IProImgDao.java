package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IProImgDao {
    public List<ProductImg> findAll() throws SQLException;
}
