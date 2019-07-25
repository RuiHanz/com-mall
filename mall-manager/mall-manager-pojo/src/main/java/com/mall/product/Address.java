package com.mall.product;
/*
地址实体类
 */
public class Address {
    private String dz_id;
    private String dz_mch;
    private String lxfsh;
    private String shjr;
    private String yh_id;

    @Override
    public String toString() {
        return "address{" +
                "dz_id='" + dz_id + '\'' +
                ", dz_mch='" + dz_mch + '\'' +
                ", lxfsh='" + lxfsh + '\'' +
                ", shjr='" + shjr + '\'' +
                ", yh_id='" + yh_id + '\'' +
                '}';
    }

    public String getDz_id() {
        return dz_id;
    }

    public void setDz_id(String dz_id) {
        this.dz_id = dz_id;
    }

    public String getDz_mch() {
        return dz_mch;
    }

    public void setDz_mch(String dz_mch) {
        this.dz_mch = dz_mch;
    }


    public Address() {
    }

    public String getLxfsh() {
        return lxfsh;
    }

    public void setLxfsh(String lxfsh) {
        this.lxfsh = lxfsh;
    }

    public String getShjr() {
        return shjr;
    }

    public void setShjr(String shjr) {
        this.shjr = shjr;
    }

    public String getYh_id() {
        return yh_id;
    }

    public void setYh_id(String yh_id) {
        this.yh_id = yh_id;
    }

    public Address(String dz_id, String dz_mch, String lxfsh, String shjr, String yh_id) {
        this.dz_id = dz_id;
        this.dz_mch = dz_mch;
        this.lxfsh = lxfsh;
        this.shjr = shjr;
        this.yh_id = yh_id;
    }


}
