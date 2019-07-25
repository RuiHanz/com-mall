package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IMarkDao {
    //查找所有品牌名字
    public List<Mark> findAll() throws SQLException;
    //目录分类专用
    public List<PPAll> findProByOrder(String pp_id,int flmch2_id) throws SQLException;
}
