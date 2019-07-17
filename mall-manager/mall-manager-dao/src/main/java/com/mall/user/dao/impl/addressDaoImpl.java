package com.mall.user.dao.impl;

import com.mall.product.Product;
import com.mall.user.address;
import com.mall.user.dao.IaddressDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class addressDaoImpl implements IaddressDao {
    @Override
    public List<address> getAddressById() throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql ="select shir,lxfsh,dzmch,dzzt from user_address where yh_id = 123";
        List<address> addList = qr.query(sql,new BeanListHandler<>(address.class));

        return addList;
    }
}
