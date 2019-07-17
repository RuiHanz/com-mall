<%@ page import="com.mall.service.ProductService" %>
<%@ page import="com.mall.service.impl.ProductServiceImpl" %>
<%--<%@ page import="com.mall.service.Product" %>--%>
<%@ page import="java.util.List" %>
<%@ page import="com.mall.service.product.Product" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isErrorPage="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-labelauty.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<%--<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>--%>
<script src="js/common_js.js" type="text/javascript"></script>
<script src="js/footer.js" type="text/javascript"></script>
<script src="js/jquery-labelauty.js" type="text/javascript"></script>
<title>增删改商品</title>
</head>

<body>
<head>
 <div id="header_top">
  <div id="top">
    <div class="Inside_pages">
      <div class="Collection"><a href="#" class="green">请登录</a> <a href="#" class="green">免费注册</a></div>
	<div class="hd_top_manu clearfix">
	  <ul class="clearfix">
	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="index.jsp">首页</a></li>

	   <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">消息中心</a></li>

	  </ul>
	</div>
    </div>
  </div>
  <div id="header"  class="header page_style">
  <div class="logo"><a href="index.jsp"><img src="images/logo.png" /></a></div>
  <!--结束图层-->
  <div class="Search">
        <div class="search_list">
            <ul>
                <li class="current"><a href="#">产品</a></li>
                <li><a href="#">信息</a></li>
            </ul>
        </div>

</div>
 <!--购物车样式-->
 <div class="hd_Shopping_list" id="Shopping_list">
   <div class="s_cart"><a href="#">我的购物车</a> <i class="ci-right">&gt;</i><i class="ci-count" id="shopping-amount">0</i></div>
   <div class="dorpdown-layer">
    <div class="spacer"></div>
	 <!--<div class="prompt"></div><div class="nogoods"><b></b>购物车中还没有商品，赶紧选购吧！</div>-->
	 <ul class="p_s_list">	   
		<li>
		    <div class="img"><img src="images/tianma.png"></div>
		    <div class="content"><p class="name"><a href="#">产品名称</a></p><p>颜色分类:紫花8255尺码:XL</p></div>
			<div class="Operations">
			<p class="Price">￥55.00</p>
			<p><a href="#">删除</a></p></div>
		  </li>
		</ul>		
	 <div class="Shopping_style">
	 <div class="p-total">共<b>1</b>件商品　共计<strong>￥ 515.00</strong></div>
	  <a href="Shop_cart.html" title="去购物车结算" id="btn-payforgoods" class="Shopping">去购物车结算</a>
	 </div>	 
   </div>
 </div>
</div>
<!--菜单栏-->
	<div class="Navigation" id="Navigation">
		 <ul class="Navigation_name">
			<li><a href="index.jsp">首页</a></li>
		 </ul>			 
		</div>
	<script>$("#Navigation").slide({titCell:".Navigation_name li",trigger:"click"});</script>
    </div>
</head>
<!--发布商品样式-->
<div class="Inside_pages clearfix">
 <div class="left_style">
<!--列表-->
  <div class="menu_style">
   <ul class="menu_list">
    <li ><em></em><a href="店铺专区.html">店铺专区</a></li>
    <li class="on"><em></em><a href="商品专区.jsp">商品专区</a></li>
   </ul>
  </div>
</div>
<div class="right_style">
  <!--内容详细-->
   <div class="title_style"><em></em>修改商品</div>
    <c:forEach items="${productList}" var="product">
        <c:forEach items="${id}" var="id">
    <div class="content_style" action>
     <div class="Release_product_style">
     <form action="/updateProduct2.do" method="post">
         <tr><td class="label" >商品原id：</td><td><input name="id" type="text6" value=${id.toString()} ></td>></tr>>
         <tr><td class="label">商品现id：</td><td><input name="shp_id" type="text"  class="addtext" style=" width:200px;" value=${product.shp_id}></td></tr>
         <tr><td class="label">商品名称：</td><td><input name="shp_mch" type="text"  class="addtext" style=" width:200px;" value=${product.shp_mch}></td></tr>
         <tr><td class="label">分类1ID：</td><td><input name="flmch1_id" type="text"  class="addtext" style=" width:200px;" value=${product.flmch1_id}></td></tr>
         <tr><td class="label">分类2ID：</td><td><input name="flmch2_id" type="text"  class="addtext" style=" width:200px;" value=${product.flmch2_id}></td></tr>
         <tr><td class="label">品牌ID：</td><td><input name="pp_id" type="text"  class="addtext" style=" width:200px;" value=${product.pp_id}></td></tr>
         <tr><td class="label">颜色：</td><td><input name="shp_ys" type="text"  class="addtext" style=" width:200px;" value=${product.shp_ys}></td></tr>
         <tr><td class="label">商品库存：</td><td><input name="shp_kc" type="text"  class="addtext" style=" width:200px;" value=${product.shp_kc}></td></tr>
         <tr><td class="label">商品价格：</td><td><input name="shp_jg" type="text"  class="addtext" style=" width:200px;" value=${product.shp_jg}></td></tr>
         <tr><td class="label">商品描述：</td><td><input name="shp_msh" type="text"  class="addtext" style=" width:200px;" value=${product.shp_msh}></td></tr>
         <tr><td class="label">创建时间：</td><td><input name="chjshj" type="text"  class="addtext" style=" width:200px;" value=${product.chjshj}></td></tr>
         </c:forEach>
         </c:forEach>




       </td>
       </tr>


     </table>
         <input type="submit" value="更改商品资料 " >

     </form>
     </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$(function(){
	$(':input').labelauty();
});
</script>
<!--网站地图-->
<div class="fri-link-bg clearfix">
    <div class="fri-link">
        <div class="logo left margin-r20"><img src="images/fo-logo.jpg" width="152" height="81" /></div>
        <div class="left"><img src="images/qd.jpg" width="90"  height="90" />
            <p>扫描下载APP</p>
        </div>
       <div class="">
    <dl>
	 <dt>新手上路</dt>
	 <dd><a href="#">售后流程</a></dd>
     <dd><a href="#">购物流程</a></dd>
     <dd><a href="#">订购方式</a> </dd>
     <dd><a href="#">隐私声明 </a></dd>
     <dd><a href="#">推荐分享说明 </a></dd>
	</dl>
	<dl>
	 <dt>配送与支付</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	<dl>
	 <dt>售后保障</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
	<dl>
	 <dt>支付方式</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>	
    <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
     <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>
     <dl>
	 <dt>帮助中心</dt>
	 <dd><a href="#">保险需求测试</a></dd>
     <dd><a href="#">专题及活动</a></dd>
     <dd><a href="#">挑选保险产品</a> </dd>
     <dd><a href="#">常见问题 </a></dd>
	</dl>	   
   </div>
    </div>
</div>
<!--网站地图END-->
<!--网站页脚-->
<div class="copyright">
    <div class="copyright-bg">
        <div class="hotline">为生活充电在线 <span>招商热线：****-********</span> 客服热线：400-******</div>
        <div class="hotline co-ph">
            <p>版权所有Copyright ©***************</p>
            <p>*ICP备***************号 不良信息举报</p>
            <p>总机电话：****-*********/194/195/196 客服电话：4000****** 传 真：********
                
                E-mail:****@****.gov.cn</p>
        </div>
    </div>
</div>
</body>
</html>
