package com.mall.service.product;

import java.util.Date;

public class Product {
    private String shp_id;          //品牌id+创
    private String shp_mch;         //商品名称
    private  Integer flmch1_id;     //分类编号1
    private  Integer flmch2_id;     //分类编号2
    private String pp_id;           //品牌id
    private String chjshj;            //创建时间
    private String shp_msh;         //商品描述
    private Float shp_jg;           //商品价格
    private String shp_ys;          //颜色
    private Integer shp_kc;         //商品库存

    public Product() {
        super();
    }

    public Product(String shp_id, String shp_mch, Integer flmch1_id, Integer flmch2_id, String pp_id, String chjshj, String shp_msh) {
        this.shp_id = shp_id;
        this.shp_mch = shp_mch;
        this.flmch1_id = flmch1_id;
        this.flmch2_id = flmch2_id;
        this.pp_id = pp_id;
        this.chjshj = chjshj;
        this.shp_msh = shp_msh;
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

    public Integer getShp_kc() {
        return shp_kc;
    }

    public void setShp_kc(Integer shp_kc) {
        this.shp_kc = shp_kc;
    }

    public String getShp_id() {
        return shp_id;
    }

    public void setShp_id(String shp_id) {
        this.shp_id = shp_id;
    }

    public String getShp_mch() {
        return shp_mch;
    }

    public void setShp_mch(String shp_mch) {
        this.shp_mch = shp_mch;
    }

    public Integer getFlmch1_id() {
        return flmch1_id;
    }

    public void setFlmch1_id(Integer flmch1_id) {
        this.flmch1_id = flmch1_id;
    }

    public Integer getFlmch2_id() {
        return flmch2_id;
    }

    public void setFlmch2_id(Integer flmch2_id) {
        this.flmch2_id = flmch2_id;
    }

    public String getPp_id() {
        return pp_id;
    }

    public void setPp_id(String pp_id) {
        this.pp_id = pp_id;
    }

    public String getChjshj() {
        return chjshj;
    }

    public void setChjshj(String chjshj) {
        this.chjshj = chjshj;
    }

    public String getShp_msh() {
        return shp_msh;
    }

    public void setShp_msh(String shp_msh) {
        this.shp_msh = shp_msh;
    }

    @Override
    public String toString() {
        return "Product{" +
                "shp_id='" + shp_id + '\'' +
                ", shp_mch='" + shp_mch + '\'' +
                ", flmch1_id=" + flmch1_id +
                ", flmch2_id=" + flmch2_id +
                ", pp_id='" + pp_id + '\'' +
                ", chjshj=" + chjshj +
                ", shp_msh='" + shp_msh + '\'' +
                ", shp_jg=" + shp_jg +
                ", shp_ys='" + shp_ys + '\'' +
                ", shp_kc=" + shp_kc +
                '}';
    }
}
