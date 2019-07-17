package com.mall.service.sku;

import javax.management.remote.SubjectDelegationPermission;
import java.util.Date;

public class Product_Sku_Info {

    private String sku_id;     //skuid
    private String shp_lb;    //电脑类别
    private Integer pp_id;     //电脑品牌
    private String shpz_zhl;    //电脑分类
    private String shp_chi;   //处理器型号
    private String shp_nc;    //内存型号
    private String shp_yp;     //硬盘型号
    private Float  shp_jg;        //价格
    private String shp_ys;    //颜色
    private String shp_xk;   //显卡型号
    private String shp_xshq;  //显示器型号
    private String sku_msh;    //描述//自己写
    private Date   chjshj;     //创建时间

    public Product_Sku_Info() {
        super();
    }

    public Product_Sku_Info(String sku_id, String shp_lb, Integer pp_id, String shpz_zhl, String shp_chi, String shp_nc, String shp_yp, Float shp_jg, String shp_ys, String shp_xk, String shp_xshq, String sku_msh, Date chjshj) {
        this.sku_id = sku_id;
        this.shp_lb = shp_lb;
        this.pp_id = pp_id;
        this.shpz_zhl = shpz_zhl;
        this.shp_chi = shp_chi;
        this.shp_nc = shp_nc;
        this.shp_yp = shp_yp;
        this.shp_jg = shp_jg;
        this.shp_ys = shp_ys;
        this.shp_xk = shp_xk;
        this.shp_xshq = shp_xshq;
        this.sku_msh = sku_msh;
        this.chjshj = chjshj;
    }

    public String getSku_id() {
        return sku_id;
    }

    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }

    public String getShp_lb() {
        return shp_lb;
    }

    public void setShp_lb(String shp_lb) {
        this.shp_lb = shp_lb;
    }

    public Integer getPp_id() {
        return pp_id;
    }

    public void setPp_id(Integer pp_id) {
        this.pp_id = pp_id;
    }

    public String getShpz_zhl() {
        return shpz_zhl;
    }

    public void setShpz_zhl(String shpz_zhl) {
        this.shpz_zhl = shpz_zhl;
    }

    public String getShp_chi() {
        return shp_chi;
    }

    public void setShp_chi(String shp_chi) {
        this.shp_chi = shp_chi;
    }

    public String getShp_nc() {
        return shp_nc;
    }

    public void setShp_nc(String shp_nc) {
        this.shp_nc = shp_nc;
    }

    public String getShp_yp() {
        return shp_yp;
    }

    public void setShp_yp(String shp_yp) {
        this.shp_yp = shp_yp;
    }

    public Float getShp_jg() {
        return shp_jg;
    }

    public void setShp_jg(Float shp_jg) {
        this.shp_jg = shp_jg;
    }

    public String getShp_ys() {
        return shp_ys;
    }

    public void setShp_ys(String shp_ys) {
        this.shp_ys = shp_ys;
    }

    public String getShp_xk() {
        return shp_xk;
    }

    public void setShp_xk(String shp_xk) {
        this.shp_xk = shp_xk;
    }

    public String getShp_xshq() {
        return shp_xshq;
    }

    public void setShp_xshq(String shp_xshq) {
        this.shp_xshq = shp_xshq;
    }

    public String getSku_msh() {
        return sku_msh;
    }

    public void setSku_msh(String sku_msh) {
        this.sku_msh = sku_msh;
    }

    public Date getChjshj() {
        return chjshj;
    }

    public void setChjshj(Date chjshj) {
        this.chjshj = chjshj;
    }

    @Override
    public String toString() {
        return "Product_Sku_Info{" +
                "sku_id='" + sku_id + '\'' +
                ", shp_lb='" + shp_lb + '\'' +
                ", pp_id=" + pp_id +
                ", shpz_zhl='" + shpz_zhl + '\'' +
                ", shp_chi='" + shp_chi + '\'' +
                ", shp_nc='" + shp_nc + '\'' +
                ", shp_yp='" + shp_yp + '\'' +
                ", shp_jg=" + shp_jg +
                ", shp_ys='" + shp_ys + '\'' +
                ", shp_xk='" + shp_xk + '\'' +
                ", shp_xshq='" + shp_xshq + '\'' +
                ", sku_msh='" + sku_msh + '\'' +
                ", chjshj=" + chjshj +
                '}';
    }
}
