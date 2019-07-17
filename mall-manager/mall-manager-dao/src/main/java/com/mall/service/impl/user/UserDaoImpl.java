package com.mall.service.impl.user;

import com.mall.service.user.IUserDao;
import com.mall.service.user.User;
import com.mall.service.utils.JdbcUtils;
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
