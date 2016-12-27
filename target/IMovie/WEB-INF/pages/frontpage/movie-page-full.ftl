<!doctype html>
<html> 
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 电影详情</title>
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
        <!-- jQuery UI --> 
        <link href="${base.contextPath}/static/css/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="${base.contextPath}/static/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="${base.contextPath}/static/css/external/jquery.selectbox.css" rel="stylesheet" /> 
        <!-- Swiper slider -->
        <link href="${base.contextPath}/static/css/external/idangerous.swiper.css" rel="stylesheet" />
        <!-- Magnific-popup -->
        <link href="${base.contextPath}/static/css/external/magnific-popup.css" rel="stylesheet" />

    
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
<@headerPage.headers returnURL="/details/moviedetails" pid="${id}"/>
        <!-- Search bar -->
        <div class="search-wrapper">
        </div>
        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12">
                <div class="movie">
                    <h2 class="page-heading"><#list detailsList as details>${details.movie_name}
                    </h2>
                    
                    <div class="movie__info">
                        <div class="col-sm-4 col-md-3 movie-mobile">
                            <div class="movie__images">
                                <span class="movie__rating">${avg_vote}</span>
                                <img alt='' src="${base.contextPath}/${details.movie_imgurl}">
                            </div>
                            <#--<div class="movie__rate"><div id='score' class="score"></div></div>-->
                        </div>

                        <div class="col-sm-8 col-md-9">
                                      <p class="movie__time">${details.movie_minute} 分钟</p>

                            <p class="movie__option"><strong>国家: </strong><a style="color: black;" href="#">${details.movie_country}</a></p>
                            <p class="movie__option"><strong>类型: </strong><a style="color: black;" href="#">${details.movie_category}</a></p>
                            <p class="movie__option"><strong>上映时间: </strong>${details.movie_releaseyear}-${details.movie_releasemonth}</p>
                            <p class="movie__option"><strong>导演: </strong><a style="color: black;" href="#">${details.movie_director}</a></p>
                            <p class="movie__option"><strong>演员: </strong>${details.movie_actors}...</p>
                            <p class="movie__option"><strong>票房: </strong>${(details.movie_sales/10000)?string('#.###')}万</p>
							
                            <a href="#"  class="comment-link">评论:  ${commentCount}</a>

                             <div class="movie__btns">
                                <a href="${base.contextPath}/book1/FindNowSchedule?mid=${details.movie_id}" target="_blank" class="btn btn-md btn--warning"> <span class="hidden-sm">立即购票</span></a>
                            </div>


                            <div class="share">
                                <span class="share__marker">分享: </span>
                                <div class="addthis_toolbox addthis_default_style ">
                                	<a href='#' class="social__variant social--first fa-1x fa fa-qq" aria-hidden="true"></a>
	                                <a href='#' class="social__variant social--second fa-1x fa fa-weixin" style="margin: 0 5px;"></a>
	                                <a href='#' class="social__variant social--third fa-1x fa fa-weibo"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                    
                    <h2 class="page-heading">剧情简介</h2>

                    <p class="movie__describe">${details.movie_plot}                    </p>

                    <h2 class="page-heading">剧照 &amp; 花絮</h2>
                    </#list>
                    <div class="movie__media">
                        <div class="movie__media-switch">
                            <a href="javascript:void(0)" class="watchlist list--photo" data-filter='media-photo'>0 花絮</a>
                            <a href="javascript:void(0)" class="watchlist list--video" data-filter='media-video'> ${imageCount} 剧照</a>
                        </div>

                        <div class="swiper-container">
                          <div class="swiper-wrapper">
                              <!--First Slide-->
                              <#list imageList as images>
                              <div class="swiper-slide media-video">
                                <a href='#' class="movie__media-item ">
                                     <img alt='' src="${base.contextPath}/uploadimages/ndmz/${images.image_url}" style = "width:216px;height:130px">
                                </a>
                              </div>
                              </#list>
                          </div>
                        </div>
                    </div>
                </div>

               
                    <!-- hiden maps with multiple locator-->
                    <#--  <div  class="map">
                        <div id='cimenas-map'></div> 
                    </div>-->

                    <h2 class="page-heading" id="commentNum">评论 (${commentCount})</h2>

                    <div class="comment-wrapper">
                        <form id="comment-form" action="" method="post" enctype="multipart/form-data" class="comment-form">
                            <textarea class="comment-form__text" id="textContent" name="uploadFile"></textarea>
                            <label class="comment-form__info">250字左右</label>
                            <div id="regtip" style="display:none;color: red;">请输入内容！</div>
                            <input type="password" hidden="hidden" name="movieid" value="${id}"/>
                            <input type="password" hidden="hidden" name="userid" value="${loginUser.id}"/>
                            <button type="button" id="commentButton"  class="btn btn-md btn--danger comment-form__btn">添加评论</button>
                        </form>

                        <div class="comment-sets">
	                        <div class="comment">
								<#list commentList as comment>
		                            <div class="comment__images">
		                                <img alt='' src="${base.contextPath}/${comment.user_imgurl}" style="width:43px;height:43px;border-radius:50px;">
		                            </div>
		                            <a href='#' class="comment__author"><span class="social-used "></span>${comment.user_name}</a>
		                            <p class="comment__date">${comment.comment_time?string('yyyy-MM-dd HH:mm:ss')}</p>
		                            <p class="comment__message" style="padding-left:85px">${comment.comment_content}</p>
		                            <#--  <a href='#' class="comment__reply">回复</a>-->
								</#list>
	                        </div>

	                        <div class="comment-more">
	                            <a href="#" class="watchlist">显示更多评论</a>
	                        </div>
                   		 </div>
                    </div>
                </div>
            </div>
        </section>
        
        <div id="qingcheng" class="clearfix"></div>

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
	                    <div id="msg" style="display:none;color: red;">用户名或密码错误</div>
	                    <input type='checkbox' id='#informed' class='login__check styled' name='autologin'>
	                    <label class='login__check-info'>七天内自动登录</label>
	                    <a href="#" class="forgit">忘记密码?</a>
	                     </div>
	                    <div style="clear: both;">
	                    	
	                    </div>
	                    <div class="login__control">
	                        <button type='submit' class="btn btn-md btn--warning btn--wider">登录</button>
	                        <p class="regist">还没有账号？<a href="${base.contextPath}/pages/frontpage/regist" target="_top">免费注册</a></p>
	                    </div>
                    </form>
                 
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"><\/script>')</script>
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

        <!-- Stars rate -->
        <script src="${base.contextPath}/static/js/external/jquery.raty.js"></script>
        <!-- Swiper slider -->
        <script src="${base.contextPath}/static/js/external/idangerous.swiper.min.js"></script>
        <!-- Magnific-popup -->
        <script src="${base.contextPath}/static/js/external/jquery.magnific-popup.min.js"></script> 

        <!--*** Google map  ***-->
        <#--  <script src="https://maps.google.com/maps/api/js?sensor=true"></script> -->
        <!--*** Google map infobox  ***-->
        <#--<script src="${base.contextPath}/static/js/external/infobox.js"></script> -->

        <!-- Share buttons -->
        <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

        <!-- Form element -->
        <script src="${base.contextPath}/static/js/external/form-element.js"></script>
        
        <script type="text/javascript">
			$(function(){
				$('#textContent').click(function(){
					var userid = $('input[name="userid"]').val();
					if(userid==''){
						alert('亲~，请点击右上角进行登录哦')
					}
				})
				$("#commentButton").click(function(){
					var movieid = $('input[name="movieid"]').val();
					var userid = $('input[name="userid"]').val();
					var content = $('#textContent').val();
					if(userid==''){
						alert('亲~，请点击右上角进行登录哦')
						return false;
					}else{
						if(content.trim()==''){
							$('#regtip').css("display","block");
						}else{
							$.ajax({
						        type:'POST',
						        url:"/IMovie/details/addcomment",
						        data: {"movieid":movieid,"userid":userid,"content":encodeURI(content)},
						        async: true,
						        success: function(data){
						        	var arr="<div class='comment__images'><img alt='' src='${base.contextPath}/"+data.imgurl+"' style='width:43px;height:43px;border-radius:50px;'></div><a href='#' class='comment__author'><span class='social-used'></span>"+data.username+"</a><p class='comment__date'>"+data.commenttime+"</p><p class='comment__message' style='padding-left:85px'>"+data.content+"</p>";
						           $('.comment').prepend(arr);
						           $('#textContent').val("");
						           var cnum = $('#commentNum').html("评论("+data.commentnum+")");
						          // alert("评论成功！")
						        },
						        error: function(){
						            alert("error");
						        }
						    });
						}
					}
					
				});
			})
		</script>

        <!-- Custom -->
        <script src="${base.contextPath}/static/js/custom.js"></script>
        <script src="${base.contextPath}/static/js/jquery-form.js"></script>
		<script src="${base.contextPath}/static/js/login.js"></script>
		<script src="${base.contextPath}/static/js/detailsComment.js"></script>
		<script type="text/javascript">
            $(document).ready(function() {
                init_MoviePage();
                 init_MoviePageFull();
                 validateLogin();
                 //validateComment();
            });
		</script>
		
		
		
</body>
</html>
