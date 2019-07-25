package com.mall.addcarservice;

import com.mall.product.IShopCartDao;
import com.mall.product.ShoppingCar;
import com.mall.product.impl.ShopCartImpl;

import java.sql.SQLException;
import java.util.List;

public class ShowCarService {
    public List<ShoppingCar> showCarByYhid(String yh_id) throws SQLException {
        IShopCartDao iscd = new ShopCartImpl();
        List<ShoppingCar> list = iscd.selectShopCarByYhid(yh_id);
        return list;
    }


}
