<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/16 0016
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.mall.order.Order" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加订单</title>
</head>
<body>

     <form action="/save.do" method="post">
         订单编号:<input type="text" name="dd_id" value=""><br/><br/>
         用户id:<input type="text" name="yh_id" value=""><br/><br/>
         卖家id:<input type="text" name="mai_id" value=""><br/><br/>
         商品名称:<input type="text" name="shp_mch" value=""><br/><br/>
         总价:<input type="text" name="zje" value=""><br/><br/>
         收货人:<input type="text" name="shhr" value=""><br/><br/>
         收获地址:<input type="text" name="dzh_mch" value=""><br/><br/>
         订单进度:<select name="jdh">
                      <option>0</option>
                      <option>1</option>
                      <option>2</option>
                      <option>3</option>
                   </select>
          <br/><br/>
         创建时间:<input type="date" name="chjshj" value=""><br/><br/>
         预计送达时间:<input type="text"  name="yjsdshj" value=""><br/><br/>
         <input type="submit" value="保存">
         <input type="reset" value="重置">
     </form>

</body>
</html>
