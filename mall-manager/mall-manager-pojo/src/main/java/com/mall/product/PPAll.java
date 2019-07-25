package com.mall.product;

public class PPAll {
    private String shp_id;//商品id
    private String shp_mch;//商品名称
    private String url;//图片地址
    private String shp_msh;//商品描述
    private  String shp_jg;//商品价格

    public PPAll() {
    }

    public PPAll(String shp_id, String shp_mch, String url, String shp_msh, String shp_jg) {
        this.shp_id = shp_id;
        this.shp_mch = shp_mch;
        this.url = url;
        this.shp_msh = shp_msh;
        this.shp_jg = shp_jg;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getShp_msh() {
        return shp_msh;
    }

    public void setShp_msh(String shp_msh) {
        this.shp_msh = shp_msh;
    }

    public String getShp_jg() {
        return shp_jg;
    }

    public void setShp_jg(String shp_jg) {
        this.shp_jg = shp_jg;
    }

    @Override
    public String toString() {
        return "PPAll{" +
                "shp_id='" + shp_id + '\'' +
                ", shp_mch='" + shp_mch + '\'' +
                ", url='" + url + '\'' +
                ", shp_msh='" + shp_msh + '\'' +
                ", shp_jg='" + shp_jg + '\'' +
                '}';
    }
}
