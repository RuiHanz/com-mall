package com.mall.service.impl;

import com.mall.service.MarkService;
import com.mall.service.impl.markAndclass.dao.impl.MarkDaoImpl;
import com.mall.service.markAndclass.Mark;
import com.mall.service.markAndclass.MarkDao;

import java.sql.SQLException;

public class MarkServiceImpl implements MarkService {
    @Override
    public Mark selectMarkIdByNameService(String ppmch) throws SQLException {
        MarkDao dao=new MarkDaoImpl();
        return dao.selectMarkIdByName(ppmch);
    }
}
