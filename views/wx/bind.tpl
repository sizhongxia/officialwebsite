<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
  <meta content="yes" name="apple-mobile-web-app-capable">
  <meta content="black" name="apple-mobile-web-app-status-bar-style">
  <meta content="telephone=no" name="format-detection">
  <meta content="email=no" name="format-detection">
  <title>账号绑定</title>
  <link rel="stylesheet" href="//cdn.bootcss.com/weui/1.1.3/style/weui.min.css">
  <link rel="stylesheet" href="//cdn.bootcss.com/jquery-weui/1.2.1/css/jquery-weui.min.css">
  <style>
    .title {
      text-align: center;
      font-size: 22px;
      color: #3cc51f;
      font-weight: 400;
      margin: 0 15%;
    }
  </style>
</head>

<body ontouchstart>
  <header style="padding: 80px 0 24px ;">
    <h1 class="title">平台账号绑定</h1>
  </header>
  <div class="weui-cells weui-cells_form">
    <div class="weui-cell">
      <div class="weui-cell__hd"><label class="weui-label">账号</label></div>
      <div class="weui-cell__bd">
        <input id="uname" class="weui-input" type="text" placeholder="请输入平台账号">
      </div>
    </div>
    <div class="weui-cell">
      <div class="weui-cell__hd"><label class="weui-label">密码</label></div>
      <div class="weui-cell__bd">
        <input id="pwd" class="weui-input" type="password" placeholder="请输入账号密码">
      </div>
    </div>
  </div>
  <div class="weui-flex">
    <div class="weui-flex__item" style="padding: 20px;">
      <button id="bindBtn" class="weui-btn weui-btn_primary">绑定</button>
      <input type="hidden" id="openId" value="<<<.openId>>>" />
    </div>
  </div>
  <div class="weui-footer weui-footer_fixed-bottom" style="bottom: 1.52em">
    <p class="weui-footer__links">
      <a href="https://www.yeetong.cn" class="weui-footer__link">北京一通无限科技有限公司</a>
    </p>
    <p class="weui-footer__text">Copyright © 2018-2019 一通无限</p>
  </div>
  <script src="//cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
  <script src="//cdn.bootcss.com/jquery-weui/1.2.1/js/jquery-weui.min.js"></script>
  <script>
    $(function () {
      $("#bindBtn").on("click", function () {
        var uname = $("#uname").val();
        var pwd = $("#pwd").val();
        var openId = $("#openId").val();
        if (!uname) {
          $.toptip('请输入用户名', 'warning');
          return;
        }
        if (!pwd) {
          $.toptip('请输入密码', 'warning');
          return;
        }
        if (!openId) {
          $.toptip('表单无效，请刷新后重试', 'warning');
          return;
        }
        $.showLoading();
        $.post('<<<urlfor "WxController.ToBind">>>', {
          userName: uname, password: pwd, openId: openId
        }, function (res) {
          $.hideLoading();
          if (!res.state) {
            $.toptip(res.msg, 'error');
            return;
          }
          $.toptip(res.msg, 'success');
          setTimeout(function () {
            window.location.reload();
          }, 1000);
        }, "json");
      });
    })
  </script>
</body>

</html>