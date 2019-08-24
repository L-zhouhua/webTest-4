<%--
  Created by IntelliJ IDEA.
  User: 12860
  Date: 2019/8/23
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="layui/css/layui.css">
    <title>发表博客</title>
</head>
<body class="layui-layout-body layui-bg-gray">
<script src="layui/layui.js"></script>
<div class="layui-container" style="margin-top: 6%">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="background-color: white">
        <ul class="layui-tab-title">
            <li class="layui-this">发表博客</li>
        </ul>
        <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 2%;">
            <div class="layui-tab-item layui-show">
                <form action="" method="post" class="layui-form-pane layui-form">
                    <div class="layui-row layui-col-space15 layui-form-item">
                        <div class="layui-col-md3">
                            <label class="layui-form-label">所在专栏</label>
                            <div class="layui-input-block">
                                <select lay-verify="required" name="class" lay-filter="column">
                                    <option></option>
                                    <option value="0">提问</option>
                                    <option value="99">分享</option>
                                    <option value="100">讨论</option>
                                    <option value="101">建议</option>
                                    <option value="168">公告</option>
                                    <option value="169">动态</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-col-md9">
                            <label for="L_title" class="layui-form-label">标题</label>
                            <div class="layui-input-block">
                                <input type="text" id="L_title" name="title" required lay-verify="required"
                                       autocomplete="off" class="layui-input">
                                <!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">内容</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" class="layui-textarea" rows="12"></textarea>
                        </div>
                    </div>
                    <div>
                        <button class="layui-btn">立即发布</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    layui.use('form', function(){
        var form = layui.form;

        //各种基于事件的操作，下面会有进一步介绍
    });
</script>
</body>
</html>
