package com.mall.product;

public class Mark {
    private String pp_id;//品牌id
    private String ppmch;//品牌名称
    private  String url;//图片地址
    private int flmch1_id;//分类名称1的id

    public Mark() {
    }

    public Mark(String pp_id, String ppmch, String url, int flmch1_id) {
        this.pp_id = pp_id;
        this.ppmch = ppmch;
        this.url = url;
        this.flmch1_id = flmch1_id;
    }

    public String getPp_id() {
        return pp_id;
    }

    public void setPp_id(String pp_id) {
        this.pp_id = pp_id;
    }

    public String getPpmch() {
        return ppmch;
    }

    public void setPpmch(String ppmch) {
        this.ppmch = ppmch;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getFlmch1_id() {
        return flmch1_id;
    }

    public void setFlmch1_id(int flmch1_id) {
        this.flmch1_id = flmch1_id;
    }

    @Override
    public String toString() {
        return "Mark{" +
                "pp_id='" + pp_id + '\'' +
                ", ppmch='" + ppmch + '\'' +
                ", url='" + url + '\'' +
                ", flmch1_id=" + flmch1_id +
                '}';
    }
}
