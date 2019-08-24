<%--
  Created by IntelliJ IDEA.
  User: 12860
  Date: 2019/8/23
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="layui/css/layui.css">
    <title>makeIt首页</title>
</head>
<body class="layui-layout-body layui-bg-gray">
<script src="layui/layui.js"></script>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">makeIt博客</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">首页</a></li>
            <li class="layui-nav-item"><a href="">新闻</a></li>
            <li class="layui-nav-item"><a href="">Java</a></li>
            <li class="layui-nav-item"><a href="">C/C++</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">SSH</a>
                <dl class="layui-nav-child">
                    <dd><a href="">Struts</a></dd>
                    <dd><a href="">Spring</a></dd>
                    <dd><a href="">Hibernate</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">论坛</a>
                <dl class="layui-nav-child">
                    <dd><a href="">动漫天地</a></dd>
                    <dd><a href="">电影时代</a></dd>
                    <dd><a href="">游戏玩家</a></dd>
                    <dd><a href="">情感专题</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="login.jsp">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    登录
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">写博客</a></dd>
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>
    <div class=" layui-card">
        <div class="layui-card-body">
                <span class="layui-breadcrumb" lay-separator="  " style="padding-left: 15%;font-weight: bold">
                    <a href="">娱乐</a>
                  <a href="">八卦</a>
                  <a href="">体育</a>
                  <a href="">搞笑</a>
                  <a href="">视频</a>
                  <a href="">游戏</a>
                  <a href="">综艺</a>
                </span>
        </div>

    </div>
    <div class="layui-container" style="margin-top: 1%">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md9">
                <div class="layui-card">
                    <div class="layui-card-header" style="text-align: center">新鲜出炉资讯</div>
                    <div class="layui-card-body">
                        卡片式面板面板通常用于非白色背景色的主体内<br>
                        从而映衬出边框投影
                    </div>
                </div>
            </div>
            <div class="layui-col-md3">
                <div class="layui-card">
                    <div class="layui-card-header" style="text-align: center">卡片面板</div>
                    <div class="layui-card-body">
                        卡片式面板面板通常用于非白色背景色的主体内<br>
                        从而映衬出边框投影
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function () {
            var element = layui.element;

            //…
        });
    </script>
</div>
</body>
</html>
