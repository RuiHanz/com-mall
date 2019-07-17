
<%@ page import="java.util.List" %>
<%@ page import="com.mall.order.Order" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/16 0016
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单管理</title>
</head>
<body>
<h3><a  style="text-decoration: none" href="/addOrder.do">添加订单</a></h3>
<%
    List<Order> orderList = (List<Order>) request.getAttribute("orderList");
%>
<table  width="100%" height="100%" style="text-align: center">
    <thead style="text-align: center">
    <tr>
        <td><h4>订单编号</h4></td>
        <td><h4>商品名称</h4></td>
        <td><h4>总价</h4></td>
        <td><h4 >收货人</h4></td>
        <td><h4>收货地址</h4></td>
        <td><h4>创建时间</h4></td>
        <td><h4>订单进度号</h4></td>
        <td colspan="2"><h4 >操作</h4></td>
    </tr>
    </thead>
    <tbody>
    <%
        for (Order order : orderList){
    %>
    <tr>
        <td ><h5><%=order.getDd_id()%></h5></td>
        <td ><h4><%=order.getShp_mch()%></h4></td>
        <td ><h4><%=order.getZje()%></h4></td>
        <td ><h4><%=order.getShhr()%></h4></td>
        <td ><h4><%=order.getDzh_mch()%></h4></td>
        <td ><h4><%=order.getChjshj()%></h4></td>
        <td ><h4><%=order.getJdh()%></h4></td>
        <td><h5><a  style="text-decoration: none" href="/OrderServlet.do?id=<%=order.getDd_id()%>&_method=delete">删除</a>&nbsp;</h5></td>
        <td><h5><a  style="text-decoration: none"href="/OrderServlet.do?id=<%=order.getDd_id()%>&_method=update">修改</a></h5></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
