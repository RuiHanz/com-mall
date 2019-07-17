package com.mall.order.impl;

import com.mall.order.IOrderDao;
import com.mall.order.Order;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class OrderDaoImpl implements IOrderDao {
    @Override
    public void insertOrder(Order order) throws SQLException {
        String sql ="insert into `order` values(?,?,?,?,?,?,?,?,?,?)";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(Order.class),order.getDd_id(),order.getYh_id(),order.getChjshj(),order.getZje(),order.getShhr(),
                order.getJdh(),order.getYjsdshj(),order.getDzh_mch(),order.getMai_id(),order.getShp_mch());
    }

    @Override
    public void deleteOrderByid(int id) throws SQLException {
      String sql = "delete from order where dd_id =?" ;
      QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
      qr.update(sql,id);

    }

    @Override
    public void update(Order order) throws SQLException {
      String sql = "update order set yh_id=?,chjshj=?,zje=?,shhr=?," +
              "jdh=?, yjsdshj=?, dzh_mch=?,mai_id=?,shp_mch=? where dd_id=?";
      QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
      qr.update(sql,order.getYh_id(),order.getChjshj(),order.getZje(),order.getShhr(),order.getJdh(),
               order.getYjsdshj(),order.getDzh_mch(),order.getMai_id(),order.getShp_mch(),order.getDd_id() );
    }

    @Override
    public List<Order> selectAll() throws SQLException {
        String sql = "select * from `order`";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<Order> orderList = qr.query(sql,new BeanListHandler<>(Order.class));
        return orderList;
    }
}
