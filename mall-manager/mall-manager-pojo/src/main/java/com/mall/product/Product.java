package com.mall.product;

import java.util.Date;

public class Product {
    private int shp_id;//商品id
    private String shp_mch;//商品名称
    private int flmch1_id;//分类名称1
    private int flmch2_id;//分类名称2
    private int pp_id;//品牌id
    private Date chjshj;//创建时间
    private String shp_msh;//商品描述

    public Product() {
    }

    public Product(int shp_id, String shp_mch, int flmch1_id, int flmch2_id, int pp_id, Date chjshj, String shp_msh) {
        this.shp_id = shp_id;
        this.shp_mch = shp_mch;
        this.flmch1_id = flmch1_id;
        this.flmch2_id = flmch2_id;
        this.pp_id = pp_id;
        this.chjshj = chjshj;
        this.shp_msh = shp_msh;
    }

    public int getShp_id() {
        return shp_id;
    }

    public void setShp_id(int shp_id) {
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

    public int getPp_id() {
        return pp_id;
    }

    public void setPp_id(int pp_id) {
        this.pp_id = pp_id;
    }

    public Date getChjshj() {
        return chjshj;
    }

    public void setChjshj(Date chjshj) {
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
                "shp_id=" + shp_id +
                ", shp_mch='" + shp_mch + '\'' +
                ", flmch1_id=" + flmch1_id +
                ", flmch2_id=" + flmch2_id +
                ", pp_id=" + pp_id +
                ", chjshj=" + chjshj +
                ", shp_msh='" + shp_msh + '\'' +
                '}';
    }
}
