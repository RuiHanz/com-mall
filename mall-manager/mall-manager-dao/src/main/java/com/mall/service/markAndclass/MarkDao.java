package com.mall.service.markAndclass;

import java.sql.SQLException;

public interface MarkDao {
    //增

    //查询商标
    public Mark selectMarkIdByName(String ppmch) throws SQLException;
}
