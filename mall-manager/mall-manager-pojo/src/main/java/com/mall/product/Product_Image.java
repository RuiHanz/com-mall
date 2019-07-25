package com.mall.product;

public class Product_Image {
    private String tu_id;
    private String tu_mch;
    private String zy;
    private  String shp_id;
    private String url;

    public Product_Image() {
    }

    public Product_Image(String tu_id, String tu_mch, String zy, String shp_id, String url) {
        this.tu_id = tu_id;
        this.tu_mch = tu_mch;
        this.zy = zy;
        this.shp_id = shp_id;
        this.url = url;
    }

    public String getTu_id() {
        return tu_id;
    }

    public void setTu_id(String tu_id) {
        this.tu_id = tu_id;
    }

    public String getTu_mch() {
        return tu_mch;
    }

    public void setTu_mch(String tu_mch) {
        this.tu_mch = tu_mch;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getShp_id() {
        return shp_id;
    }

    public void setShp_id(String shp_id) {
        this.shp_id = shp_id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Product_Image{" +
                "tu_id='" + tu_id + '\'' +
                ", tu_mch='" + tu_mch + '\'' +
                ", zy='" + zy + '\'' +
                ", shp_id='" + shp_id + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
