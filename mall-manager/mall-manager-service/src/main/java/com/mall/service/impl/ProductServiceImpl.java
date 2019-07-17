package com.mall.service.impl;

import com.mall.service.ProductService;
import com.mall.service.impl.product.ProductDaoImpl;
import com.mall.service.product.Product;
import com.mall.service.product.ProductDao;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    @Override
    public void addProductService(String shp_id, String shp_mch, Integer flmch1_id, Integer flmch2_id, String pp_id, String chjshj, String shp_msh, float shp_jg, String shp_ys, Integer shp_kc) {

        ProductDao dao = new ProductDaoImpl();
        dao.addProduct(shp_id,shp_mch,flmch1_id,flmch2_id,pp_id,chjshj,shp_msh,shp_jg,shp_ys,shp_kc);
    }

    @Override
    public List<Product> selectAllService() {
        ProductDao dao = new ProductDaoImpl();
        List<Product> productList=null;
        productList=dao.selectAll();
        return productList;
    }

    @Override
    public List<Product> selectByNameService(String shp_mch) {
        ProductDao dao = new ProductDaoImpl();
        List<Product> productList=null;
        productList=dao.selectByName(shp_mch);
        return productList;


    }

    @Override
    public List<Product> selectByShp_mshService(String shp_msh) {
        ProductDao dao = new ProductDaoImpl();
        List<Product> productList=null;
        productList=dao.selectByShp_msh(shp_msh);
        return productList;
    }

    @Override
    public List<Product> selectByShp_idService(String shp_id) {
        ProductDao dao = new ProductDaoImpl();
        List<Product> productList=null;
        productList=dao.selectByShp_id(shp_id);
        return productList;
    }

    @Override
    public void deleteProductService(String shp_id) {
        ProductDao dao = new ProductDaoImpl();
        dao.deleteProduct(shp_id);

    }

    @Override
    public void updateProduct(Product product, String id) {
        ProductDao dao = new ProductDaoImpl();
        dao.updateProduct(product,id);
    }
}
