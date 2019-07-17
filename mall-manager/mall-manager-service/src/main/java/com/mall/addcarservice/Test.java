package com.mall.addcarservice;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) {
        AddCarService acs = new AddCarService();
        try {
            acs.addCar("1","123");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
