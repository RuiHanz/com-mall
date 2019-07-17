package com.mall.service.impl.product;

import com.mall.service.product.Product;
import com.mall.service.product.ProductDao;
import com.mall.service.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProductDaoImpl implements ProductDao {


    @Override
    public void addProduct(String shp_id, String shp_mch, Integer flmch1_id, Integer flmch2_id, String pp_id, String chjshj, String shp_msh, float shp_jg, String shp_ys, Integer shp_kc) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "insert into secondprogram1.product(shp_id,shp_mch,flmch1_id,flmch2_id,pp_id,chjshj,shp_msh,shp_jg,shp_ys,shp_kc)" +
                "                value(?,?,?,?,?,date_format(CURRENT_TIMESTAMP,'%Y-%c-%d'),?,?,?,?);";
        try {

            qr.update(sql,shp_id,shp_mch,flmch1_id,flmch2_id,pp_id,shp_msh,shp_jg,shp_ys,shp_kc);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Product> selectAll() {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from secondprogram1.product";
        List<Product> productList=null;
        try {
            productList = qr.query(sql.toString(), new BeanListHandler<Product>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;

    }

    @Override
    public List<Product> selectByName(String shp_mch) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from secondprogram1.product where shp_mch=?";
        List<Product> productList=null;
        try {
            productList = qr.query(sql.toString(), new BeanListHandler<Product>(Product.class),shp_mch);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    @Override
    public List<Product> selectByShp_msh(String shp_msh) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from secondprogram1.product where shp_msh like '%' ? '%'";
        List<Product> productList=null;

        try {
            productList = qr.query(sql.toString(), new BeanListHandler<Product>(Product.class),shp_msh);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;

    }

    @Override
    public List<Product> selectByShp_id(String shp_id) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "select * from secondprogram1.product where shp_id=?";
        List<Product> productList=null;
        try {
            productList = qr.query(sql.toString(), new BeanListHandler<Product>(Product.class),shp_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    @Override
    public void deleteProduct(String shp_id) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "delete from secondprogram1.product where shp_id=?";
        try {
            qr.update(sql, shp_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public void updateProduct(Product product,String id) {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql="UPDATE secondprogram1.product SET shp_id=?,shp_mch=?,flmch1_id=?,flmch2_id=?,pp_id=?,chjshj=date_format(CURRENT_TIMESTAMP,'%Y-%c-%d'),shp_msh=?,shp_jg=?,shp_ys=?,shp_kc=?" +
                " WHERE shp_id=?;";
        try {
            qr.update(sql,product.getShp_id(),product.getShp_mch(),product.getFlmch1_id(),product.getFlmch2_id(),product.getPp_id(),product.getShp_msh(),product.getShp_jg(),product.getShp_ys(),product.getShp_kc(),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
