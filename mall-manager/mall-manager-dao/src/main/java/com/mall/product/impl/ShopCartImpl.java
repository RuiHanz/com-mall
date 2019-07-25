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

    @Override
    public List<ShoppingCar> selectShopCarByYhid(String yh_id) throws SQLException {
        String sql = "select * from shoppingcar_info where yh_id=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        List<ShoppingCar> list = qr.query(sql,new BeanListHandler<>(ShoppingCar.class),yh_id);
        return list;
    }

    @Override
    public void updateShpshlByGwcid(String gwc_id,int shp_shl) throws SQLException {
        String sql = "update shoppingcar_info set shp_shl=? where gwc_id=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(ShoppingCar.class),shp_shl,gwc_id);
    }

    @Override
    public void deleteByGwcid(String gwc_id) throws SQLException {
        String sql = "delete from shoppingcar_info where gwc_id=?";
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        qr.execute(sql,new BeanHandler<>(ShoppingCar.class),gwc_id);
    }
    @Override
    public List<ShoppingCar> selectById(String gwc_id) throws SQLException {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        List<ShoppingCar> shoppingCarList= null;
        String sql="select * from shoppingcar_info where gwc_id = ?";
        shoppingCarList=qr.query(sql, new BeanListHandler<>(ShoppingCar.class),gwc_id);
        return shoppingCarList;

    }

    @Override
    public Integer deleteById(String gwc_id) throws SQLException {
        QueryRunner qr=new QueryRunner(JdbcUtils.getDs());
        String sql="delete from shoppingcar_info where gwc_id = ?";
        qr.update(sql,gwc_id);
        return 1;

    }

}
