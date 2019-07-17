package com.mall.addcarservice;

import com.mall.product.IProductDao;
import com.mall.product.IShopCartDao;
import com.mall.product.Product;
import com.mall.product.ShoppingCar;
import com.mall.product.impl.ProductDaoImpl;
import com.mall.product.impl.ShopCartImpl;

import java.sql.SQLException;

public class AddCarService {
    public ShoppingCar addCar(String shp_id,String yh_id) throws SQLException {
        IProductDao ipdao = new ProductDaoImpl();
        IShopCartDao isdao = new ShopCartImpl();
        System.out.println("--------------------------");
        Product product = ipdao.selectShpByShpid(shp_id);
        System.out.println(product);
        ShoppingCar sc = isdao.selectByShpmsh(product.getShp_msh());
        if(sc==null){
            isdao.addCar(new ShoppingCar(yh_id+product.getShp_msh(),yh_id,product.getShp_mch(),product.getShp_jg(),"王海","tupian",product.getShp_msh(),product.getShp_ys(),1));
        }else{
            isdao.updateShpshl(product.getShp_msh(),sc.getShp_shl()+1);
        }
        return  null;


    }
}
