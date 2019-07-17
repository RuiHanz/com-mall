package com.mall.user;

public class Comments {
    private String pl_id;
    private String yh_id;
    private String plshj;
    private String plnr;
    private String shp_mch;

    public Comments(String pl_id, String yh_id, String plshj, String plnr, String shp_mch) {
        this.pl_id = pl_id;
        this.yh_id = yh_id;
        this.plshj = plshj;
        this.plnr = plnr;
        this.shp_mch = shp_mch;
    }

    public Comments() {
    }

    public String getPl_id() {
        return pl_id;
    }

    public void setPl_id(String pl_id) {
        this.pl_id = pl_id;
    }

    public String getYh_id() {
        return yh_id;
    }

    public void setYh_id(String yh_id) {
        this.yh_id = yh_id;
    }

    public String getPlshj() {
        return plshj;
    }

    public void setPlshj(String plshj) {
        this.plshj = plshj;
    }

    public String getPlnr() {
        return plnr;
    }

    public void setPlnr(String plnr) {
        this.plnr = plnr;
    }

    public String getShp_mch() {
        return shp_mch;
    }

    public void setShp_mch(String shp_mch) {
        this.shp_mch = shp_mch;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "pl_id='" + pl_id + '\'' +
                ", yh_id='" + yh_id + '\'' +
                ", plshj='" + plshj + '\'' +
                ", plnr='" + plnr + '\'' +
                ", shp_mch='" + shp_mch + '\'' +
                '}';
    }
}
