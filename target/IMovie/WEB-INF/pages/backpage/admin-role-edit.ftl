
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/html5.js"></script>
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/respond.min.js"></script>
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${base.contextPath}/staticadmin/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<#--/meta 浣滀负鍏叡妯＄増鍒嗙鍑哄幓-->

<title>爱.电影-编辑</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form action="${base.contextPath}/userManageAdminController/update" method="post" class="form form-horizontal" id="form-admin-role-add">
		<#-- <input type="text"  name="user_id" val="${user_id}"> -->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户ID</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${user_id}" id="roleName" name="user_id" datatype="*4-16" nullmsg="填入">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  value="${user_name}" id="roleName" name="user_name" datatype="*4-16" nullmsg="鐢ㄦ埛璐︽埛涓嶈兘涓虹┖">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>联系方式</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="tel" class="input-text" value="${user_tel}" id="" name="user_tel">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">&nbsp;*</span>邮箱</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="email" class="input-text" value="${user_email}" id="" name="user_email">
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<button type="submit" style="width:90px;height:40px;color:green;"> 确定</button>
			</div>
		</div>
	</form>
</article>

<#--_footer 浣滀负鍏叡妯＄増鍒嗙鍑哄幓-->
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/icheck/jquery.icheck.min.js"></script> 
 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui.admin/js/H-ui.admin.js"></script> 
<#--/_footer /浣滀负鍏叡妯＄増鍒嗙鍑哄幓-->
</body>
</html>