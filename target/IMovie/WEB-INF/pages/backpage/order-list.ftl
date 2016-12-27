<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
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
<title>爱.电影-订单管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单查询<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> </span> <span class="r">共有数据：<strong>${count}</strong> 条</span> </div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort">
			<thead>
				<tr class="text-c">
					<th width="20"><input type="checkbox" name="" value=""></th>
					<th width="140">ID</th>
					<th width="60">购票者</th>
					<th width="90">下单时间</th>
					<th width="90">票号</th>
					<th width="130">影片</th>
					<th width="130">影院</th>
					<th width="60">影厅</th>
					<th width="50">座位号</th>
					<th width="80">观影日期</th>
					<th width="90">放映时间</th>
					<th width="80">票价</th>
					<th width="50">操作</th>
				</tr>
			</thead>
			<tbody>
			<#list orderList as orderList>
				<tr class="text-c" id="tr${orderList.order_id}">
					<td><input type="checkbox" value="${orderList.order_id}" name=""></td>
					<td>${orderList_index+1}</td>
					<td>${orderList.user_name}</td>
					<td>${orderList.order_createtime}</td>
					<td>${orderList.order_code}</td>
					<td>${orderList.movie_name}</td>
					<td class="text-l">${orderList.cinema_name}</td>
					<td>${orderList.hall_name}</td>
					<td>${orderList.seat_code}</td>
					<td>${orderList.schedule_date}</td>
					<td>${orderList.schedule_begintime}</td>
					<td class="td-status"><span class="label label-success radius">${orderList.detail_price}</span></td>
					<td class="f-14 td-manage"><a style="text-decoration:none" class="ml-5" onClick="article_del(this,'${orderList.order_id}')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr>
				</#list>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${base.contextPath}/staticadmin/static/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});

/*资讯-添加*/
function article_add(title,url,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-编辑*/
function article_edit(title,url,id,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-删除*/
function article_del(obj,id){//f23d1b29886c4cc088c7fc5c091fcacb
	layer.confirm('确认要删除吗？',function(index){
		 $.get("/IMovie/order/deleteOne",{orderId:id},function(data){
				$(obj).parents("#tr"+id).remove();
				layer.msg('已删除!',{icon:1,time:1000});
				 window.location.reload(true)	
		 });
	});
}
function datadel(){
	var list = $("table tr:gt(0)").find(":checkbox:checked");
	if(list.length==0){
	alert("选中要删除项！")
	}else{
		var params;
		list.each(function(){
			params = params+"&id="+$(this).val();
		});
		layer.confirm('确认要删除吗？',function(index){
		
			$.get("/IMovie/order/deleteSome",{orderIds:params},function(data){
			alert(data)
			list.each(function(){
				var id = "#tr"+$(this).val();
				$(id).remove();
				layer.msg('已删除!',{icon:1,time:1000});
				window.location.reload(true)
			});
		 });
	});
	}
}
/*资讯-审核*/
function article_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}
/*资讯-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*资讯-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*资讯-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}

</script> 
</body>
</html>