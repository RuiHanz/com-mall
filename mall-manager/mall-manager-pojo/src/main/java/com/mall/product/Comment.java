package com.mall.product;

import java.util.Date;

public class Comment {
    private int pl_id;
    private int yh_id;
    private int shp_id;
    private String plnr;
    private Date plshj;
    private int hpjb;
    private String shp_mch;
    private int dd_id;

    public Comment() {
    }

    public Comment(int pl_id, int yh_id,int shp_id, String plnr, Date plshj, int hpjb, String shp_mch, int dd_id) {
        this.pl_id = pl_id;
        this.yh_id = yh_id;
        this.shp_id = shp_id;
        this.plnr = plnr;
        this.plshj = plshj;
        this.hpjb = hpjb;
        this.shp_mch = shp_mch;
        this.dd_id = dd_id;
    }

    public int getPl_id() {
        return pl_id;
    }

    public void setPl_id(int pl_id) {
        this.pl_id = pl_id;
    }

    public int getYh_id() {
        return yh_id;
    }

    public void setYh_id(int yh_id) {
        this.yh_id = yh_id;
    }

    public int getShp_id() {
        return shp_id;
    }

    public void setShp_id(int shp_id) {
        this.shp_id = shp_id;
    }

    public String getPlnr() {
        return plnr;
    }

    public void setPlnr(String plnr) {
        this.plnr = plnr;
    }

    public Date getPlshj() {
        return plshj;
    }

    public void setPlshj(Date plshj) {
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

    public int getDd_id() {
        return dd_id;
    }

    public void setDd_id(int dd_id) {
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
