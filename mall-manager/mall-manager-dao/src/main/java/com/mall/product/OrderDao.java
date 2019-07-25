package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface OrderDao {
    //添加订单
    public Integer addOrder(String gwc_id, String yjsdshj, Integer jdh, String dz_id, String shp_mch) throws SQLException;
    public List<Order> getOrderBid(String yh_id) throws SQLException;
}
