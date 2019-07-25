<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/16
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加购物车</title>
    <script src="jquery-3.0.0.js" type="text/javascript"></script>
    <script type="text/javascript">
        function myFunction(){
            $.ajax({
                type:"post",            //传输方式为post，所以我们在servlet里面代码是写在doPost()函数中
                url:"/addCar",      //这就是使用的servlet的url
                success:function(data){
                    document.getElementById("json").innerHTML=data;
                }
            });
        }
    </script>
</head>
<body>
<p id="json">数据</p><br>
<button onclick="myFunction()">获取数据</button>
<a href="/addCar">添加购物车</a>
<table>
    <thead>
    <tr>
        <th>商品名称</th>
        <th>商品价格</th>
        <th>商品描述</th>
    </tr>
    </thead>
    <tbody>

    </tbody>
</table>

</body>
</html>
