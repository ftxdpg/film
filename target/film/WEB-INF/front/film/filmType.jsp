<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html> 
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>电影分类</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    
    <!-- Stylesheets -->
        <!-- jQuery UI --> 
        <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="${pageContext.request.contextPath}/resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="${pageContext.request.contextPath}/resources/css/external/jquery.selectbox.css" rel="stylesheet" />
        <!-- Swiper slider -->
        <link href="${pageContext.request.contextPath}/resources/css/external/idangerous.swiper.css" rel="stylesheet" />
        <!-- Magnific-popup -->
        <link href="${pageContext.request.contextPath}/resources/css/external/magnific-popup.css" rel="stylesheet" />

    
        <!-- Custom -->
        <link href="${pageContext.request.contextPath}/resources/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="${pageContext.request.contextPath}/resources/js/external/modernizr.custom.js"></script>
</head>

<body>
    <div class="wrapper">
        <!-- Banner -->
        <!-- Header section -->
        <header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!-- Logo link-->
                <a href='${pageContext.request.contextPath}/common/index' class="logo">
                    <img alt='logo' src="${pageContext.request.contextPath}/resources/images/logo.png">
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
                            <span class="sub-nav-toggle plus"></span>
                            <a href="" style="margin-left: 290px;">电影分类</a>
                            <ul class="mega-menu container">
                                <li class="col-md-3 mega-menu__coloum">
                                    <ul class="mega-menu__list">
                                        <%-- 第一格 --%>
                                        <li class="mega-menu__nav-item"><a href="#">喜剧</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">爱情</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">动作</a></li>
                                    </ul>
                                </li>

                                <%-- 第二格 --%>
                                <li class="col-md-3 mega-menu__coloum">
                                    <ul class="mega-menu__list">
                                        <li class="mega-menu__nav-item"><a href="#">惊悚</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">悬疑</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">动画</a></li>
                                    </ul>
                                </li>

                                <%-- 第三格 --%>
                                <li class="col-md-3 mega-menu__coloum">
                                    <ul class="mega-menu__list">
                                        <li class="mega-menu__nav-item"><a href="#">科幻</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">战争</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">青春</a></li>
                                    </ul>
                                </li>

                                <%-- 第四格 --%>
                                <li class="col-md-3 mega-menu__coloum">
                                    <ul class="mega-menu__list">
                                        <li class="mega-menu__nav-item"><a href="#">华语</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">美国</a></li>
                                        <li class="mega-menu__nav-item"><a href="#">其他</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
                    <c:choose>
                        <c:when test="${!empty sessionScope.user}">
                            <div class="auth auth--home">
                                <div class="auth__show">
                            <span class="auth__image">
                              <img alt="" src="${pageContext.request.contextPath}/resources/images/31-31.png">
                            </span>
                                </div>
                                <a href="#" class="btn btn--sign btn--singin">
                                        ${sessionScope.user.name}
                                </a>
                                <ul class="auth__function">
                                    <li><a href="#" class="auth__function-item">我的动态</a></li>
                                    <li><a href="#" class="auth__function-item">用户设置</a></li>
                                    <li><a href="#" class="auth__function-item">注销</a></li>
                                </ul>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="auth auth--home" style="margin-top: 6px; left: -150px; top: -8px;">
                                <a href="${pageContext.request.contextPath}/common/loginUI" class="btn btn--sign">登录</a>
                            </div>
                            <div class="auth auth--home" style="top: -8px; margin-top: 1px; left: -100px;">
                                <a href="${pageContext.request.contextPath}/common/emailRegUI" class="btn btn--sign" style="top: 5px;">注册</a>
                            </div>
                        </c:otherwise>
                    </c:choose>
                    <a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">预定电影票</a>
                </div>
            </div>
        </header>
        
        <!-- Search bar -->
        <div class="search-wrapper">
            <div class="container container--add">
                <form id='search-form' method='get' class="search">
                    <input type="text" class="search__field" placeholder="Search">
                    <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">电影分类</h2>
                <div class="choose-container">
                    <div class="clearfix"></div>

                    <div class="time-select">
                        <div class="time-select__group group--first">
                            <div class="col-sm-4">
                                <p class="time-select__place">类型</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" value='喜剧'>喜剧</li>
                                <li class="time-select__item" value='爱情'>爱情</li>
                                <li class="time-select__item active" value='动作'>动作</li>
                                <li class="time-select__item" value='惊悚'>惊悚</li>
                                <li class="time-select__item" value='悬疑'>悬疑</li>
								<li class="time-select__item" value='动画'>动画</li>
								<li class="time-select__item" value='科幻'>科幻</li>
								<li class="time-select__item" value='战争'>战争</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">国家</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" value='青春'>华语</li>
								<li class="time-select__item" value='美国'>美国</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">年份</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" value='2017'>2017</li>
								<li class="time-select__item" value='2016'>2016</li>
								<li class="time-select__item" value='2015'>2015</li>
								<li class="time-select__item" value='2014'>2014</li>
								<li class="time-select__item" value='2013'>2013</li>
								<li class="time-select__item" value='2012'>更前</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        
        <div class="clearfix"></div>
    </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="${pageContext.request.contextPath}/resources/behind/js/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="${pageContext.request.contextPath}/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="${pageContext.request.contextPath}/resources/js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Stars rate -->
        <script src="${pageContext.request.contextPath}/resources/js/external/jquery.raty.js"></script>
        <!-- Swiper slider -->
        <script src="${pageContext.request.contextPath}/resources/js/external/idangerous.swiper.min.js"></script>
        <!-- Magnific-popup -->
        <script src="${pageContext.request.contextPath}/resources/js/external/jquery.magnific-popup.min.js"></script>

        <!-- Share buttons -->
        <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

        <!-- Form element -->
        <script src="${pageContext.request.contextPath}/resources/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="${pageContext.request.contextPath}/resources/behind/js/form.js"></script>

        <!-- Custom -->
        <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_MoviePage();
                 init_MoviePageFull();
            });
		</script>

</body>
</html>
