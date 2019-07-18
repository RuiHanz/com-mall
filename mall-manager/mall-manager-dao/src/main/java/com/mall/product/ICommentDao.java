package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface ICommentDao {
    //查询个人评论
    public List<Comment> getCommentUser(String yh_id) throws SQLException;
    //查询商品评论
    public List<Comment> getCommentPro(String shp_id) throws SQLException;
    //添加评论
    public void addComment(Comment comment);
    //删除评论
    public void delComment(String dd_id);
    //修改评论
//    public void updateComment(String dd_id);
}
