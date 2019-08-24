<%--
  Created by IntelliJ IDEA.
  User: 12860
  Date: 2019/8/22
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <link rel="stylesheet" href="layui/css/layui.css">
  <title>makeIt登录</title>
</head>
<body class="layui-bg-gray">
<script src="layui/layui.js"></script>
<div class="layui-card" style="width: 28%;margin: auto;margin-top: 12%">
  <div class="layui-card-header" style="background-color: #c2c2c2">登录</div>
  <div class="layui-card-body">
    <form class="layui-form" action="loginAct">
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
        <div style="width: 80%;margin: auto;margin-top: 10%;">
          <button class="layui-btn layui-btn-radius layui-btn-normal layui-btn-fluid" lay-submit >登录</button>
        </div>
      </div>
      <div >
        <div style="width: 50%;margin: auto;margin-top: 8%">
          <a href="" class="layui-btn layui-btn-xs">微信登录</a>
          <a href="" class="layui-btn layui-btn-xs layui-btn-normal">QQ登录</a>
          <a href="" class="layui-btn layui-btn-xs layui-bg-cyan">短信登录</a>
        </div>
      </div>
    </form>
  </div>
</div>
<div style="margin-top: 1%">
  <div style="text-align: center">
    <label >没有账户？</label>
  </div>
  <div style="text-align: center">
    <a href="" style="color: dodgerblue;font-size: 16px">注册</a>
  </div>
</div>
<%--  <script>--%>
<%--    //Demo--%>
<%--    layui.use('form', function(){--%>
<%--      var form = layui.form;--%>

<%--      //监听提交--%>
<%--      form.on('submit(formDemo)', function(data){--%>
<%--        layer.msg(JSON.stringify(data.field));--%>
<%--        return false;--%>
<%--      });--%>
<%--    });--%>
<%--  </script>--%>
<script>
  layui.use('upload', function(){
    var upload = layui.upload;

    //执行实例
    var uploadInst = upload.render({
      elem: '#test1' //绑定元素
      ,url: '/upload/' //上传接口
      ,done: function(res){
        //上传完毕回调
      }
      ,error: function(){
        //请求异常回调
      }
    });
  });
</script>
</body>
</html>
