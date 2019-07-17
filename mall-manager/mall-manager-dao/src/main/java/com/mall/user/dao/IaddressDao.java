package com.mall.user.dao;

import com.mall.user.address;

import java.sql.SQLException;
import java.util.List;

public interface IaddressDao {
    public List<address> getAddressById() throws SQLException;
}
