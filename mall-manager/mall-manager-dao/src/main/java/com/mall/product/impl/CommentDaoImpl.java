package com.mall.product.impl;

import com.mall.product.Comment;
import com.mall.product.ICommentDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CommentDaoImpl implements ICommentDao {
    @Override
    public List<Comment> getComment() {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from product_comment where shp_id = ?";
        try {
            List<Comment> cList = qr.query(sql,new BeanListHandler<>(Comment.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addComment(Comment comment) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "insert into product_comment (plnr) values (?)";

//        String sql = "insert into product_comment (pl_id,yh_id,plnr,plshj,hpjb,shp_mch,dd_id,shp_id) values (?,?,?,?,?,?,?,?)";
        try {
            qr.query(sql,new BeanHandler<>(Comment.class),comment.getDd_id(),comment.getHpjb(),comment.getPl_id(),comment.getPlnr(),comment.getPlshj(),comment.getShp_id(),comment.getShp_mch(),comment.getYh_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delComment(int dd_id) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "delect from product_comment where dd_id = ?";
        try {
            qr.execute(sql,dd_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateComment(int dd_id) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql =  "";
    }
}
