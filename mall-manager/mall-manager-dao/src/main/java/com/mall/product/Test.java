package com.mall.product;
import com.mall.product.impl.ProductDaoImpl;
import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws SQLException {
        IProductDao p = new ProductDaoImpl();
        List<Product>list = p.selectByShp_msh("影精");
        for (Product P: list){
            System.out.println(list);

        }


    }
}
