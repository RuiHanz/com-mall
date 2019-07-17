package com.mall.user.dao.impl;

import com.mall.product.Product;
import com.mall.user.dao.IOrderDao;
import com.mall.user.order;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class OrederDaoImpl implements IOrderDao {
    @Override
    public List<order> getOrderBid() throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql = "select dd_id,chjshj,zje,jdh,shhr ,shp_mch from order where yh_id = 123";
        List<order> orderList = qr.query(sql,new BeanListHandler<>(order.class));
        return orderList;
    }
}
