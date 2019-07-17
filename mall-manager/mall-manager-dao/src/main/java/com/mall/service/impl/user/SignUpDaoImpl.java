package com.mall.service.impl.user;

import com.mall.service.user.SignUpDao;
import com.mall.service.utils.JdbcUtils;
import com.mysql.jdbc.Connection;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class SignUpDaoImpl implements SignUpDao {

    @Override
    public void saveSignData(String yh_id,String yh_mch, String yh_mm, String yh_shjh) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());

        String sql = "INSERT INTO secondprogram1.user_account(yh_id,yh_mch,yh_mm,yh_xm,yh_shjh,yh_yx,yh_tx,id_card,yh_xb,yh_jg)"+
                "values(?,?,?,?,?,?,?,?,?,?)";
        try {
            qr.update(sql,yh_id,yh_mch,yh_mm,null,yh_shjh,null,null,null,null,null);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
