package com.mall.product;
import java.sql.SQLException;
import java.util.List;
public interface IUserDao {

    public List<User> getUsersByid(String yh_id) throws SQLException;
    public User login(User user) throws SQLException;
    public boolean register(User user);
}
