package com.mall.product;

import com.mall.product.ProductImg;

import java.sql.SQLException;
import java.util.List;

public interface IProImgDao {
    public List<ProductImg> findAll() throws SQLException;

    //商品展示专用
    public List<PPAll> findAllPP() throws SQLException;
}
