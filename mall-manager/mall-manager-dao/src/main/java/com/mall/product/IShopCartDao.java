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
    //更新商品数量
    public void updateShpshl(String shp_msh ,int shp_shl) throws SQLException;
}
