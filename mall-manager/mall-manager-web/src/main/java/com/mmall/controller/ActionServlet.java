package com.mmall.controller;

import com.mall.service.MarkService;
import com.mall.service.Product_Sku_InfoService;
import com.mall.service.impl.MarkServiceImpl;
import com.mall.service.impl.Product_Sku_InfoServiceImpl;
import com.mall.service.utils.UUIDUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ActionServlet extends BaseServlet{
    public void addProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//        UUIDUtils uuid=new UUIDUtils();
//        String sku_id= uuid.getId();
//        String shp_lb=req.getParameter("type2");//商品类别
//        String ppmch=req.getParameter("ppname");//品牌名称
//        String shp_zhl=req.getParameter("sjp_zhl");//商品种类
//        String shp_chl=req.getParameter("cpu");//cpu
//        String shp_nc=req.getParameter("ram");//RAM
//        String shp_yp=req.getParameter("caliche");//caliche
//        String shp_xk=req.getParameter("gpu");//gpu
//        String shp_xshq=req.getParameter("tv");//显示器
//        float shp_jg= Float.parseFloat(req.getParameter("jg"));  //价格
//        String shp_ys=req.getParameter("color");//颜色
//        String sku_msh=null;
//        System.out.println(sku_id+"--"+shp_lb+"--"+ppmch+"--"+shp_zhl+"--"+shp_chl+"--"+shp_nc);
//        System.out.println(shp_yp+"--"+shp_xk+"--"+shp_xshq+"--"+shp_jg+"--"+shp_ys+"--"+sku_msh);
//
//        Date date = new Date();
//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//        try {
//            date=sdf.parse(sdf.format(new Date()));
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        System.out.println(date);
//        Date chjshj=date;
//
//        MarkService markService=new MarkServiceImpl();
//
//        String pp_id=null;
//        try {
//            pp_id=markService.selectMarkIdByNameService(ppmch).getPp_id();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        Product_Sku_InfoService product_sku_infoService=new Product_Sku_InfoServiceImpl();
//        product_sku_infoService.addSkuInfoService(sku_id,shp_lb,pp_id,shp_zhl,shp_chl,shp_nc,shp_yp,shp_jg, shp_ys, shp_xk, shp_xshq, sku_msh, chjshj);
//        PrintWriter out = resp.getWriter();
//        out.print("<script>alert('添加成功!');window.location.href='商品专区-发布商品.jsp'</script>");

    }
}
