<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 订票完成</title>
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
        <!-- Mono font -->
       
    <!-- Stylesheets -->
    <!-- jQuery UI --> 
        <link href="${base.contextPath}/static/css/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="${base.contextPath}/static/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="${base.contextPath}/static/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="${base.contextPath}/static/css/style.css?v=1" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="${base.contextPath}/static/css/index.css"/>
        <!-- Modernizr --> 
        <script src="${base.contextPath}/static/js/external/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper place-wrapper">
        <!-- Banner -->
        

        <!-- Header section 
   		<#include "/frontpage/header.ftl"/>-->
   		<#import "/frontpage/header.ftl" as headerPage>
        <@headerPage.headers returnURL="/index/select" pid=-1/>

        <!-- Search bar -->
        <!-- Main content -->

        <section class="container">
            <div class="order-container">
                <div class="order">
                    <img class="order__images" alt='' src="${base.contextPath}/static/images/tickets.png">
                    <p class="order__title">恭 喜 您 <br><span class="order__descript">购票成功</span></p>
                </div>

                <div class="ticket">
                    <div class="ticket-position">
                        <div class="ticket__indecator indecator--pre"><div class="indecator-text pre--text">online ticket</div> </div>
                        <div class="ticket__inner">

                            <div class="ticket-secondary">
                                <span class="ticket__item">票号：<strong class="ticket__number">${confirmBuyInfo.ticketCode}</strong></span>
	                                <span class="ticket__item">时间：<span class="ticket__time ticket__date">${confirmBuyInfo.releaseYear}-${confirmBuyInfo.releaseMonth} ${confirmBuyInfo.beginTime?string('HH:mm')}</span></span></span>
	                                <span class="ticket__item">影院: <span class="ticket__cinema">${confirmBuyInfo.cinemaName}</span></span>
	                                <span class="ticket__item">影厅: <span class="ticket__hall">${confirmBuyInfo.hallName}</span></span>
                                <span class="ticket__item ticket__price">票价: <strong class="ticket__cost">¥ ${sumPrice}</strong></span>
                            </div>

                            <div class="ticket-primery">
                                	<span class="ticket__item ticket__item--primery ticket__film">影片<br><strong class="ticket__movie">${confirmBuyInfo.movieName}</strong></span>
                                	<span class="ticket__item ticket__item--primery">座位: <span class="ticket__place">${allSeat}</span></span>
                            </div>


                        </div>
                        <div class="ticket__indecator indecator--post"><div class="indecator-text post--text">online ticket</div></div>
                    </div>
                </div>

                <div class="ticket-control">
                    <a href="${base.contextPath}/index/select" class="ticket-continue">点击返回首页</a>
                </div>

            </div>
        </section>
        
        <div class="clearfix"></div>

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

    <!-- open/close -->
          <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='post'action="${base.contextPath}/details/login">
                        <p class="login__title">登录<br><span class="login-edition">欢迎来到 爱·电影</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-qq"></a>
                                <a href='#' class="social__variant fa fa-weixin"></a>
                                <a href='#' class="social__variant fa fa-weibo"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
	                    <input type='text' placeholder='用户名' name='username' class="login__input">
	                    <div id="errorUser" style="display:none;color: red;">用户名不能为空</div>
	                    <input type='password' placeholder='密码' name='password' class="login__input">
	                    <div id="errorPassword" style="display:none;color: red;">密码不能为空</div>
	                    <input type='checkbox' id='#informed' class='login__check styled'>
	                    <label for='#informed' class='login__check-info'>七天内自动登录</label>
	                    <a href="#" class="forgit">忘记密码?</a>
	                     </div>
	                    <div style="clear: both;">
	                    	
	                    </div>
	                    <div class="login__control">
	                        <button type='submit' class="btn btn-md btn--warning btn--wider">登录</button>
	                        <p class="regist">还没有账号？<a href="#" target="_top">免费注册</a></p>
	                    </div>
                    </form>
                 
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="${base.contextPath}/static/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="${base.contextPath}/static/js/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="${base.contextPath}/static/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="${base.contextPath}/static/js/jquery.mobile.menu.js"></script>
        <!-- Select -->
        <script src="${base.contextPath}/static/js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Form element -->
        <script src="${base.contextPath}/static/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="${base.contextPath}/static/js/form.js"></script>
		
        <!-- Custom -->
        <script src="${base.contextPath}/static/js/custom.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('.top-scroll').parent().find('.top-scroll').remove();
            });
        </script>

</body>
</html>
