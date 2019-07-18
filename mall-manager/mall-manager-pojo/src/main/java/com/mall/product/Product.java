package com.mall.product;

import java.util.Date;

public class Product {
    private String shp_id;//商品id
    private String shp_mch;//商品名称
    private int flmch1_id;//分类名称id1
    private int flmch2_id;//分类名称id2
    private double shp_jg;//商品价格
    private String shp_msh;//商品描述
    private String shp_ys;//商品颜色
    private int shp_kc;//商品库存
    private String pp_id;//品牌id
    private Date chjshj;//创建时间

    public Product() {
    }

    public Product(String shp_id, String shp_mch, int flmch1_id, int flmch2_id, double shp_jg, String shp_msh, String shp_ys, int shp_kc, String pp_id, Date chjshj) {
        this.shp_id = shp_id;
        this.shp_mch = shp_mch;
        this.flmch1_id = flmch1_id;
        this.flmch2_id = flmch2_id;
        this.shp_jg = shp_jg;
        this.shp_msh = shp_msh;
        this.shp_ys = shp_ys;
        this.shp_kc = shp_kc;
        this.pp_id = pp_id;
        this.chjshj = chjshj;
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

    public int getFlmch1_id() {
        return flmch1_id;
    }

    public void setFlmch1_id(int flmch1_id) {
        this.flmch1_id = flmch1_id;
    }

    public int getFlmch2_id() {
        return flmch2_id;
    }

    public void setFlmch2_id(int flmch2_id) {
        this.flmch2_id = flmch2_id;
    }

    public double getShp_jg() {
        return shp_jg;
    }

    public void setShp_jg(double shp_jg) {
        this.shp_jg = shp_jg;
    }

    public String getShp_msh() {
        return shp_msh;
    }

    public void setShp_msh(String shp_msh) {
        this.shp_msh = shp_msh;
    }

    public String getShp_ys() {
        return shp_ys;
    }

    public void setShp_ys(String shp_ys) {
        this.shp_ys = shp_ys;
    }

    public int getShp_kc() {
        return shp_kc;
    }

    public void setShp_kc(int shp_kc) {
        this.shp_kc = shp_kc;
    }

    public String getPp_id() {
        return pp_id;
    }

    public void setPp_id(String pp_id) {
        this.pp_id = pp_id;
    }

    public Date getChjshj() {
        return chjshj;
    }

    public void setChjshj(Date chjshj) {
        this.chjshj = chjshj;
    }

    @Override
    public String toString() {
        return "Product{" +
                "shp_id=" + shp_id +
                ", shp_mch='" + shp_mch + '\'' +
                ", flmch1_id=" + flmch1_id +
                ", flmch2_id=" + flmch2_id +
                ", shp_jg=" + shp_jg +
                ", shp_msh='" + shp_msh + '\'' +
                ", shp_ys='" + shp_ys + '\'' +
                ", shp_kc=" + shp_kc +
                ", pp_id=" + pp_id +
                ", chjshj=" + chjshj +
                '}';
    }
}
