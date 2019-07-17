package com.mall.user.dao.impl;

import com.mall.user.User;
import com.mall.user.dao.IUserDao;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl  implements IUserDao {

    @Override
    public List<User> getUsersByid() throws SQLException {

        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select yh_id,yh_mch,yh_shjh,yh_yx,id_card,yh_xb from user_account where yh_id=123 ";
        List<User> userlist = null;
       userlist=  qr.query(sql,new BeanListHandler<>(User.class));
        return userlist;
    }
}
