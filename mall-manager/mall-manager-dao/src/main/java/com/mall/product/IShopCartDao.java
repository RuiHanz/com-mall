package com.mall.product;

import java.sql.SQLException;
import java.util.List;

public interface IShopCartDao {
    //查询所有购物车信息
    public List<ShoppingCar> selectAll() throws SQLException;
    //添加购物车
    public void addCar(ShoppingCar shopcar) throws SQLException;
    //根据商品描述查询购物车
    public ShoppingCar selectByShpmsh(String shp_msh) throws SQLException;
    //更新购物车商品数量
    public void updateShpshl(String shp_msh, int shp_shl) throws SQLException;
    //根据用户id查询购物车
    public List<ShoppingCar> selectShopCarByYhid(String yh_id) throws SQLException;
    //通过购物车id更新数量
    public void updateShpshlByGwcid(String gwc_id, int shp_shl) throws SQLException;
    //删除购物车根据gwc_id
    public void deleteByGwcid(String gwc_id) throws SQLException;
    //查询按id
    public List<ShoppingCar> selectById(String gwc_id) throws SQLException;
    //删除 按id
    public Integer deleteById(String gwc_id) throws SQLException;

}

