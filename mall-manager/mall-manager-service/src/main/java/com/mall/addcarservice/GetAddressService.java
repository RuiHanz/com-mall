package com.mall.addcarservice;

import com.mall.product.IAreaDao;
import com.mall.product.ICityDao;
import com.mall.product.IProductDao;
import com.mall.product.IProvinceDao;
import com.mall.product.impl.AreaDao;
import com.mall.product.impl.CityDao;
import com.mall.product.impl.ProvinceDao;

import java.sql.SQLException;

public class GetAddressService {
    public String getAddress(int pid,int cid,int aid) throws SQLException {
        IProvinceDao ipd = new ProvinceDao();
        ICityDao icd = new CityDao();
        IAreaDao iad = new AreaDao();
        return ipd.getProvinceBypid(pid)+icd.getCityByCid(cid)+iad.getAreaByAid(aid);
    }
}
