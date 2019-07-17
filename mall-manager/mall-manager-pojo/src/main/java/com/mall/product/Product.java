package com.mall.product;

import java.util.Date;

public class Product {
    private String  shp_id;//商品id
    private String shp_mch;//商品名称
    private float shp_jg;//商品价格
    private String shp_ys;//商品颜色
    private int sho_cx;//商品库存
    private String shp_msh;//商品描述
    public Product() {
    }
    public Product(String shp_id, String shp_mch, int flmch1_id, int flmch2_id, float shp_jg, String shp_ys, int sho_cx, int pp_id, Date chjshj, String shp_msh) {
        this.shp_id = shp_id;
        this.shp_mch = shp_mch;
        this.shp_jg = shp_jg;
        this.shp_ys = shp_ys;
        this.sho_cx = sho_cx;
        this.shp_msh = shp_msh;
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









    public float getShp_jg() {
        return shp_jg;
    }

    public void setShp_jg(float shp_jg) {
        this.shp_jg = shp_jg;
    }

    public String getShp_ys() {
        return shp_ys;
    }

    public void setShp_ys(String shp_ys) {
        this.shp_ys = shp_ys;
    }

    public int getSho_cx() {
        return sho_cx;
    }
    public void setSho_cx(int sho_cx) {
        this.sho_cx = sho_cx;
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
                ", shp_jg=" + shp_jg +
                ", shp_ys='" + shp_ys + '\'' +
                ", sho_cx=" + sho_cx +
                ", shp_msh='" + shp_msh + '\'' +
                '}';
    }
}
