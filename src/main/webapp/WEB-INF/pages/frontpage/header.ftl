  <#macro headers returnURL pid >
  
     <header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!-- Logo link-->
                <a href="${base.contextPath}/index/select" class="logo">
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
                            <a target="_blank" href="${base.contextPath}/movieListFull/show">电影</a>
                        </li>
                    </ul>
                </nav>
               <div class="control-panel">
               <#if loginUser ==null>
               		<img src="${base.contextPath}/static/img/default.jpg" class="touxiang" alt="查看个人中心"/>
                    <a href="#"  class="btn btn--sign login-window">登&nbsp;&nbsp;录</a>
                    <#else>
	                    <img src="${base.contextPath}/${loginUser.imgurl}" class="touxiang"/>
	                    <a href="${base.contextPath}/BookTwo/center"  class="btn btn--sign " title="查看个人中心">${loginUser.name}</a>
	                    <a href="${base.contextPath}/details/exit/?returnURL=${returnURL}&pid=${pid}" class="btn btn--sign ">退出</a>
                  	</#if>  
                </div>
            </div>
        </header>
</#macro>