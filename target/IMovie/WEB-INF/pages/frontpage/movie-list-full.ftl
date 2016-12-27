<!doctype html>
<html>
<head>
	<#import "/frontpage/page.ftl" as lanqiao>
	<#import "/frontpage/header.ftl" as headerPage>
	<#-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 电影列表</title>
        <link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <#-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <#-- Fonts -->
        <#-- Font awesome - icon font -->
		<link href="${base.contextPath}/static/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <#-- Stylesheets -->
        <#-- jQuery UI -->
        <link href="${base.contextPath}/static/css/jquery-ui.css" rel="stylesheet">

        <#-- Mobile menu -->
        <link href="${base.contextPath}/static/css/gozha-nav.css" rel="stylesheet" />
        <#-- Select -->
        <link href="${base.contextPath}/static/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <#-- Custom -->
        <link href="${base.contextPath}/static/css/style.css?v=1" rel="stylesheet" />
		<link rel="${base.contextPath}/static/stylesheet" type="text/css" href="css/index.css"/>
		<#-- 江 -->
		<link href="${base.contextPath}/static/css/styleJ.css?v=1" rel="stylesheet" />
		<#--<script src="${base.contextPath}/static/js/showtime.js"></script>  --> 
        <#-- Modernizr --> 
        <script src="${base.contextPath}/static/js/external/modernizr.custom.js"></script>
    
    
    	<#-- JavaScript-->
        <#-- jQuery 1.9.1--> 
        <script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <#-- Migrate --> 
        <script src="${base.contextPath}/static/js/external/jquery-migrate-1.2.1.min.js"></script>
        <#-- jQuery UI -->
        <script src="${base.contextPath}/static/js/jquery-ui.js"></script>
        <#-- Bootstrap 3--> 
        <script src="${base.contextPath}/static/js/bootstrap.min.js"></script>

        <#-- Mobile menu -->
        <script src="${base.contextPath}/static/js/jquery.mobile.menu.js"></script>
         <#-- Select -->
        <script src="${base.contextPath}/static/js/external/jquery.selectbox-0.2.min.js"></script> 

        <#-- Stars rate -->
        <script src="${base.contextPath}/static/js/external/jquery.raty.js"></script>
        
        <style type="text/css">
			 #moreInfo:hover{
				font-weight: bold;
			}
		</style>

</head>

<body> 
	
	<input id="userid" type="text"  iconWidth="28" value="${Session ["user_id"]}" style="width:50px;height:24px;padding:10px;display:none;">
    <div class="wrapper">
        <#-- Banner -->
        <#-- Header section 
         <#include "/frontpage/header.ftl"/>-->
         <@headerPage.headers returnURL="/movieListFull/show" pid=-1/>

        <#-- Search bar -->
        <div class="search-wrapper">
        </div>
        
        <#-- Main content -->
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">电影</h2>
                
                <#--
                <div class="select-area">
                    <div class="datepicker">
                      <span class="datepicker__marker"><i class="fa fa-calendar"></i>日期</span>
                      <input type="text" id="datepicker" value='2016-12-01' class="datepicker__input">
                    </div>

                    <form class="select select--cinema" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>万达影城</option>
                            <option value="2">华谊兄弟</option>
                            <option value="3">金逸影城</option>
                            <option value="4">大地数字影城</option>
                        </select>
                    </form>

                    <form class="select select--film-category" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="2" selected='selected'>童话</option>
                            <option value="3">喜剧</option>
                            <option value="4">戏剧</option>
                            <option value="5">科幻</option>
                            <option value="6">恐怖</option>
                            <option value="7">惊悚</option>
                        </select>
                    </form>
                </div>
                -->

                 <div class="tags-area">
                    <div class="tags tags--unmarked">
                        <span class="tags__label"></span>
                            <ul>
                                <li class="item-wrap"><a href="javascript:void(0)" class="tags__item item-active" data-filter='热度'></a></li>
                                <li class="item-wrap"><a href="javascript:void(0)" class="tags__item" data-filter='上映日期'></a></li>
                            </ul>
                    </div>
                </div>
                
                <#-- Movie preview item -->
                <#list list as movie>
                <div class="movie movie--preview movie--full release">
                     <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='电影海报' src="${base.contextPath}/${movie.movie_imgurl}">
                            </div>
                            <div class="movie__feature">
                                <a href="#" class="movie__feature-item movie__feature--comment">${movie.movie_comment_num}</a>
                                <a href="#" class="movie__feature-item movie__feature--video">1</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">${movie.movie_photo_num}</a>
                            </div>
                    </div>

                    <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href="movie-page-full.html" class="movie__title link--huge">${movie.movie_name}</a>

                            <p class="movie__time">${movie.movie_minute}</p>

							<p class="movie__option"><strong>国  家: </strong><a href="#">${movie.movie_country}</a></p>
                            <p class="movie__option"><strong>分  类: </strong><a href="#">${movie.movie_category}</a></p>
                            <p class="movie__option"><strong>上映时间: </strong>${movie.movie_releaseyear}</p>
                            <p class="movie__option"><strong>导  演: </strong><a href="#">${movie.movie_director}</a></p>
                            <p class="movie__option"><strong>演  员: </strong><a href="#">${movie.movie_actors}...</a></p>
                            <p class="movie__option"><strong>更  多: </strong><a id="moreInfo" href="${base.contextPath}/details/moviedetails?id=${movie.movie_id}" style="color: black;text-decoration: underline;font-size:17px;">请点击这里</a></p>
                            
                            <div class="movie__btns">
                                <a class="btn btn-md btn--warning" href="${base.contextPath}/book1/FindNowSchedule?mid=${movie.movie_id}"><span class="hidden-sm">立即 购票</span></a>
                            </div>

                             <div class="preview-footer">
                              <div class="movie__rate">
                               <div class="scores" style="cursor: pointer; width: 130px;">
                           		<img class="eval1" id="star1${movie.movie_id}" onclick="evaluat(${movie.movie_id},2.0,${movie.movie_vote},${movie.movie_voteNum})" src="${base.contextPath}/static/images/rate/star-off.svg" alt="1"  title="bad"/>&nbsp;
                                <img class="eval2" id="star2${movie.movie_id}" onclick="evaluat(${movie.movie_id},4.0,${movie.movie_vote},${movie.movie_voteNum})" src="${base.contextPath}/static/images/rate/star-off.svg" alt="2" title="poor"/>&nbsp;
                                <img class="eval3" id="star3${movie.movie_id}" onclick="evaluat(${movie.movie_id},6.0,${movie.movie_vote},${movie.movie_voteNum})" src="${base.contextPath}/static/images/rate/star-off.svg" alt="3" title="regular"/>&nbsp;
                                <img class="eval4" id="star4${movie.movie_id}" onclick="evaluat(${movie.movie_id},8.0,${movie.movie_vote},${movie.movie_voteNum})" src="${base.contextPath}/static/images/rate/star-off.svg" alt="4" title="good"/>&nbsp;
                                <img class="eval5" id="star5${movie.movie_id}" onclick="evaluat(${movie.movie_id},10.0,${movie.movie_vote},${movie.movie_voteNum})" src="${base.contextPath}/static/images/rate/star-off.svg" alt="5" title="gorgeous"/>
                                <#--  <input type="hidden" name="score">-->
                               </div>
                                <span  class="movie__rate-number" id="rate${movie.movie_id}" >${movie.movie_voteNum}人 已投票</span> &nbsp;
                                <#-- <span id="${movie.movie_id}" class="movie__rating">${movie.movie_vote}</span> -->
                                <span class="movie_rating" id="vote${movie.movie_id}" title="点击相应星星，可以参与点评哦！">${movie.movie_vote}</span>
                              </div>
								 <#--<a href="#" id="showtime${movie.movie_id}" onclick="ajaxShow(${movie.movie_id})" class="movie__show-btn">场次时间</a>-->
								<input id="ee" type="text"  iconWidth="28" value="1" style="width:50px;height:24px;padding:10px;display:none;">
                            </div>
                                

                    </div>

                    <div class="clearfix"></div>
                    
                    <#-- Time table (choose film start time)   按时间更新-->
                    <div class="time-select" id="divForRemove${movie.movie_id}">
                    	<#-- 日期，日期+1 -->
                        <div class="time-select__group group--first">
                            <div class="col-sm-4" id="divForname${movie.movie_id}">
                            </div>
                            <ul class="col-sm-8 items-wrap" id="ulForTime${movie.movie_id}">
                            </ul> 
                            <#--分开了,div整块，ul整块  -->
                        </div>
                    </div>
                    <#-- end time table-->
				
                </div>
                </#list>
                <div class="valGroup" align="center">
					  <@lanqiao.page url="${base.contextPath}/movieListFull/show" pageSize=pager['pageSize'] rows=pager['rows'] nowPage=pager['nowPage'] totalPage=pager['totalPage']/>
    			</div>
                <#-- end movie preview item -->

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

    <#-- open/close -->
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
 
 		<script type="text/javascript">
			
			$(function(){
				 $.ajax({
					type: "get",
					url: "${base.contextPath}/movieListFull/findAllMid",
					dataType: "json",
					success:function(list){
						//var arrList = list.split(',');
						for(var i=0;i<list.length;i++){
							var movieid=list[i];
							var movievote=$("#vote"+movieid).text();
							
							var b=null;
							if(movievote>0){
								if(movievote>1){
									if(movievote>2){
										if(movievote>3){
											if(movievote>4){
												if(movievote>5){
													if(movievote>6){
														if(movievote>7){
															if(movievote>8){
																if(movievote>9){
																	b=10;
																}else{b=9;}
																
															}else{b=8;}
														}else{b=7;}
													}else{b=6;}
												}else{b=5;}
											}else{b=4;}
										}else{b=3;}
									}else{b=2;}
								}else{b=1;}
							}else{b=0;}
							switch(b){
								case 10:
									$("#star5"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star4"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star3"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 9:
									$("#star5"+movieid).attr("src","${base.contextPath}/static/images/rate/star-half.png");
									$("#star4"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star3"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 8:
									$("#star4"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star3"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 7:
									$("#star4"+movieid).attr("src","${base.contextPath}/static/images/rate/star-half.png");
									$("#star3"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 6:
									$("#star3"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 5:
									$("#star3"+movieid).attr("src","${base.contextPath}/static/images/rate/star-half.png");
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 4:
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 3:
									$("#star2"+movieid).attr("src","${base.contextPath}/static/images/rate/star-half.png");
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 2:
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-on.png");
									break;
								case 1:
									$("#star1"+movieid).attr("src","${base.contextPath}/static/images/rate/star-half.png");
									break;
								case 0:
									break;
								default:
									alert("评分异常");
									break;
							}
						}
					}
				})
						
			})
		</script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_MovieList();
                
                 $("#moreInfo").css(font-weight,"blod");
                 
                
            });
		</script>
        <#-- 				点评                                                              -->
         <script type="text/javascript">
            function evaluat(movie_id,a1,movie_vote,movie_voteNum){
	<#--  		alert(movie_id);-->
				var newVote=(movie_vote*movie_voteNum+a1)/(movie_voteNum+1);
				newVote=newVote.toFixed(1);
				var votee="param=1&movie_vote="+a1+"&movie_id="+movie_id;
				$.ajax({
					url:"/IMovie/movieListFull/updatevote",
					type:"get",
					dataType:"text",
					data:votee,
					success:function(data){
					if(data!=-1 && data!=0){
						alert("多谢您的宝贵点评");
						movie_voteNum=movie_voteNum+1;
						$("#rate"+movie_id).text(movie_voteNum+"人 已投票");
						$("#vote"+movie_id).text(newVote);
						
						var b=null;
						if(newVote>0){
							if(newVote>1){
								if(newVote>2){
									if(newVote>3){
										if(newVote>4){
											if(newVote>5){
												if(newVote>6){
													if(newVote>7){
														if(newVote>8){
															if(newVote>9){
																b=10;
															}else{b=9;}
															
														}else{b=8;}
													}else{b=7;}
												}else{b=6;}
											}else{b=5;}
										}else{b=4;}
									}else{b=3;}
								}else{b=2;}
							}else{b=1;}
						}else{b=0;}
						switch(b){
							case 10:
								$("#star5"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star4"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star3"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 9:
								$("#star5"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-half.png");
								$("#star4"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star3"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 8:
								$("#star4"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star3"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 7:
								$("#star4"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-half.png");
								$("#star3"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 6:
								$("#star3"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 5:
								$("#star3"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-half.png");
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 4:
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 3:
								$("#star2"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-half.png");
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 2:
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-on.png");
								break;
							case 1:
								$("#star1"+movie_id).attr("src","${base.contextPath}/static/images/rate/star-half.png");
								break;
							case 0:
								break;
							default:
								alert("评分异常");
								break;
						}
					}else if(data==0){
						alert("该影片您已点评，只能点评一次哦~亲");
					}else if(data==-1){
						alert("您还未登陆，请先点击右上角登录哦~");
					}
				}
			});
	    }
       </script>
       <script type="text/javascript">  
         function ajaxShow(a){
			<#--如果有数据，点击就清除数据  -->
				// 影院对应movie_id,场次时间对应影院,如果显示，则执行ajax更新 
				params="param=1&movie_id="+a;
				 $.ajax({
					url:"${base.contextPath}/movieListFull/updateShowTime",
					type:"get",
					dataType:"json",
					data:params,
					success:function(data){
						$("#aForBuy"+a).attr("href","/IMovie/book1/FindNowSchedule?mid="+a);
						$("#divForname"+a).empty();
						$("#ulForTime"+a).empty();
						if(data.length!=0){
						var cinema_name=data[0].cinema_name;
						var k=0;
						for(var i=0;i<data.length;i++){//9
						if(i>=k){//1,5,7,8  
							if(i==0){
								$("#divForname"+a).append("<p class='time-select__place'>"+cinema_name+"</p>");
								$("#ulForTime"+a).append("<ul>");
								$("#ulForTime"+a).append("<li class='time-select__item' data-time='09:40'>"+data[i].schedule_begintime+"</li>");
							}else{
								if(cinema_name!=data[0].cinema_name)
								{$("#divForname"+a).append("<p class='time-select__place'>"+cinema_name+"</p>");}//i=5,7,8
								
								for(var j=i;j<data.length;j++){
									if(cinema_name==data[j].cinema_name){
										$("#ulForTime"+a).append("<li class='time-select__item' data-time='09:40'>"+data[j].schedule_begintime+"</li>");
									}
									else{//5
										$("#ulForTime"+a).append("</ul>");
										$("#ulForTime"+a).append("<ul>");
										cinema_name=data[j].cinema_name;//K库国际影城  老王上海影院
										k=j;//5 7,8
										break;
									}

									
								}
							}
						}
					}
				}
				else{
					$("#divForRemove"+a).remove();
					$("#aForBuy"+a).removeAttr("href");
					$("#aForBuy"+a).text("没有场次");
				}
			}
						
			});
		}
	   </script>
	  
	   
	   <script src="${base.contextPath}/static/js/login.js"></script>
	   <script src="${base.contextPath}/static/js/custom.js"></script>
</body>
</html>



