package com.mall.product.impl;
import com.mall.product.IUserDao;
import com.mall.product.User;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl  implements IUserDao {

    @Override
    public List<User> getUsersByid(String yh_id) throws SQLException {

        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select yh_id,yh_mch,yh_shjh,yh_yx,id_card,yh_xb from user_account where yh_id=?";
        List<User> userlist = null;
       userlist=  qr.query(sql,new BeanListHandler<>(User.class),yh_id);
        return userlist;
    }
    @Override
    public User login(User user) throws SQLException {
        String sql = "select * from user_account where yh_shjh=?and yh_mm=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());

        return qr.query(sql,new BeanHandler<>(User.class),user.getYh_shjh(),user.getYh_mm());
    }

    @Override
    public boolean register(User user) {
        return false;
    }
}
