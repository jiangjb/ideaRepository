<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
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
<!--/meta 作为公共模版分离出去-->

<title>爱.电影-添加用户</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form action="${base.contextPath}/movie/update" method="post" enctype="multipart/form-data" class="form form-horizontal" id="form-member-add">
		<input type="hidden" name="id" id="" value="${list.movie_id}" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>电影名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_name}" placeholder="" id="name" name="name">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>电影时长：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_minute}"  id="minute" name="minute">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>电影年份：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_releaseyear}" id="releaseyear" name="releaseyear">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>电影月份：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_releasemonth}"  id="releasemonth" name="releasemonth">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>国家：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_country}" placeholder="" id="country" name="country">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>类型：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_category}" placeholder="" id="category" name="category">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>导演：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_director}" placeholder="" id="director" name="director">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>演员：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${list.movie_actors}" placeholder="" id="actors" name="actors">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>电影封面图：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<img src="/IMovie/${list.movie_imgurl}" id="img" style="width: 100px;height: 100px;"/>
				<input type="file" name="uploadFile" id="uploadFile" value="" />
				<input type="hidden" name="imgurl" id="" value="${list.movie_imgurl}" />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">是否上映：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select class="select" size="1" name="city">
				<#if list.isdisplay==0>
					<option value="${list.isdisplay}">未上映</option>
					<option value="1">上映</option>
					<#else>
					<option value="${list.isdisplay}">上映</option>
					<option value="0">未上映</option>
				</#if>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">电影简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="plot" cols="" rows="" style="height:200px;" class="textarea"  placeholder="添加点什么..." onKeyUp="textarealength(this,550)">${list.movie_plot}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/550</p>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer /作为公共模版分离出去--> 

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){

		$("#uploadFile").bind("change",function(){
				var data = new FormData($("#register")[0]);
					$.ajax({
						type:"post",
						url:"/IMovie/movie/upload",
						cache: false,
				        data: data,
						contentType: false,  
				        processData: false,
				        async: true,
				        success:function(data){
				        	$("#img").attr("src","${base.contextPath}/"+data);
				        	$("input[name='imgurl']").val(data);
				        },
				        error:function(){
				        	alert("error!")
				        }
					});
				});
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-member-add").validate({
		rules:{
			name:{
				required:true,
			},
			minute:{
				required:true,
			},
			releaseyear:{
				required:true,
			},
			releasemonth:{
				required:true,
			},
			actors:{
				required:true,
			},
			director:{
				required:true,
			},
			plot:{
				required:true,
			},
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>


