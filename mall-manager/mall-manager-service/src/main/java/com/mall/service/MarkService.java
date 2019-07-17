package com.mall.service;

import com.mall.service.markAndclass.Mark;

import java.sql.SQLException;

public interface MarkService {
    //查询商标
    public Mark selectMarkIdByNameService(String ppmch) throws SQLException;
}
