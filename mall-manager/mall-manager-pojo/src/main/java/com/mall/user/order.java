package com.mall.user;
/*
个人订单实体类
 */
public class order {
    private String order_id;
    private String  order_time;
    private String  order_sum;
    private String order_state;
    private String order_receiver;
    private String shp_mch;

    public order() {
    }

    public order(String order_id, String order_time, String order_sum, String order_state, String order_receiver, String shp_mch) {
        this.order_id = order_id;
        this.order_time = order_time;
        this.order_sum = order_sum;
        this.order_state = order_state;
        this.order_receiver = order_receiver;
        this.shp_mch = shp_mch;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getOrder_time() {
        return order_time;
    }

    public void setOrder_time(String order_time) {
        this.order_time = order_time;
    }

    public String getOrder_sum() {
        return order_sum;
    }

    public void setOrder_sum(String order_sum) {
        this.order_sum = order_sum;
    }

    public String getOrder_state() {
        return order_state;
    }

    public void setOrder_state(String order_state) {
        this.order_state = order_state;
    }

    public String getOrder_receiver() {
        return order_receiver;
    }

    public void setOrder_receiver(String order_receiver) {
        this.order_receiver = order_receiver;
    }

    public String getShp_mch() {
        return shp_mch;
    }

    public void setShp_mch(String shp_mch) {
        this.shp_mch = shp_mch;
    }

    @Override
    public String toString() {
        return "order{" +
                "order_id='" + order_id + '\'' +
                ", order_time='" + order_time + '\'' +
                ", order_sum='" + order_sum + '\'' +
                ", order_state='" + order_state + '\'' +
                ", order_receiver='" + order_receiver + '\'' +
                ", shp_mch='" + shp_mch + '\'' +
                '}';
    }
}
