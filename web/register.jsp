<%--
  Created by IntelliJ IDEA.
  User: 12860
  Date: 2019/8/23
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="layui/css/layui.css">
    <title>makeIt注册</title>
</head>
<body class="layui-bg-gray">
<script src="layui/layui.js"></script>
<div class="layui-card" style="width: 28%;margin: auto;margin-top: 12%">
    <div class="layui-card-header" style="background-color: #c2c2c2">注册</div>
    <div class="layui-card-body">
        <form class="layui-form" action="regisAct">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input style="width: 80%" type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input style="width: 80%" type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <%--        <div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">确认密码</label>
                <div class="layui-input-block">
                    <input style="width: 80%" type="password" name="password2" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item" style="margin-top: 10%">
                <div>
                    <button class="layui-btn layui-btn-radius layui-btn-normal layui-btn-fluid" lay-submit >创建账户</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div style="margin-top: 1%">
    <div style="text-align: center">
        <label >已经拥有账户？</label>
    </div>
    <div style="text-align: center">
        <a href="" style="color: dodgerblue;font-size: 16px">登录</a>
    </div>
</div>
</body>
</html>
