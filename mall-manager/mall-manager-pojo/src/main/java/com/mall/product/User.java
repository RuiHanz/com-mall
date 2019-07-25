package com.mall.product;
/*
个人信息
 */

public class User {
    private String yh_id;      //用户id
    private String yh_mch;     //用户名称
    private String yh_mm;      //用户密码
    private String yh_xm;      //用户姓名
    private String yh_shjh;    //用户手机号
    private String yh_yx;      //用户邮箱
    private String yh_tx;      //用户头像
    private String yh_xb;      //用户性别
    private String id_card;    //用户身份证
    private String yh_jg;      //用户住址
    private String yh_zht;     //用户状态

    public User() {

    }

    public User(String yh_id, String yh_mch, String yh_mm, String yh_xm, String yh_shjh, String yh_yx, String yh_tx, String yh_xb, String id_card, String yh_jg, String yh_zht) {
        this.yh_id = yh_id;
        this.yh_mch = yh_mch;
        this.yh_mm = yh_mm;
        this.yh_xm = yh_xm;
        this.yh_shjh = yh_shjh;
        this.yh_yx = yh_yx;
        this.yh_tx = yh_tx;
        this.yh_xb = yh_xb;
        this.id_card = id_card;
        this.yh_jg = yh_jg;
        this.yh_zht = yh_zht;
    }

    public String getYh_zht() {
        return yh_zht;
    }

    public void setYh_zht(String yh_zht) {
        this.yh_zht = yh_zht;
    }

    public String getYh_mm() {
        return yh_mm;
    }

    public void setYh_mm(String yh_mm) {
        this.yh_mm = yh_mm;
    }

    public String getYh_xm() {
        return yh_xm;
    }

    public void setYh_xm(String yh_xm) {
        this.yh_xm = yh_xm;
    }

    public String getYh_tx() {
        return yh_tx;
    }

    public void setYh_tx(String yh_tx) {
        this.yh_tx = yh_tx;
    }

    public String getYh_jg() {
        return yh_jg;
    }

    public void setYh_jg(String yh_jg) {
        this.yh_jg = yh_jg;
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

    @Override
    public String toString() {
        return "User{" +
                "yh_id='" + yh_id + '\'' +
                ", yh_mch='" + yh_mch + '\'' +
                ", yh_mm='" + yh_mm + '\'' +
                ", yh_xm='" + yh_xm + '\'' +
                ", yh_shjh='" + yh_shjh + '\'' +
                ", yh_yx='" + yh_yx + '\'' +
                ", yh_tx='" + yh_tx + '\'' +
                ", yh_xb='" + yh_xb + '\'' +
                ", id_card='" + id_card + '\'' +
                ", yh_jg='" + yh_jg + '\'' +
                ", yh_zht='" + yh_zht + '\'' +
                '}';
    }
}





