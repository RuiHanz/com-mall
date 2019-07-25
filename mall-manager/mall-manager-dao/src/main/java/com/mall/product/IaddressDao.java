package com.mall.product;



import java.sql.SQLException;
import java.util.List;

public interface IaddressDao {
    //获取地址
    public List<Address> getAddressById(String yh_id) throws SQLException;
    //修改地址
    public void updateShpshlByDzid(String dz_id, String dz_mch, String lxfsh, String shjr) throws SQLException;
    //删除地址
    public void deleteByDzid(String dz_id) throws SQLException;
    //增加地址
    public void insertDZ(Address address) throws SQLException;
    public List<Address> selectAddressByYh_id(String yh_id) throws SQLException;
    //根据地址ID查地址
    public Address getInfoByDzid(String dz_id) throws SQLException;
}
