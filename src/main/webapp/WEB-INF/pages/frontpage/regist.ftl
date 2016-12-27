<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 注册</title>
        <link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
        <link rel="stylesheet" type="text/css" href="${base.contextPath}/static/css/other.css"/>
		<link href="${base.contextPath}/static/css/regstyle.css" rel="stylesheet" type="text/css">
		<link href="${base.contextPath}/static/css/valid.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${base.contextPath}/static/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="${base.contextPath}/static/js/Validform_v5.3.2_min.js"></script>
</head>
	<script type="text/javascript">
		$(function(){
		//上传头像
			$("#uploadFile").bind("change",function(){
				var data = new FormData($("#register")[0]);
					$.ajax({
						type:"post",
						url:"/IMovie/regist/upload",
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
				//获取手机验证码
				
		        $(".telcode").bind("click",function(){
						var tel = $("#tel").val();
						var telcode =$("#telcode").val();
							if(tel!=''){
			            		$.ajax({
				            		type:"post",
									url:"${base.contextPath}/regist/sendMess",
							        data: "tel="+tel,
							        error:function(){
							        	alert("error")
							        }
			            		});
		            		}else{
		            			alert("请输入手机号码~")
		            		}
		           });
		           //短信验证码定时器
		            var util = {
			                wait: 60,
			                hsTime: function () {
			                    var _this = this;
			                    if (_this.wait == 0) {
			                        $("#code").removeAttr("disabled").text('重发短信验证码').css("pointer-events","visible");
			                        _this.wait = 60;
			                    } else {
			                        $("#code").attr("disabled", true).text('在' + _this.wait + '秒后点此重发').css("pointer-events","none");
			                        _this.wait--;
			                        var a = setTimeout(function () {
			                        _this.hsTime();
			                        }, 1000)
			                    }
			                }
			            }
			            var tel22 = $("#tel").val();
			            if(tel22!=''){
				            $("#code").click(function(){
				                util.hsTime();
				    		})
			            }
		});
	</script>
<body>
    	<!--导航栏-->
        <header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!--logo-->
                <a href="${base.contextPath}/index/select" class="logo">
                    <img alt='logo' src="${base.contextPath}/static/images/logo.png">
                </a>
                <nav id="navigation-box">
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                </nav>
	             
            </div>
        </header>
        
       <div class="wrapper">
          <div class="regist-container">
           <div class="warp regCont" style="margin-top:-60px;margin-bottom: 100px;">
			<div class="tittle">
		    	<h1>注册您的帐户</h1>
		        <p>已有账户，<a href="${base.contextPath}/pages/frontpage/login">马上登陆</a></p>
		    </div>
		    <div style="padding:20px 20px 40px;">
		        <form method="post" enctype="multipart/form-data" action="${base.contextPath}/regist/add" id="register">
		            <div class="valGroup">
		                <div class="valGroup-item-1 inline-block"><span>*</span> 用户名：</div>
		                <div class="valGroup-item-2 formControls inline-block">
		                    <input type="text" class="input-text-1" ajaxurl="/IMovie/regist/checkName"  datatype="s2-5" nullmsg="请输入用户名" name="name" id="name">
		                </div>
		                <div class="inline-block"></div>
		            </div>
		            <div class="valGroup">
		                <div class="valGroup-item-1 inline-block"><span>*</span> 密码：</div>
		                <div class="valGroup-item-2 formControls inline-block">
		                    <input type="password" class="input-text-1" datatype="s6-18"  name="password" id="password"   placeholder="可由6-18位英文、数字及标点组成">
		                </div>
		                <div class="inline-block"></div>
		            </div>    
		            <div class="valGroup">
		                <div class="valGroup-item-1 inline-block"><span>*</span> 邮箱：</div>
		                <div class="valGroup-item-2 formControls inline-block">
		                    <input type="email" class="input-text-1" ajaxurl="/IMovie/regist/checkEmail" datatype="e" name="email" id="email"  placeholder="请输入常用邮箱地址">
		                </div>
		                <div class="inline-block"></div>
		            </div> 
		            <div class="valGroup">
		                <div class="valGroup-item-1 inline-block"><span>*</span> 手机号码：</div>
		                <div class="valGroup-item-2 formControls inline-block">
		                    <input type="text" class="input-text-1" datatype="m" ajaxurl="/IMovie/regist/checkTel"  name="tel" id="tel"  placeholder="请输入手机号码">
		                </div>
		                <div class="inline-block"></div>
		            </div> 
		            <div class="valGroup">
               		 <div class="valGroup-item-1 inline-block input-file-div"> 上传头像：</div>
               		 	<img src="${base.contextPath}/uploadimages/userImg/default.jpg" id="img" class="input-file-img"/>
		                <div class="valGroup-item-2 formControls inline-block input-file">
		                    <input type="file" name="uploadFile" id="uploadFile">点击这里上传头像
		                    <input type="hidden"  name="imgurl">
		                </div>
		                <div class="inline-block"></div>
		            </div> 
		            <div class="valGroup">
		                <div class="valGroup-item-1 inline-block"><span>*</span> 短信验证码：</div>
		                <div class="valGroup-item-2 formControls inline-block">
		                    <input type="text" class="input-text-1" ajaxurl="/IMovie/regist/checkCode"  datatype="*" nullmsg="请输入验证码"  name="telcode" id="telcode" placeholder=" " style="width:200px;">
		                    <div style="display:inline-block;vertical-align: middle;margin-top: -2px;height:38px;" id="gca">
		                    <a class="telcode" id="code" href="javascript:void(0);">获取短信验证码</a>
		                    </div>
		                </div>
		                <div class="inline-block"></div>
		            </div>   
		            <div class="valGroup">
		                <div class="valGroup-item-1 inline-block">&nbsp;</div>
		                <div class="valGroup-item-2 inline-block">
		                    <input class="valGroup-btn" type="submit" value="&nbsp;&nbsp;确定注册&nbsp;&nbsp;">
		                    <a style="cursor:pointer;display:none" id="btn_sub" target="_blank" class="valGroup-btn">确定注册</a>
		                </div>
		            </div>
		        </form>
		    </div>
		</div>
	 </div>
        <footer class="footer-wrapper">
            <section class="container">
                    <div class="footer-info">
                        <<div class="copy-bottom">
			        	<p class="copy"> 版权所有：爱电影文化传媒工作室  Done by KO Studio</p>
			            <p class="copy"> Copyright&copy; AMovie.com 2016. All rights reserved.</p>
			        </div>
            </section>
        </footer>
    </div>
	 <script type="text/javascript">$(document).ready(function() {
		var demo = $("#register").Validform({
		tiptype: 2
	});
});</script>
</body>
</html>
