package com.mall.product;

public class Category {
    private int flmch2_id;//分类名称2的id
    private String flmch2;//分类名称2的描述
    private int flmch1_id;//分类名称1的id

    public Category() {
    }

    public Category(int flmch2_id, String flmch2, int flmch1_id) {
        this.flmch2_id = flmch2_id;
        this.flmch2 = flmch2;
        this.flmch1_id = flmch1_id;
    }

    public int getFlmch2_id() {
        return flmch2_id;
    }

    public void setFlmch2_id(int flmch2_id) {
        this.flmch2_id = flmch2_id;
    }

    public String getFlmch2() {
        return flmch2;
    }

    public void setFlmch2(String flmch2) {
        this.flmch2 = flmch2;
    }

    public int getFlmch1_id() {
        return flmch1_id;
    }

    public void setFlmch1_id(int flmch1_id) {
        this.flmch1_id = flmch1_id;
    }

    @Override
    public String toString() {
        return "Category{" +
                "flmch2_id=" + flmch2_id +
                ", flmch2='" + flmch2 + '\'' +
                ", flmch1_id=" + flmch1_id +
                '}';
    }
}
