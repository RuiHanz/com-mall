package com.mall.product;

import java.util.Date;

public class Comment {
    private String pl_id;
    private String yh_id;
    private String shp_id;
    private String plnr;
    private String plshj;
    private int hpjb;
    private String shp_mch;
    private String dd_id;

    public Comment() {
    }

    public Comment(String pl_id, String yh_id,String shp_id, String plnr, String plshj, int hpjb, String shp_mch, String dd_id) {
        this.pl_id = pl_id;
        this.yh_id = yh_id;
        this.shp_id = shp_id;
        this.plnr = plnr;
        this.plshj = plshj;
        this.hpjb = hpjb;
        this.shp_mch = shp_mch;
        this.dd_id = dd_id;
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

    public String getShp_id() {
        return shp_id;
    }

    public void setShp_id(String shp_id) {
        this.shp_id = shp_id;
    }

    public String getPlnr() {
        return plnr;
    }

    public void setPlnr(String plnr) {
        this.plnr = plnr;
    }

    public String getPlshj() {
        return plshj;
    }

    public void setPlshj(String plshj) {
        this.plshj = plshj;
    }

    public int getHpjb() {
        return hpjb;
    }

    public void setHpjb(int hpjb) {
        this.hpjb = hpjb;
    }

    public String getShp_mch() {
        return shp_mch;
    }

    public void setShp_mch(String shp_mch) {
        this.shp_mch = shp_mch;
    }

    public String getDd_id() {
        return dd_id;
    }

    public void setDd_id(String dd_id) {
        this.dd_id = dd_id;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "pl_id=" + pl_id +
                ", yh_id=" + yh_id +
                ", shp_id=" + shp_id +
                ", plnr='" + plnr + '\'' +
                ", plshj=" + plshj +
                ", hpjb=" + hpjb +
                ", shp_mch='" + shp_mch + '\'' +
                ", dd_id=" + dd_id +
                '}';
    }
}
