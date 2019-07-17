package com.mall.service.impl;

import com.mall.service.Product_Sku_InfoService;
import com.mall.service.impl.sku.dao.impl.Product_Sku_InfoDaoImpl;
import com.mall.service.sku.dao.Product_Sku_InfoDao;

public class Product_Sku_InfoServiceImpl implements Product_Sku_InfoService {

    @Override
    public void addSkuInfoService(String sku_id, String shp_lb, String pp_id, String shp_zhl, String shp_chl, String shp_nc, String shp_yp, Float shp_jg, String shp_ys, String shp_xk, String shp_xshq, String sku_msh, String chjshj) {
        Product_Sku_InfoDao dao=new Product_Sku_InfoDaoImpl();
        dao.addSkuInfo(sku_id,shp_lb,pp_id,shp_zhl,shp_chl,shp_nc,shp_yp,shp_jg,shp_ys,shp_xk,shp_xshq,sku_msh,chjshj);
    }
}
