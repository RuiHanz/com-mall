package com.mall.product.impl;

import com.mall.product.IShopCartDao;
import com.mall.product.ShoppingCar;
import com.mall.user.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ShopCartImpl implements IShopCartDao {
    @Override
    public List<ShoppingCar> selectAll() throws SQLException {
        String sql = "select shp_mch,shp_jg,sku_shx from shoppingcar_info";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<ShoppingCar> cars = null;
       cars =  qr.query(sql,new BeanListHandler<>(ShoppingCar.class));
        return cars;
    }

    @Override
    public void addCar(ShoppingCar shopcar) throws SQLException {
        String sql = "insert into shoppingcar_info values(?,?,?,?,?,?,?,?,?)";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(ShoppingCar.class),shopcar.getYh_id()+shopcar.getShp_msh(),shopcar.getYh_id(),shopcar.getShp_mch(),shopcar.getShp_jg(),shopcar.getMai_mch(),shopcar.getShp_tp(),shopcar.getShp_msh(),shopcar.getShp_ys(),shopcar.getShp_shl());
    }

    @Override
    public ShoppingCar selectByShpmsh(String shp_msh) throws SQLException {
        String sql = "select * from shoppingcar_info where shp_msh=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        return qr.query(sql,new BeanHandler<>(ShoppingCar.class),shp_msh);

    }

    @Override
    public void updateShpshl(String shp_msh,int shp_shl) throws SQLException {
        String sql = "update shoppingcar_info set shp_shl=? where shp_msh=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(ShoppingCar.class),shp_shl,shp_msh);
    }


}
