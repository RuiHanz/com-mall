package com.mall.user.dao.impl;


import com.mall.user.Comments;
import com.mall.user.dao.ICommentsDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CommentsDaoImpl implements ICommentsDao {
    @Override
    public List<Comments> getCommentsById() throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql ="select shp_mch,plshj,plnr from product_comment where yh_id = 123";
        List<Comments> commentsList = qr.query(sql,new BeanListHandler<>(Comments.class));

        return commentsList;
    }
}
