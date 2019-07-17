package com.mall.product;

import java.util.List;

public interface ICommentDao {
    //查询评论
    public List<Comment> getComment();
    //添加评论
    public void addComment(Comment comment);
    //删除评论
    public void delComment(int dd_id);
    //修改评论
    public void updateComment(int dd_id);
}
