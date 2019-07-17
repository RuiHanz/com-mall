package com.mall.order;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    private String  dd_id;
    private String  yh_id;
    private String  mai_id;
    private float zje;
    private String shhr;
    private String dzh_mch;
    private String  shp_mch;
    private Integer jdh;
    private String chjshj;
    private String yjsdshj;
    //无参构造

    public Order() {
    }

    //有参构造

    public Order(String dd_id, String yh_id, String mai_id, float zje, String shhr, String dzh_mch, String shp_mch, Integer jdh, String  chjshj, String yjsdshj) {
        this.dd_id = dd_id;
        this.yh_id = yh_id;
        this.mai_id = mai_id;
        this.zje = zje;
        this.shhr = shhr;
        this.dzh_mch = dzh_mch;
        this.shp_mch = shp_mch;
        this.jdh = jdh;
        this.chjshj = chjshj;
        this.yjsdshj = yjsdshj;
    }

    //get set方法

    public String getDd_id() {
        return dd_id;
    }

    public void setDd_id(String dd_id) {
        this.dd_id = dd_id;
    }

    public String getYh_id() {
        return yh_id;
    }

    public void setYh_id(String yh_id) {
        this.yh_id = yh_id;
    }

    public String getMai_id() {
        return mai_id;
    }

    public void setMai_id(String mai_id) {
        this.mai_id = mai_id;
    }

    public float getZje() {
        return zje;
    }

    public void setZje(float zje) {
        this.zje = zje;
    }

    public String getShhr() {
        return shhr;
    }

    public void setShhr(String shhr) {
        this.shhr = shhr;
    }

    public String getDzh_mch() {
        return dzh_mch;
    }

    public void setDzh_mch(String dzh_mch) {
        this.dzh_mch = dzh_mch;
    }

    public String getShp_mch() {
        return shp_mch;
    }

    public void setShp_mch(String shp_mch) {
        this.shp_mch = shp_mch;
    }

    public Integer getJdh() {
        return jdh;
    }

    public void setJdh(Integer jdh) {
        this.jdh = jdh;
    }

    public String  getChjshj() {
        return chjshj;
    }

    public void setChjshj(String chjshj) {
        this.chjshj = chjshj;
    }

    public String getYjsdshj() {
        return yjsdshj;
    }

    public void setYjsdshj(String yjsdshj) {
        this.yjsdshj = yjsdshj;
    }

    //toString方法

    @Override
    public String toString() {
        return "Order{" +
                "dd_id='" + dd_id + '\'' +
                ", yh_id='" + yh_id + '\'' +
                ", mai_id='" + mai_id + '\'' +
                ", zje=" + zje +
                ", shhr='" + shhr + '\'' +
                ", dzh_mch='" + dzh_mch + '\'' +
                ", shp_mch='" + shp_mch + '\'' +
                ", jdh=" + jdh +
                ", chjshj=" + chjshj +
                ", yjsdshj=" + yjsdshj +
                '}';
    }
}
