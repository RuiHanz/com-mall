package com.mall.user.dao;

import com.mall.user.order;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDao {
    public List<order> getOrderBid() throws SQLException;
}
