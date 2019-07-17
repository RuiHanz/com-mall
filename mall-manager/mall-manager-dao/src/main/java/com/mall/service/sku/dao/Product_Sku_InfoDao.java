package com.mall.service.sku.dao;

import java.util.Date;

public interface Product_Sku_InfoDao {
    //添加sku信息表
    public void addSkuInfo(String sku_id, String shp_lb, String pp_id, String shp_zhl, String shp_chl, String shp_nc, String shp_yp, Float shp_jg, String shp_ys, String shp_xk, String shp_xshq, String sku_msh, String chjshj);

}
