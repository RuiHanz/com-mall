package com.mall.user.dao;

import com.mall.user.Comments;

import java.sql.SQLException;
import java.util.List;

public interface ICommentsDao {
    public List<Comments> getCommentsById() throws SQLException;
}
