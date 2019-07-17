package com.mall.user;
/*
地址实体类
 */
public class address {
    private String dz_id;
    private String dz_mch;
    private String dzzt;
    private String lxfsh;
    private String shjr;

    public address() {
    }

    public address(String dz_id, String dz_mch, String dzzt, String lxfsh, String shjr) {
        this.dz_id = dz_id;
        this.dz_mch = dz_mch;
        this.dzzt = dzzt;
        this.lxfsh = lxfsh;
        this.shjr = shjr;
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

    public String getDzzt() {
        return dzzt;
    }

    public void setDzzt(String dzzt) {
        this.dzzt = dzzt;
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

    @Override
    public String toString() {
        return "address{" +
                "dz_id='" + dz_id + '\'' +
                ", dz_mch='" + dz_mch + '\'' +
                ", dzzt='" + dzzt + '\'' +
                ", lxfsh='" + lxfsh + '\'' +
                ", shjr='" + shjr + '\'' +
                '}';
    }
}
