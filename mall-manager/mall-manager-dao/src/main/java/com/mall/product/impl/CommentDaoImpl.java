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
    public List<Comment> getCommentUser(String yh_id) throws SQLException{
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from product_comment where yh_id = ?";

        List<Comment> cList = qr.query(sql,new BeanListHandler<>(Comment.class),yh_id);
        return cList;
    }

    @Override
    public List<Comment> getCommentPro(String shp_id) throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from product_comment where yh_id = ?";

        List<Comment> cList = qr.query(sql,new BeanListHandler<>(Comment.class),shp_id);
        return cList;

    }

    @Override
    public void addComment(Comment comment) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "insert into product_comment (pl_id,yh_id,plnr,plshj,hpjb,shp_mch,dd_id,shp_id) values (?,?,?,?,?,?,?,?)";
        try {
            //qr.insert(sql,new BeanHandler<>(Comment.class));
            qr.execute(sql,new BeanHandler<>(Comment.class),comment.getPl_id(),comment.getYh_id(),comment.getPlnr(),comment.getPlshj(),comment.getHpjb(),comment.getShp_mch(),comment.getDd_id(),comment.getShp_id());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    @Override
    public void delComment(String dd_id) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "delect from product_comment where dd_id = ?";
        try {
            qr.execute(sql,dd_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

//    @Override
//    public void updateComment(String dd_id) {
//        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
//        String sql =  "update set plnr = ? where dd_id = ?";
//        try {
//            qr.update(sql,dd_id);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
}
