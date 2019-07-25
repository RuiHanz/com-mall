package com.mall.product.impl;


import com.mall.product.*;
import com.mall.user.utils.JdbcUtils;
import com.mall.user.utils.UUIDUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class OrderDaoImpl implements OrderDao {
    @Override
    public Integer addOrder(String gwc_id,String yjsdshj,Integer jdh,String dz_id,String shp_mch) throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtils.getDs());
        String sql = "insert into `order`(dd_id,yh_id,chjshj,zje,shhr,jdh,yjsdshj,dzh_mch,shp_mch) values(?,?,date_format(CURRENT_TIMESTAMP,'%Y-%c-%d'),?,?,?,?,?,?)";
        IaddressDao addressDao=new AddressDaoImpl();
        IShopCartDao shoppingCarDao=new ShopCartImpl();
        UUIDUtils uuidUtils=new UUIDUtils();
        String dd_id=uuidUtils.getId();//订单id
        System.out.println(dd_id);
        java.sql.Date date=java.sql.Date.valueOf(yjsdshj);    //预计送达时间
        System.out.println(date);
        IaddressDao iad = new AddressDaoImpl();
        Address address = iad.getInfoByDzid(dz_id);
        System.out.println(address.getShjr()+address.getDz_mch());
        List<ShoppingCar> shoppingCarList=null;
        shoppingCarList=shoppingCarDao.selectById(gwc_id);    //查询购物车信息通过id，返回一个list

        for (ShoppingCar shoppingCar:shoppingCarList){
              //通过查询的购物车信息查询用户地址信息

                Double zje=shoppingCar.getShp_shl()*shoppingCar.getShp_jg();
            System.out.println(zje);
            System.out.println(shoppingCar.getYh_id());
                qr.update(sql,dd_id,shoppingCar.getYh_id(),zje,address.getShjr(),jdh,date,address.getDz_mch(),shp_mch);

        }

        return 1;
    }
    @Override
    public List<Order> getOrderBid(String yh_id) throws SQLException {
        QueryRunner qr =new QueryRunner(JdbcUtils.getDs());
        String sql = "select *  from `order` where yh_id = ?";
        List<Order> orderList = qr.query(sql,new BeanListHandler<>(Order.class),yh_id);
        return orderList;
    }
}
