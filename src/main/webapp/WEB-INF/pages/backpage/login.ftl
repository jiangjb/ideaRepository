<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>爱.电影-后台登录</title>
<link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/css/style.css" tppabs="css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${base.contextPath}/staticadmin/js/jquery.js"></script>
<script src="${base.contextPath}/staticadmin/js/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>
<script src="${base.contextPath}/staticadmin/js/Particleground.js" tppabs="js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  //$(".submit_btn").submit(function(){
	 // window.location.href="/IMovie/schedule/adminlogin";
	//});
});
</script>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>爱.电影-后台管理系统</strong>
  <em>Management System</em>
 </dt>
 <form action="${base.contextPath}/back/login" method="post">
 <dd class="user_icon">
  <input type="text" name="username" placeholder="账号" class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" name="password" placeholder="密码" class="login_txtbx"/>
 </dd>
 <dd>
  <input type="submit" value="立即登陆" class="submit_btn"/>
 </dd>
 </form>
 <dd>
<p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>
 </dd>
</dl>
</body>
</html>
