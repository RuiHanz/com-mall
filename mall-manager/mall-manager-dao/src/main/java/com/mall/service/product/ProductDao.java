package com.mall.service.product;

import java.util.List;

public interface ProductDao {
    //添加商品
    public void addProduct(String shp_id,String shp_mch,Integer flmch1_id,Integer flmch2_id,String pp_id,String chjshj,String shp_msh,float shp_jg,String shp_ys,Integer shp_kc );

    //查询全部
    public List<Product> selectAll();
    //查询，按名称
    public List<Product> selectByName(String shp_mch);
    //查询,按描述模糊查询
    public List<Product> selectByShp_msh(String shp_msh);
    //查询，按id
    public List<Product> selectByShp_id(String shp_id);

    //删除商品 按id
    public void deleteProduct(String shp_id);

    //修改商品 按id
    public void updateProduct(Product product,String id);
}
