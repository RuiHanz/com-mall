<%@ page import="com.mall.product.Product" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/17
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>

<head>
    <title>购物车</title>
</head>
<body>
<div>
    <table>
        <thead>
            <tr style="width: 300px;height: 100px" >
                <th>商品描述</th>
                <th>商品颜色</th>
                <th>商品价格</th>
                <th>操作</th>
            </tr>
        </thead>
    <% Product product = (Product) request.getAttribute("product");%>
        <tbody>
        <tr style="width: 300px;height: 100px" >
            <td><%=product.getShp_msh()%></td>
            <td><%=product.getShp_ys()%></td>
            <td><%=product.getShp_jg()%></td>
        </tr>
        </tbody>
    </table>

</div>
</body>
</html>
