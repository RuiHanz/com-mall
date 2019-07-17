package com.mall.user;
/*
个人信息
 */

public class User {
    private String yh_id;

    private String yh_mch;

    private String yh_shjh;

    private String yh_yx;

    private String yh_xb;
    private String id_card;

    public User() {
    }

    public User(String yh_id, String yh_mch, String yh_shjh, String yh_yx, String yh_xb, String id_card) {
        this.yh_id = yh_id;
        this.yh_mch = yh_mch;
        this.yh_shjh = yh_shjh;
        this.yh_yx = yh_yx;
        this.yh_xb = yh_xb;
        this.id_card = id_card;
    }

    @Override
    public String toString() {
        return "User{" +
                "yh_id='" + yh_id + '\'' +
                ", yh_mch='" + yh_mch + '\'' +
                ", yh_shjh='" + yh_shjh + '\'' +
                ", yh_yx='" + yh_yx + '\'' +
                ", yh_xb='" + yh_xb + '\'' +
                ", id_card='" + id_card + '\'' +
                '}';
    }

    public String getYh_id() {
        return yh_id;
    }

    public void setYh_id(String yh_id) {
        this.yh_id = yh_id;
    }

    public String getYh_mch() {
        return yh_mch;
    }

    public void setYh_mch(String yh_mch) {
        this.yh_mch = yh_mch;
    }

    public String getYh_shjh() {
        return yh_shjh;
    }

    public void setYh_shjh(String yh_shjh) {
        this.yh_shjh = yh_shjh;
    }

    public String getYh_yx() {
        return yh_yx;
    }

    public void setYh_yx(String yh_yx) {
        this.yh_yx = yh_yx;
    }

    public String getYh_xb() {
        return yh_xb;
    }

    public void setYh_xb(String yh_xb) {
        this.yh_xb = yh_xb;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }
}





