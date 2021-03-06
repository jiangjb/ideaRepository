<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
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
<title>爱.电影-用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户管理 <span class="c-gray en">&gt;</span> 角色管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <button type="button" class="btn btn-danger" onclick="admin_role_deleSome('用户编辑')"><i class="Hui-iconfont">&#xe6df;</i>批量删除</button>&nbsp;<button type="button" class="btn btn-success" id="butt" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button> <input type="text" name="" id="userName" placeholder="输入用户名" style="width:250px" class="input-text"></span> <span class="r">共有数据：<strong id="gg">${list?size}</strong> 条</span> </div>
	<table id="tablee" class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="140">ID</th>
				<th width="90">用户名</th>
				<th width="80">联系方式</th>
				<th>邮箱</th>
				<th width="150">注册日期</th>
				<th width="60">操作</th>
			</tr>
		</thead>
		<tbody>
		<#list list as user>
			<tr class="text-c" id="${user.user_id}">
				<td><input type="checkbox" value="" name=""></td>
				<td>${user_index+1}</td>
				<td>${user.user_name}</td>
				<td>${user.user_tel}</td>
				<td>${user.user_email}</td>
				<td>${user.user_registtime}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('用户编辑','/IMovie/userManageAdminController/edit?user_id=${user.user_id}&user_name=${user.user_name}&user_tel=${user.user_tel}&user_email=${user.user_email}','${user.user_id}')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'${user.user_id}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
		</#list>
		</tbody>
	</table>
</div>
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui.admin/js/H-ui.admin.js"></script> 

<script type="text/javascript">
/*角色-添加*/
function admin_role_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*角色-编辑*/
function admin_role_edit(title,url,id,w,h){
	layer_show(title,url,id,w,h);
}
/*管理员-角色-删除*/
 function admin_role_del(obj,id){
	layer.confirm('角色删除须谨慎，确认要删除吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		 var params="param=1&userid="+id;
		$.get("${base.contextPath}/userManageAdminController/delete",params,function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
				var num=parseInt($("#gg").text());
				num=num-1;
				$("#gg").text(num);
				
			})
		})
}
/*管理员-角色-删除选中*/
 function admin_role_deleSome(obj){
	layer.confirm('角色删除须谨慎，确认要删除吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		var list=$("table").find(":checkbox:checked");
		list.each(function(){
			var params="param=1&userid="+$(this).parent("td").parent("tr").prop("id");
			$.ajax({
				url:"${base.contextPath}/userManageAdminController/delete",
				type:"get",
				data:params,
				success:function(data){
					list.each(function(){
						$(obj).parents("tr").remove();
						layer.msg('已删除!',{icon:1,time:1000});
						var num=parseInt($("#gg").text());
						num=num-1;
						$("#gg").text(num);
						window.location.reload(true)
					});
				}
			});
		});
	})

}

</script>
<#--搜索-->
<script type="text/javascript">
	$(function(){
		$("#butt").click(function(){
			var username=$("#userName").val();
			var params="param=1&username="+username;
			$("table tbody").empty();
			$.get("/IMovie/userManageAdminController/search",params, function(data){
			
				for(var i=0,l=data.length;i<l;i++){
					<#-- $("tbody").append("<tr class='text-c' id='"+data[i].user_id+"'>");-->
					$("tbody").append("<tr id='"+data[i].user_id+"'>");
					$("tbody").append("<td style='text-align:center'><input type='checkbox'></td>");
					$("tbody").append("<td style='text-align:center'>"+data[i].user_id+"</td>");
					$("tbody").append("<td style='text-align:center'>"+data[i].user_name+"</td>");
					$("tbody").append("<td style='text-align:center'>"+data[i].user_tel+"</td>");
					$("tbody").append("<td style='text-align:center'>"+data[i].user_email+"</td>");
					$("tbody").append("<td style='text-align:center'>"+data[i].user_registtime+"</td>");
					$("tbody").append("<td class='f-14' style='text-align:center'>");
					<#-- 暂时实现不了$("tbody").append("<a title='编辑' href='javascript:;' onclick='admin_role_edit('角色编辑','${base.contextPath}/userManageAdminController/edit?user_id="+data[i].user_id+"&user_name="+data[i].user_name+"&user_tel="+data[i].user_tel+"&user_email="+data[i].user_email+"',"+data[i].user_id+")' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6df;</i></a> <a title='删除' href='javascript:;' onclick='admin_role_del(this,"+data[i].user_id+")' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a>"); -->
					$("tbody").append("<a title='删除' href='javascript:;' onclick='admin_role_del(this,"+data[i].user_id+")' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a>");
					$("tbody").append("</td>");
					$("tbody").append("</tr>");
					}
				},"json");
		});
	});
</script>
</body>
</html>