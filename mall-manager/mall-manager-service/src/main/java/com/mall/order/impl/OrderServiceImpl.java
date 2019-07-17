package com.mall.order.impl;

import com.mall.order.IOrderDao;
import com.mall.order.IOrderService;
import com.mall.order.Order;

import java.sql.SQLException;
import java.util.List;

public class OrderServiceImpl implements IOrderService {
   IOrderDao dao = new OrderDaoImpl();
    @Override
    public void addOrder(Order order) {
        try {
            dao.insertOrder(order);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeOrder(int id) {
        try {
            dao.deleteOrderByid(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyOrder(Order order) {
        try {
            dao.update(order);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Order> findAll() {
        List<Order> orderList = null;
        try {
            orderList=dao.selectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }
}
