package com.mall.product;

public class ShoppingCar {
    private String gwc_id;
    private String yh_id;
    private String shp_mch;
    private float shp_jg;
    private String mai_mch;
    private String shp_tp;
    private String sku_shx;

    public ShoppingCar() {
    }

    public ShoppingCar(String gwc_id, String yh_id, String shp_mch, float shp_jg, String mai_mch, String shp_tp, String sku_shx) {
        this.gwc_id = gwc_id;
        this.yh_id = yh_id;
        this.shp_mch = shp_mch;
        this.shp_jg = shp_jg;
        this.mai_mch = mai_mch;
        this.shp_tp = shp_tp;
        this.sku_shx = sku_shx;
    }

    public String getGwc_id() {
        return gwc_id;
    }

    public void setGwc_id(String gwc_id) {
        this.gwc_id = gwc_id;
    }

    public String getYh_id() {
        return yh_id;
    }

    public void setYh_id(String yh_id) {
        this.yh_id = yh_id;
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

    public String getMai_mch() {
        return mai_mch;
    }

    public void setMai_mch(String mai_mch) {
        this.mai_mch = mai_mch;
    }

    public String getShp_tp() {
        return shp_tp;
    }

    public void setShp_tp(String shp_tp) {
        this.shp_tp = shp_tp;
    }

    public String getSku_shx() {
        return sku_shx;
    }

    public void setSku_shx(String sku_shx) {
        this.sku_shx = sku_shx;
    }

    @Override
    public String toString() {
        return "ShoppingCar{" +
                "gwc_id='" + gwc_id + '\'' +
                ", yh_id='" + yh_id + '\'' +
                ", shp_mch='" + shp_mch + '\'' +
                ", shp_jg=" + shp_jg +
                ", mai_mch='" + mai_mch + '\'' +
                ", shp_tp='" + shp_tp + '\'' +
                ", sku_shx='" + sku_shx + '\'' +
                '}';
    }
}
