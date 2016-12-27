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
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
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

<title>爱.电影-添加场次</title>
<meta name="keywords" content="爱电影就来爱.电影">
<meta name="description" content="爱电影就来爱.电影">
</head>
<body>
<article class="page-container">
	<form action="${base.contextPath}/schedule/addSchedule" method="post" class="form form-horizontal" id="form-member-add">
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>所在城市：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="seCity" class="select" size="1" name="cityName">
					<option value="0" >请选择城市</option>
				</select>
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>选择影院：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="ciCity" class="select" size="1" name="cinameName">
					<option value="0" >请选择影院</option>
				</select>
				</span> </div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">选择大厅：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select class="select" size="1" name="hallName">
					<option value="" selected>请选择大厅</option>
					<option value="1">1号厅</option>
				</select>
				</span> </div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">选择电影：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select id="moSelect" class="select" size="1" name="moviename">
					<option value="" selected>请选择电影</option>
				</select>
				</span> </div>
		</div>
		
		<#--
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>电影名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="请输入电影名称" id="moviename" name="moviename">
			</div>
		</div>
		-->
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>选择放映时刻：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="datetime-local" class="input-text" placeholder="" name="playtime" id="playtime">
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
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-member-add").validate({
		rules:{
			username:{
				required:true,
				minlength:2,
				maxlength:16
			},
			sex:{
				required:true,
			},
			mobile:{
				required:true,
				isMobile:true,
			},
			email:{
				required:true,
				email:true,
			},
			uploadfile:{
				required:true,
			},
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			//parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});
});
</script> 
<script type="text/javascript">
	$(function(){
		$.ajax({
			type:"post",
			url:"/IMovie/schedule/findAllCity",
			dataType:"json",
			success:function(data){
				for(var i=0;i<data.length;i++){
					var opt = "<option value='"+data[i].city_id+"'>"+data[i].city_name+"</option>";
					$('#seCity').append(opt);
				}
			}
		});
		$.ajax({
			type:"post",
			url:"/IMovie/schedule/findAllMovie",
			dataType:"json",
			success:function(data){
				for(var i=0;i<data.length;i++){
					var opt = "<option value='"+data[i].movie_id+"'>"+data[i].movie_name+"</option>";
					$('#moSelect').append(opt);
				}
			}
		})
		
		$('#seCity').change(function(){
			var selectId = $('#seCity>option:selected').val();
			$.ajax({
				type:"post",
				url:"/IMovie/schedule/findCinemaById",
				data:{"cid":selectId},
				dataType:"json",
				success:function(data){
					$("#ciCity").empty();
					$("#ciCity").append("<option value='0'>请选择影院</option>")
					for(var i=0;i<data.length;i++){
						var optce = "<option value='"+data[i].cinema_id+"'>"+data[i].cinema_name+"</option>";
						$('#ciCity').append(optce);
					}
				}
			
			})
		})
	})
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>