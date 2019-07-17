import com.mall.service.impl.product.ProductDaoImpl;
import com.mall.service.product.Product;
import com.mall.service.product.ProductDao;
import org.junit.jupiter.api.Test;

import java.util.List;

public class test1 {
    @Test
    public void testDmo1(){
        ProductDaoImpl dao=new ProductDaoImpl();
        List<Product> productList=dao.selectAll();
        for(Product product:productList) {
            System.out.println(product);
        }
    }
    @Test
    public void testDemo2(){
        ProductDao dao=new ProductDaoImpl();
        List<Product> productList=dao.selectByName("leanvo vn7");
        for(Product product:productList) {
            System.out.println(product);
        }
    }
    @Test
    public void testDemo3(){
        ProductDao dao=new ProductDaoImpl();
        List<Product> productList=dao.selectByShp_msh("i7");
        for(Product product:productList) {
            System.out.println(product);
        }
    }
    @Test
    public void testDemo4(){
        ProductDao dao=new ProductDaoImpl();
        List<Product> productList=dao.selectByShp_id("2");
        for(Product product:productList) {
            System.out.println(product);
        }
    }
    @Test
    public void testDemo5(){
        ProductDao dao=new ProductDaoImpl();
        Product product=new Product();
        product.setShp_id("8");
        product.setShp_mch("8");
        product.setFlmch1_id(0);
        product.setFlmch2_id(0);
        product.setPp_id("2");
        product.setShp_ys("8");
        product.setShp_kc(8);
        product.setShp_jg((float)8.0);
        product.setShp_msh("8");
        product.setChjshj("8");
        dao.updateProduct(product,"4");
    }

}
