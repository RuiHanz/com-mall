package com.mall.addcarservice;

import com.mall.product.IShopCartDao;
import com.mall.product.impl.ShopCartImpl;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException {
        IShopCartDao dao = new ShopCartImpl();
        dao.deleteByGwcid("123--------I5/16G/west1T/GTX1080ti/京东方60HZ");
    }
}
