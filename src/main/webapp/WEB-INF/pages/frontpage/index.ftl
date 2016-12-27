<!doctype html>
<html>
<head>
		
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 首页</title>
        <link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    	<!--awesome图标-->
        <link href="${base.contextPath}/static/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <!--其他样式-->
        <link href="${base.contextPath}/static/css/gozha-nav.css" rel="stylesheet" />
        <link href="${base.contextPath}/static/css/external/jquery.selectbox.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="${base.contextPath}/static/rs-plugin/css/settings.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="${base.contextPath}/static/css/bootstrap.min.css" />
         <!--主要样式-->
		<link rel="stylesheet" type="text/css" href="${base.contextPath}/static/css/index.css" />
        <link href="${base.contextPath}/static/css/style.css?v=1" rel="stylesheet" />
		<!--脚本-->
		<script src="${base.contextPath}/static/js/jquery-3.1.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${base.contextPath}/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${base.contextPath}/static/js/external/modernizr.custom.js"></script>
</head>

<body>
    <div class="wrapper">
    	<!--导航栏
        <#include "/frontpage/header.ftl"/>-->
        <#import "/frontpage/header.ftl" as headerPage>
        <@headerPage.headers returnURL="/index/select" pid=-1/>
        
		<!--轮播图-->
         <div class="bannercontainer">
                       <div id="mycarousel" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target='#mycarousel' data-slide-to="0" class="active"></li>
								<li data-target='#mycarousel' data-slide-to="1"></li>
								<li data-target='#mycarousel' data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<a href="#" class="id-a"></a><img src="${base.contextPath}/static/images/b1.jpg" alt=""/>
								</div>
								<div class="item">
									<a href="#" class="id-a"></a><img src="${base.contextPath}/static/images/b2.jpg" alt=""/>
								</div>
								<div class="item">
									<a href="#" class="id-a"></a><img src="${base.contextPath}/static/images/b3.jpg" alt=""/>
								</div>
							</div>
							<a href="#mycarousel" data-slide="prev" class="carousel-control left">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</a>
							<a href="#mycarousel" data-slide="next" class="carousel-control right">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
          </div>
        <!--轮播图结束-->
        <!-- 今日最佳观影选择start -->
        <section class="container">
            <div class="movie-best">
                 <div class="col-sm-10 col-sm-offset-1 movie-best__rating">今日最佳观影选择</div>
                 <div class="col-sm-12 change--col">
            	<#list list as todayBest>
                     <div class="movie-beta__item ">
                        <a href="${base.contextPath}/details/moviedetails?id=${todayBest.movie_id}" target="_blank"><img alt='' src="${base.contextPath}/${todayBest.movie_imgurl}"></a>
                         <span class="best-rate">${todayBest.avg_score?string("0.0")}</span>
                         <ul class="movie-beta__info">
                             <li><span class="best-voted">今日最佳</li>
                             <li>
                                <p class="movie__time">${todayBest.movie_minute} 分钟</p>
                                <p>${todayBest.movie_category} </p>
                                <p>${todayBest.avg_score?string("0.0")} 评分</p>
                             </li>
                             <li class="last-block">
                                 <a href="${base.contextPath}/details/moviedetails?id=${todayBest.movie_id}" class="slide__link">更多</a>
                             </li>
                         </ul>
                     </div>
             	 </#list>
                 </div>
                <div class="col-sm-10 col-sm-offset-1 movie-best__check">点击查看更多热映电影</div>
            </div>
			<!-- 今日最佳观影选择end -->
			
			<!--搜索栏start-->
            <div class="col-sm-12">
                <div class="mega-select-present mega-select-top mega-select--full">
                    <div class="mega-select-marker">
                        <div class="marker-indecator cinema">
                            <p class="select-marker"><span>查找你喜欢</span> <br>电影</p>
                        </div>

                        <div class="marker-indecator film-category">
                            <p class="select-marker"><span>查找你喜欢的 </span> <br> 类型</p>
                        </div>

                        <div class="marker-indecator actors">
                            <p class="select-marker"><span> 查找你喜欢的</span> <br>演员</p>
                        </div>

                        <div class="marker-indecator director">
                            <p class="select-marker"><span>查找你喜欢的 </span> <br>导演</p>
                        </div>

                        <div class="marker-indecator country">
                            <p class="select-marker"><span>查找你喜欢的</span> <br>国家/地区</p>
                        </div>
                    </div>

                      <div class="mega-select pull-right">
                          <span class="mega-select__point">Search by</span>
                          <ul class="mega-select__sort">
                              <li class="filter-wrap"><a href="" class="mega-select__filter filter--active" data-filter='cinema'>电影</a></li>
                              <li class="filter-wrap"><a href="" class="mega-select__filter" data-filter='film-category'>类型</a></li>
                              <li class="filter-wrap"><a href="" class="mega-select__filter" data-filter='actors'>演员</a></li>
                              <li class="filter-wrap"><a href="" class="mega-select__filter" data-filter='director'>导演</a></li>
                              <li class="filter-wrap"><a href="" class="mega-select__filter" data-filter='country'>国家/地区</a></li>
                          </ul>
                          <input name="search-input" type='text' class="select__field">
                          <div class="select__btn">
                            <a target="_blank" href="javascript:void(0)" class="btn btn-md btn--danger location">查找 <span class="hidden-exrtasm"></span></a>
                            <a target="_blank" href="javascript:void(0)" class="btn btn-md btn--danger cinema">查找 <span class="hidden-exrtasm"></span></a>
                            <a target="_blank" href="javascript:void(0)" class="btn btn-md btn--danger film-category">查找 <span class="hidden-exrtasm"></span></a>
                            <a target="_blank" href="javascript:void(0)" class="btn btn-md btn--danger actors">查找 <span class="hidden-exrtasm"></span></a>
                            <a target="_blank" href="javascript:void(0)" class="btn btn-md btn--danger director">查找 <span class="hidden-exrtasm"></span></a>
                            <a target="_blank" href="javascript:void(0)" class="btn btn-md btn--danger country">查找 <span class="hidden-exrtasm"></span></a>
                          </div>
							<script type="text/javascript">
									var btn = $('.select__btn a');
									btn.each(function(j){
										$(this).bind("click",{MenuIndex:j},function(event){
											var input=$(".select__field");
											if(input.val().length==0){
												//btn.attr("href","javascript:void(0);");
												alert("请输入要查询的内容！")
											}else{
												var condition = encodeURI(encodeURI(input.val()));
												//alert(condition);
												btn.attr("href","${base.contextPath}/movieListFull/show?param="+condition+"&value="+event.data.MenuIndex);
											}
											
										});
									});
							</script>
                          <div class="select__dropdowns">
                              <ul class="select__group cinema">
                                <li class="select__variant" data-value='你的名字'>你的名字</li>
                                <li class="select__variant" data-value='海洋奇缘'>海洋奇缘</li>
                                <li class="select__variant" data-value='神奇动物在哪里'>神奇动物在哪里</li>
                                <li class="select__variant" data-value='冲火天'>冲火天</li>
                                <li class="select__variant" data-value='湄公河行动'>湄公河行动</li>
                              </ul>

                              <ul class="select__group film-category">
                                <li class="select__variant" data-value="剧情">剧情</li>
                                <li class="select__variant" data-value='犯罪'>犯罪</li>
                                <li class="select__variant" data-value='爱情'>爱情</li>
                                <li class="select__variant" data-value='喜剧'>喜剧</li>
                                <li class="select__variant" data-value='动画'>动画</li>
                                <li class="select__variant" data-value='惊悚'>惊悚</li>
                              </ul>

                              <ul class="select__group actors">
                                <li class="select__variant" data-value='张涵予'>张涵予</li>
                                <li class="select__variant" data-value='张国荣'>张国荣</li>
                                <li class="select__variant" data-value='范冰冰'>范冰冰</li>
                                <li class="select__variant" data-value='陈赫'>陈赫</li>
                                <li class="select__variant" data-value='彭于晏'>彭于晏</li>
                                <li class="select__variant" data-value='章子怡'>章子怡</li>
                                <li class="select__variant" data-value='伊娃·格林'>伊娃·格林</li>
                                <li class="select__variant" data-value='高山南'>高山南</li>
                              </ul>

                              <ul class="select__group director">
                                <li class="select__variant" data-value='冯小刚'>冯小刚</li>
                                <li class="select__variant" data-value='尔冬升'>尔冬升</li>
                                <li class="select__variant" data-value='林超贤'>林超贤</li>
                                <li class="select__variant" data-value='陈凯歌'>陈凯歌</li>
                                <li class="select__variant" data-value='陈凯歌'>陈凯歌</li>
                              </ul>

                              <ul class="select__group country">
                                <li class="select__variant" data-value='中国大陆'>中国大陆</li>
                                <li class="select__variant" data-value='中国香港'>中国香港</li>
                                <li class="select__variant" data-value='韩国'>韩国</li>
                                <li class="select__variant" data-value='法国'>法国</li>
                                <li class="select__variant" data-value='美国'>美国</li>
                                <li class="select__variant" data-value='日本'>日本</li>
                              </ul>
                          </div>
                      </div>
                  </div>
            </div>
            <!--搜索栏end-->
            <div class="clearfix"></div>
			<!--热映栏、今日票房榜start-->
            <h2 id='target' class="page-heading-left heading--outcontainer" >正在热映中</h2>
            <div class="col-sm-9">
                <div class="row">
                    <div class="col-sm-8 col-md-12">
                        <!-- Movie variant with time -->
                        <#list otherList as otherList>
                            <div class="movie movie--test movie--test--dark movie--test--left">
                                <div class="movie__images">
                                    <a href="${base.contextPath}/details/moviedetails?id=${otherList.movie_id}" target="_blank" class="movie-beta__link">
                                        <img alt='' src="${base.contextPath}/${otherList.movie_imgurl}">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='${base.contextPath}/details/moviedetails?id=${otherList.movie_id}' class="movie__title">${otherList.movie_name}</a>

                                    <p class="movie__time">${otherList.movie_minute} 分钟</p>

                                    <p class="movie__option">${otherList.movie_category}</p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">${otherList.avg_score?string("0.0")}</span>
                                    </div>    
                                </div>
                            </div>
                            </#list>
                         <!-- Movie variant with time -->

                        <div class="row">
                            <div class="social-group">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <aside class="col-sm-4 col-md-3">
                <div class="sitebar first-banner--left">
                        	<ul class="banner-wrap">
            	<span id='target' class="page-heading-right">票房排行榜</span>
                        	<#list salesList as salesList>
                        		<#if salesList_index==0>
                        		<li class="list-one">
                        			<a href="${base.contextPath}/details/moviedetails?id=${salesList.movie_id}" target="_blank">
                        				<i class="a-div-i"></i>
                        				<img src="${base.contextPath}/static/img/top01.jpg" class="img"/>
                        				<span class="right-one">${salesList.movie_name}</span>
                        				<span class="right-two">${salesList.movie_sales/10000}万</span>
                        			</a>
                        		</li>
                        		<#else>
                        		<li class="list-two">
                        			<a href="${base.contextPath}/details/moviedetails?id=${salesList.movie_id}" target="_blank">
                        				<i class="a-div-i-two">${salesList_index+1}</i>
                        				<span class="span-one" title="${salesList.movie_name}">${salesList.movie_name}</span>
                        				<span class="span-two">${salesList.movie_sales/10000}万</span>
                        			</a>
                        		</li>
                        		</#if>
                        		</#list>
                        	</ul>
                        </div>
                    </aside>
			<!--热映栏、今日票房榜end-->
			
			<!--经典电影start-->
            <div class="col-sm-12">
                <h2 class="page-heading">经典 · 电影</h2>
				<#list classicMovie as classicMovie>
                <div class="col-sm-4 similar-wrap col--remove">
                    <div class="post post--preview post--preview--wide">
                        <div class="post__image">
                       		<a href="${base.contextPath}/details/moviedetails?id=${classicMovie.movie_id}" target="_blank" class="btn read-more post--btn">
                            	<img alt='' src="${base.contextPath}/${classicMovie.movie_imgurl}">
                            </a>
                            <div class="social social--position social--hide">
                                <span class="social__name">分享:</span>
                                <a href='#' class="social__variant social--first fa-4x fa fa-qq" aria-hidden="true"></a>
                                <a href='#' class="social__variant social--second fa-4x fa fa-weixin"></a>
                                <a href='#' class="social__variant social--third fa-4x fa fa-weibo"></a>
                            </div>
                        </div>
                        <p class="post__date">${classicMovie.movie_releaseyear}-${classicMovie.movie_releasemonth}上映</p>
                        <a href="${base.contextPath}/details/moviedetails?id=${classicMovie.movie_id}" target="_blank" class="btn read-more post--btn">阅读更多</a>
                    </div>
                </div>
                </#list>
            </div>
            <!--经典电影end-->
        
        </section>
        
        <div class="clearfix"></div>
<!--底部（版权说明）-->
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
<!--登录框-->
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
	                    <input type='checkbox' id='#informed' class='login__check styled'>
	                    <label for='#informed' class='login__check-info'>七天内自动登录</label>
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
        <!-- Bootstrap 3--> 
        <script src="${base.contextPath}/static/js/bootstrap.min.js"></script>

        <!-- jQuery REVOLUTION Slider -->
        <script type="text/javascript" src="${base.contextPath}/static/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="${base.contextPath}/static/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

        <!-- Mobile menu -->
        <script src="${base.contextPath}/static/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="${base.contextPath}/static/js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Stars rate -->
        <script src="${base.contextPath}/static/js/external/jquery.raty.js"></script>
        
        <!-- Form element -->
        <script src="${base.contextPath}/static/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="${base.contextPath}/static/js/login.js"></script>
        <!-- Custom -->
        <script src="${base.contextPath}/static/js/custom.js"></script>
		
	      <script type="text/javascript">
              $(document).ready(function() {
                init_Home();
              });
		    </script>

</body>
</html>
