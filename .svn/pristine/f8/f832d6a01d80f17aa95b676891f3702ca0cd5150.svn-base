<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 确认购买</title>
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
        <!-- Roboto -->
    
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
        
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
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
                    <p class="order__title">立即购票 <br><span class="order__descript">体验观影乐趣</span></p>
                    <div class="order__control">
                        <a href="" class="order__control-btn active">购票</a>
                       <#--<a href="book3-reserve.ftl" class="order__control-btn">预定</a>--> 
                    </div>
                </div>
            </div>
                <div class="order-step-area">
                    <div class="order-step first--step order-step--disable ">1. 选择影片，场次</div>
                    <div class="order-step second--step order-step--disable">2. 选择座位</div>
                    <div class="order-step third--step">3. 确认订单，支付</div>
                </div>

            <div class="col-sm-12">
                <div class="checkout-wrapper">
                    <h2 class="page-heading">票价</h2>
                    <ul class="book-result">
                    	<#if (arraySites?size !=0) >
                    		<#assign sum=0 />
                    		<#if (cheapTicket?size gt 1)>
                    			<#assign sum=sum+(cheapTicket?size-1)*10 />
                    		</#if>
                    		<#if (middleTicket?size gt 1)>
                    			<#assign sum=sum+(middleTicket?size-1)*20 />
                    		</#if>
                    		<#if (expansiveTicket?size gt 1)>
                    			<#assign sum=sum+(expansiveTicket?size-1)*30 />
                    		</#if>
	                        <li class="book-result__item">票数: <span class="book-result__count booking-ticket">${arraySites?size}</span></li>
	                        <#--<li class="book-result__item">单价: <span class="book-result__count booking-price">¥ 20.00</span></li>-->
	                        <li class="book-result__item">总计: <span class="book-result__count booking-cost">¥${sum}</span></li>
                        </#if>
                    </ul>

                    <h2 class="page-heading">选择付款方式</h2>
                    
                    <div class="payment">
                    	<#--
                        <a href="javascript:void(0)" class="payment__item">
                            <img alt='' src="${base.contextPath}/static/img/wx.png">
                        </a>
                        <a href="javascript:void(0)" class="payment__item">
                            <img alt='' src="${base.contextPath}/static/img/cft.png">
                        </a>
                       
                        <a href="${base.contextPath}/order/yeePay" class="payment__item">
                          
                        </a> -->
                        <img alt='' src="${base.contextPath}/static/img/yeePay.png">
                        
                    </div>

					<#--
                    <h2 class="page-heading">取票手机</h2>
            
                    <form id='contact-info' method='post' novalidate="" class="form contact-info">
                        <div class="contact-info__field contact-info__field-tel">
                            <input id="userTel" type='tel' name='user-tel' placeholder='接收电子码的手机号(11位)' class="form__mail">
                        </div>
                    </form>
					-->
                
                </div>
                
                <div class="order">
                    <a href="javascript:void(0)" onclick="confirmPur('${scheduleid}','${str}')" class="btn btn-md btn--warning btn--wide">确认购买</a>
                    <#--<a href="${base.contextPath}/BookTwo/confimBuy?scheduleid=${scheduleid}&str=${str}" class="btn btn-md btn--warning btn--wide">确认购买</a>-->
                </div>

            </div>

        </section>
        

        <div class="clearfix"></div>

        <div class="booking-pagination">
                <a href="javascript:void(0)" onclick="history.go(-1)" class="booking-pagination__prev">
                    <p class="arrow__text arrow--prev">上一步</p>
                    <span class="arrow__info">选择座位</span>
                </a>
                <a href="#" class="booking-pagination__next hide--arrow">
                    <p class="arrow__text arrow--next">下一步</p>
                    <span class="arrow__info"></span>
                </a>
        </div>
        
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
                   <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">登录<br><span class="login-edition">欢迎来到 爱·电影</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-qq"></a>
                                <a href='#' class="social__variant fa fa-weixin"></a>
                                <a href='#' class="social__variant fa fa-weibo"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        <div class="field-wrap">
                    <input type='email' placeholder='用户名' name='user-email' class="login__input">
                    <input type='password' placeholder='密码' name='user-password' class="login__input">

                    <input type='checkbox' id='#informed' class='login__check styled'>
                    <label for='#informed' class='login__check-info'>七天内自动登录</label>
                    <a href="#" class="forgit">忘记密码?</a>
                     </div>
                    <div style="clear: both;">
                    	
                    </div>
                    <div class="login__control">
                        <button type='submit' class="btn btn-md btn--warning btn--wider">登 录</button>
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
			function confirmPur(sid,str){
				//var tel = $('#userTel').val();
				window.location.href="/IMovie/order/yeePay?scheduleid="+sid+"&str="+str;
			}
		</script>

</body>
</html>
