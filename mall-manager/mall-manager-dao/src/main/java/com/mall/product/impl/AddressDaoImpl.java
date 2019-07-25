package com.mall.product.impl;


import com.mall.product.Address;
import com.mall.product.IaddressDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class AddressDaoImpl implements IaddressDao {
    @Override
    public List<Address> getAddressById(String yh_id) throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql ="select dz_id,shjr,lxfsh,dz_mch from user_address where yh_id = ?";
        List<Address> addList = qr.query(sql,new BeanListHandler<>(Address.class),yh_id);
        return addList;
    }

    @Override
    public void updateShpshlByDzid(String dz_id, String dz_mch, String lxfsh, String shjr) throws SQLException {

    }

    @Override
    public void deleteByDzid(String dz_id) throws SQLException {
        String sql = "delete from user_address where dz_id=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(Address.class),dz_id);
    }

    @Override
    public void insertDZ(Address address) throws SQLException {
        String sql = "insert into user_address values(?,?,?,?,?)";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(Address.class),address.getDz_id(),address.getDz_mch(),address.getYh_id(),address.getShjr(),address.getLxfsh());
    }
    @Override
    public List<Address> selectAddressByYh_id(String yh_id) throws SQLException {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        List<Address> addressList= null;
        String sql="select * from secondprogram1.user_address where yh_id = ?";
        addressList=qr.query(sql, new BeanListHandler<>(Address.class),yh_id);
        return addressList;
    }

    @Override
    public Address getInfoByDzid(String dz_id) throws SQLException {
        String sql = "select * from user_address where dz_id=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        return  qr.query(sql,new BeanHandler<>(Address.class),dz_id);

    }
}
