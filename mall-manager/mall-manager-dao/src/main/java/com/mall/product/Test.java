package com.mall.product;
import com.mall.product.impl.ProImgDaoImpl;
import com.mall.product.impl.ProductDaoImpl;
import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws SQLException {
//        IProductDao p = new ProductDaoImpl();
//        List<Product>list = p.selectByShp_msh("影精");
//        for (Product P: list){
//            System.out.println(list);
//        }
        ProImgDaoImpl pp = new ProImgDaoImpl();
        List<PPAll> ppList = pp.findAllPP();
        for (Object o: ppList){
            System.out.println(o);
        }

    }
}
