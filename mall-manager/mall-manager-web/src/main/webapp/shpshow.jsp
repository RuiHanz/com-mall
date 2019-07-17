<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/16
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show</title>
</head>
<body>
    <div style="background-color: pink;width: 200px; height: 200px; border: 1px saddlebrown dotted;">
        <img width="50" height="50" src="images/3.jpg"><hr/>
        <form method="post" action="/addCar?shp_id=1&yh_id=123">
            商品名称：<input type="text" value="戴尔灵越" name="spmc" >
            价格：<input type="text" value="4500" name="价格" disabled="disabled">
            <input type="submit" value="加入购物车">
        </form>
    </div>
</body>
</html>
