package com.mmall.controller;

import com.mall.service.MarkService;
import com.mall.service.ProductService;
import com.mall.service.Product_Sku_InfoService;
import com.mall.service.impl.MarkServiceImpl;
import com.mall.service.impl.ProductServiceImpl;
import com.mall.service.impl.Product_Sku_InfoServiceImpl;
import com.mall.service.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addProduct.do")
public class AddProductSevlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        UUIDUtils uuid=new UUIDUtils();
        String shp_id= uuid.getId();
        String shp_mch=req.getParameter("shp_mch");//商品名称
        Integer flmch1_id=Integer.parseInt(req.getParameter("type1"));//一级分类
        Integer flmch2_id=Integer.parseInt(req.getParameter("type2"));//二级分类
        String ppmch=req.getParameter("ppname");//品牌名称
        String shp_zhl=req.getParameter("shp_zhl");//商品种类
        String shp_chl=req.getParameter("cpu");//cpu
        String shp_nc=req.getParameter("ram");//RAM
        String shp_yp=req.getParameter("caliche");//caliche
        String shp_xk=req.getParameter("gpu");//gpu
        String shp_xshq=req.getParameter("tv");//显示器
        Integer shp_kc=Integer.parseInt(req.getParameter("shp_kc"));//商品库存
        float shp_jg= Float.parseFloat(req.getParameter("jg"));  //价格
        String shp_ys=req.getParameter("color");//颜色
        String shp_msh=req.getParameter("shp_msh")+"--------"+shp_chl+"/"+shp_nc+"/"+shp_yp+"/"+shp_xk+"/"+shp_xshq;
        System.out.println(shp_id+"--"+flmch1_id+flmch2_id+"--"+ppmch+"--"+shp_zhl+"--"+shp_chl+"--"+shp_nc);
        System.out.println(shp_yp+"--"+shp_xk+"--"+shp_xshq+"--"+shp_jg+"--"+shp_ys+"--"+shp_msh);

        String chjshj="CURRENT_TIMESTAMP";

        MarkService markService=new MarkServiceImpl();

        String pp_id=null;
        try {
            pp_id=markService.selectMarkIdByNameService(ppmch).getPp_id();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(pp_id);

        ProductService productService=new ProductServiceImpl();
        productService.addProductService(shp_id,shp_mch,flmch1_id,flmch2_id,pp_id,chjshj,shp_msh,shp_jg,shp_ys,shp_kc);


        PrintWriter out = resp.getWriter();
        out.print("<script>alert('添加成功!');window.location.href='商品专区-发布商品.jsp'</script>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

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
