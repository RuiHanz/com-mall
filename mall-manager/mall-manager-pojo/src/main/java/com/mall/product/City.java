package com.mall.product;

public class City {
    private int id;
    private int cityid;
    private String city;
    private String provinceid;
    public City(){

    }

    public City(int id, int cityid, String city, String provinceid) {
        this.id = id;
        this.cityid = cityid;
        this.city = city;
        this.provinceid = provinceid;
    }

    public City(int cityid, String city, String provinceid) {
        this.cityid = cityid;
        this.city = city;
        this.provinceid = provinceid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvinceid() {
        return provinceid;
    }

    public void setProvinceid(String provinceid) {
        this.provinceid = provinceid;
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", cityid=" + cityid +
                ", city='" + city + '\'' +
                ", provinceid='" + provinceid + '\'' +
                '}';
    }
}
