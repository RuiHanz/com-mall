package com.mall.service.impl.markAndclass.dao.impl;

import com.mall.service.markAndclass.Mark;
import com.mall.service.markAndclass.MarkDao;
import com.mall.service.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class MarkDaoImpl implements MarkDao {

    @Override
    public Mark selectMarkIdByName(String ppmch) throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select pp_id from secondprogram1.mark where ppmch=?";
        Mark mark =  qr.query(sql,new BeanHandler<>(Mark.class),ppmch);
        return mark;


    }
}
