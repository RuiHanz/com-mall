package com.mall.service.impl.sku.dao.impl;


import com.mall.service.sku.dao.Product_Sku_InfoDao;
import com.mall.service.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.util.Date;

public class Product_Sku_InfoDaoImpl implements Product_Sku_InfoDao {

    @Override
    public void addSkuInfo(String sku_id, String shp_lb, String pp_id, String shp_zhl, String shp_chl, String shp_nc, String shp_yp, Float shp_jg, String shp_ys, String shp_xk, String shp_xshq, String sku_msh, String chjshj) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "insert into secondprogram1.product_sku_info(sku_id,shp_lb,pp_id,shp_zhl,shp_chl,shp_nc,shp_yp,shp_jg,shp_ys,shp_xk,shp_xshq,sku_msh,chjshj)" +
                "                value(?,?,?,?,?,?,?,?,?,?,?,?,date_format(CURRENT_TIMESTAMP,'%Y-%c-%d'));";
        try {

            qr.update(sql,sku_id,shp_lb,pp_id,shp_zhl,shp_chl,shp_nc,shp_yp,shp_jg,shp_ys,shp_xk,shp_xshq,sku_msh);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
