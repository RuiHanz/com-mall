package com.mall.order;

import com.mall.order.impl.OrderDaoImpl;

import java.sql.SQLException;
import java.util.List;

public class orderTest {
    public static void main(String[] args) {

       //测试 查询订单
       /* IOrderDao dao = new OrderDaoImpl();
        List<Order> oList = null;
        try {
            oList = dao.selectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for (Order order :oList) {
            System.out.println(order);
        }*/
    //测试 添加订单
       IOrderDao dao = new OrderDaoImpl();
      Order order= new Order("235","lsif","idwl",6999,"李渊","zbdx","bibi",1,"2019-07-17","2019-07-20");
        try {
            dao.insertOrder(order);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
