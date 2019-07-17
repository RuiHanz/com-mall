package com.mall.order;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDao {
    //添加订单
    public  void   insertOrder(Order order) throws SQLException;
    //删除订单 根据订单编号
    public void  deleteOrderByid(int id) throws SQLException;
    //修改订单
    public  void update(Order order) throws SQLException;
    //查询所有订单
    public List<Order> selectAll() throws SQLException;
}
