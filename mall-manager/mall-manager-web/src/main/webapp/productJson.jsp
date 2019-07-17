<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-7-17
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":"
        + request.getServerPort() + request.getContextPath() + "/"; %>

<!Doctype html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>用户管理</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="static/css/style.css">
    <link rel="stylesheet" href="static/js/jquery-ui/jquery-ui.min.css">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/js/jquery.serializejson.min.js"></script>
    <script src="static/js/jquery-ui/jquery-ui.min.js"></script>
</head>
<body>
<!-- 用户列表 -->
<div class="tbl-title">商品列表</div>
<button onclick="showAddUserModal()">添加新的商品</button>
<table id="users" class="tbl-list">
    <thead>
    <tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>分类1ID</th>
        <th>分类2ID</th>
        <th>品牌ID</th>
        <th>颜色</th>
        <th>商品库存</th>
        <th>商品价格</th>
        <th>商品描述</th>
        <th>创建时间</th>
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>

<!-- 添加用户模态框 -->
<div id="add-user-modal" title="添加商品" style="display:none;">
    <form id="add-user-form">
        <table class="modal-tbl"><tr><td class="label">品牌名称：</td><td><input name="ppname" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">商品种类：</td><td><input name="shp_zhl" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">处理器型号：</td><td><input name="cpu" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">内存型号：</td><td><input name="ram" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">硬盘型号：</td><td><input name="caliche" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">显卡型号：</td><td><input name="gpu" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">显示器型号：</td><td><input name="tv" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">价格：</td><td><input name="jg" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">颜色：</td><td><input name="color" type="text"  class="addtext" /></td></tr>
            <tr><td class="label">仓库id：</td><td><input name="ck_id" type="text"  class="addtext" /></td></tr>>
            <tr><td class="label">库存数量：</td><td><input name="shp_kc" type="text"  class="addtext" /></td></tr>>
        </table>
    </form>
</div>

<!--删除用户对话模态框 -->
<div id="delete-user-modal" title="删除用户" style="display:none;">
    <p>确定删除该用户吗？</p>
</div>

<!-- 更新用户模态框 -->
<div id="update-user-modal" title="更新用户" style="display:none;">
    <form id="update-user-form">
        <table class="modal-tbl">
            <tr style="display: none"><td>ID</td><td><input type="text" name="id"></td></tr>
            <tr><td>账户</td><td><input type="text" name="account"></td></tr>
            <tr><td>密码</td><td><input type="password" name="password"></td></tr>
            <tr><td>姓名</td><td><input type="text" name="name"></td></tr>
            <tr><td>信息</td><td><input type="text" name="info"></td></tr>
        </table>
    </form>
</div>

<!-- 提示信息模态框 -->
<div id="msg-modal" title="" style="display:none">
    <p></p>
</div>

<script>
    // 开始
    $(function() {
        listAllUser();
    });

    // 显示所有用户
    function listAllUser() {
        $.ajax({
            type: "GET",
            url: "UserServlet?action=listAll",
            dataType: "json",
            success: function(data) {
                $("#users tbody").empty();  // 每次载入前先清空显示区域，防止数据重复显示
                var users = data.users;
                for (var i in users) {
                    var user = users[i];
                    var userStr = JSON.stringify(user);
                    $("#users tbody").append('<tr><td>' + user.account + '</td>'
                        + '<td>' + user.password + '</td>'
                        + '<td>' + user.name + '</td>'
                        + '<td>' + user.info + '</td>'
                        + '<td><button onclick=\'showUpdateUserModal(' + userStr + ')\'>更新</button>&nbsp;'
                        + '<button onclick="deleteUser(' + user.id + ')">删除</button></td></tr>');
                }
            },
            error: function() {
                console.log("ajax error");
            }
        });
    }

    // 显示添加用户模态框
    function showAddUserModal() {
        $("#add-user-form")[0].reset();  // 每次载入前先清空表单，防止显示之前的信息
        $("#add-user-modal").dialog({
            resizable: false,
            modal: true,
            buttons: {
                "提交": function() {
                    addUser();
                },
                "取消": function() {
                    $(this).dialog("close");
                },
            },
        });
    }

    // 添加用户
    function addUser() {
        // 获取序列化表单信息
        var user = $("#add-user-form").serializeJSON();
        var userStr = JSON.stringify(user);

        $.ajax({
            type: "POST",
            url: "UserServlet",
            data: userStr,
            dataType: "json",
            success: function(data) {
                if (data.isSuccess) {
                    $("#add-user-modal").dialog("close");
                    showMsg('添加成功！');
                    listAllUser();
                } else {
                    $("#add-user-modal").dialog("close");
                    showMsg('添加失败！');
                    listAllUser();
                }
            },
            error: function() {
                console.log("ajax error");
            },
        });
    }

    // 删除用户
    function deleteUser(id) {
        // 将id封装为JSON格式数据
        var data = {};
        data.id = id;
        var dataStr = JSON.stringify(data);
        // 显示删除用户模态框
        $("#delete-user-modal").dialog({
            resizable: false,
            modal: true,
            buttons: {
                "确认": function() {
                    $.ajax({
                        type: "DELETE",
                        url: "UserServlet",
                        data: dataStr,
                        dataType: "json",
                        success: function(data) {
                            if (data.isSuccess) {
                                $("#delete-user-modal").dialog("close");
                                showMsg('删除成功！');
                                listAllUser();
                            } else {
                                $("#delete-user-modal").dialog("close");
                                showMsg('删除失败！');
                                listAllUser();
                            }
                        },
                        error: function() {
                            console.log("ajax error");
                        },
                    });
                },
                "取消": function() {
                    $(this).dialog("close");
                },
            },
        });
    }

    //显示更新用户模态框
    function showUpdateUserModal(user) {
        $("#update-user-form")[0].reset();  // 每次载入前先清空表单，防止显示之前的信息
        // 表单赋值
        $("#update-user-form input[name='id']").val(user.id);
        $("#update-user-form input[name='account']").val(user.account);
        $("#update-user-form input[name='password']").val(user.password);
        $("#update-user-form input[name='name']").val(user.name);
        $("#update-user-form input[name='info']").val(user.info);

        $("#update-user-modal").dialog({
            resizable: false,
            modal: true,
            buttons: {
                "提交": function() {
                    updateUser();
                },
                "取消": function() {
                    $(this).dialog("close");
                },
            },
        });
    }

    // 更新用户
    function updateUser() {
        // 获取序列化表单信息
        var user = $("#update-user-form").serializeJSON();
        var userStr = JSON.stringify(user);

        $.ajax({
            type: "PUT",
            url: "UserServlet",
            data: userStr,
            contentType: 'application/json;charset=utf-8',
            dataType: "json",
            success: function(data) {
                if (data.isSuccess) {
                    $("#update-user-modal").dialog("close");
                    showMsg('更新成功！');
                    listAllUser();
                } else {
                    $("#update-user-modal").dialog("close");
                    showMsg('更新失败！');
                    listAllUser();
                }
            },
            error: function() {
                console.log("ajax error");
            },
        });
    }

    //显示提示信息
    function showMsg(text) {
        $("#msg-modal p").text(''); // 每次载入前先清空显示区域，防止显示之前的信息
        $("#msg-modal p").text(text);
        $("#msg-modal").dialog({
            modal: true,
        });
        // 2s后消失
        setTimeout(function() {
            $("#msg-modal").dialog("close")
        },2000);
    }
</script>
</body>
</html>


