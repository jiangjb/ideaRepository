<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 登录</title>
        <link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
    <link href="${base.contextPath}/static/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="${base.contextPath}/static/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="${base.contextPath}/static/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="${base.contextPath}/static/css/style.css?v=1" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="${base.contextPath}/static/css/index.css"/>
        <!-- Modernizr --> 
        <script src="${base.contextPath}/static/js/external/modernizr.custom.js"></script>
        
        <script type="text/javascript" src="${base.contextPath}/static/js/jquery-3.1.0.min.js"></script>
        
        <!--validateform表单验证
        <link href="${base.contextPath}/static/css/regstyle.css" rel="stylesheet" type="text/css">
		<link href="${base.contextPath}/static/css/valid.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${base.contextPath}/static/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="${base.contextPath}/static/js/Validform_v5.3.2_min.js"></script>-->
		<!--validateform表单验证结束-->
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
        <!-- Banner -->
        

        <!-- Header section -->
         <header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!-- Logo link-->
                <a href='index.ftl' class="logo">
                    <img alt='logo' src="${base.contextPath}/static/images/logo.png">
                </a>
                <!-- Main website navigation-->
                <nav id="navigation-box">
                    <!-- Toggle for mobile menu mode -->
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                    <!-- Link navigation -->
                    <ul id="navigation">
                        <li>
                            <a href="${base.contextPath}/index/select">首页</a>
                        </li>
                        <li>
                            <a href="${base.contextPath}/movieListFull/show">电影</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>

        <!-- Search bar -->
        <div class="search-wrapper">
        </div>
        
        <!-- Main content -->
                <form action="${base.contextPath}/BookTwo/loginQC"  class="login" method="post" >
                    <p class="login__title">登 录<br><span class="login-edition">欢迎 登录 爱.电影网</span></p>

                    <div class="social social--colored">
                            <a href='#' class="social__variant fa fa-qq"></a>
                            <a href='#' class="social__variant fa fa-weixin"></a>
                            <a href='#' class="social__variant fa fa-weibo"></a>
                    </div>

                    <p class="login__tracker">or</p>
                    
                    <div class="field-wrap">
                    
                    
                    <input type='text' placeholder='用户名' id="username" name='username' class="login__input">
                    <div id="usernameMsg"></div>
                    <input type='password' placeholder='密码' id="password" name='password' class="login__input">
                    <div id="passwordMsg"></div>
                    <#if errmsg !=null>
                    	<div id="errorMsg">
                    		<span >
                    			<font style='font-size: 16px;' color='red'>用户名或密码错误，请重新输入！</font>
                    		</span>
                    	</div>
                    <#else>
     				</#if>
<input hidden="hidden" type="password" name="returnURL"  value="${returnURL}" />
                    <input type='checkbox' id='#informed' class='login__check styled'>
                    <label for='#informed' class='login__check-info'>七天内自动登录</label>
                    <a href="#" class="forgit">忘记密码?</a>
                    </div>
                    <div style="clear: both;">
                    	
                    </div>
                    
                    <div class="login__control">
                        <button type='button' id='submitButton' class="btn btn-md btn--warning btn--wider">登 录</button>
                        <p class="regist">还没有账号？<a href="${base.contextPath}/pages/frontpage/regist" target="_top">免费注册</a></p>
                    </div>
                </form>
        
        <div class="clearfix"></div>
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
        	
        <!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="${base.contextPath}/static/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="${base.contextPath}/static/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="${base.contextPath}/static/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="${base.contextPath}/static/js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Form element -->
        <script src="${base.contextPath}/static/js/external/form-element.js"></script>
        <!-- Form validation -->
        <!--<script src="${base.contextPath}/static/js/form.js"></script>-->

        <!-- Custom -->
        <script src="${base.contextPath}/static/js/custom.js"></script>
        
        <script type="text/javascript">
			$(function(){
				
				$('#username').blur(function(){
					var username = $('#username').val();
					//alert(username);
					if(username==''){
						$("#usernameMsg").html("<span ><font style='font-size: 13px;' color='red'>请输入用户名！</font></span>");
					}else{
						$("#usernameMsg").html("");
					}
				})
				$('#password').blur(function(){
					var password = $('#password').val();
					//alert(password);
					if(password==''){
						$("#passwordMsg").html("<span ><font style='font-size: 13px;' color='red'>请输入密码！</font></span>");
					}else{
						$("#passwordMsg").html("");
					}
				})
				$('#submitButton').click(function(){
					var username = $('#username').val();
					var password = $('#password').val();
					if(username!='' && password!=''){
						$('form').submit();
					}else{
						alert('请输入用户名或密码！')
					}
				})
				
			})
		</script>

</body>
</html>
