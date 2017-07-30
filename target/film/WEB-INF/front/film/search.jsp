<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>电影查询结果</title>
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
    
        <!-- Custom -->
        <link href="${pageContext.request.contextPath}/resources/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="${pageContext.request.contextPath}/resources/js/external/modernizr.custom.js"></script>
    
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
                <form id='search-form' method='post' class="search" action="${pageContext.request.contextPath}/film/filmCommon/common/selectByFilmName">
                    <input type="text" id="name" name="name" class="search__field" placeholder="Search">
                    <button type='submit' class="btn btn-md btn--danger search__button">搜索电影</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <c:if test="${!empty film}">
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">Movies</h2>
                <!-- Movie preview item -->
                <div class="movie movie--preview movie--full release">
                     <div class="col-sm-3 col-md-2 col-lg-2">
                        <div class="movie__images">
                            <img alt='' src="${pageContext.request.contextPath}/resources/behind/images/${film.img}">
                        </div>
                    </div>
                    <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                        <a  class="movie__title link--huge">${film.name}</a>
                        <p class="movie__time">${film.time}</p>
                        <p class="movie__option"><strong>国家: </strong>${film.contry}</p>
                        <p class="movie__option"><strong>年份: </strong>${film.createtime}</p>
                        <p class="movie__option"><strong>类型: </strong><c:forEach items="${film.typesList}" var="type">${type.typeName}&nbsp;</c:forEach></p>
                        <p class="movie__option"><strong>导演: </strong>${film.director}</p>
                        <p class="movie__option"><strong>演员: </strong>${film.actor}</p>
                        <p class="movie__option"><strong>价格: </strong>${film.price}</p>

                        <div class="movie__btns">
                            <a href="${pageContext.request.contextPath}/film/user/car/insetCar?filmId=${film.filmid}&userId=${user.uid}" class="btn btn-md btn--warning">加入购物车</a>
                            <div id="collected" style="margin-top: 20px;">
                                <c:choose>
                                    <c:when test="${!empty sessionScope.user}">
                                        <c:choose>
                                            <c:when test="${empty userFilm}">
                                                <a href="${pageContext.request.contextPath}/film/user/collect?filmId=${film.filmid}&userId=${user.uid}" class="watchlist">收藏至观看列表</a>
                                            </c:when>
                                            <c:otherwise>
                                                已收藏，点击<a href="${pageContext.request.contextPath}/film/user/userInfo?uid=${user.uid}">查看收藏</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:otherwise>
                                        没有<a href="${pageContext.request.contextPath}/common/loginUI">登录</a>，无法查看收藏记录
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>

                        <div class="preview-footer">
                            <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">170 votes</span> <span class="movie__rating">5.0</span></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </section>
        </c:if>
        <c:if test="${empty film}">
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">Movies</h2>
                没有查询结果，你可以<a href="${pageContext.request.contextPath}/common/index">前往首页</a>
            </div>
        </section>
        </c:if>
        
        <div class="clearfix"></div>

        <footer class="footer-wrapper">
            <section class="container">
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Cities</a></li>
                        <li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
                        <li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
                        <li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="coming-soon.html" class="nav-link__item">Coming soon</a></li>
                        <li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
                        <li><a href="offers.html" class="nav-link__item">Best offers</a></li>
                        <li><a href="news-left.html" class="nav-link__item">News</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Terms of use</a></li>
                        <li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
                        <li><a href="contact.html" class="nav-link__item">Contacts</a></li>
                        <li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="footer-info">
                        <p class="heading-special--small">A.Movie<br><span class="title-edition">in the social media</span></p>

                        <div class="social">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-vk"></a>
                            <a href='#' class="social__variant fa fa-instagram"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                            <a href='#' class="social__variant fa fa-pinterest"></a>
                        </div>
                        
                        <div class="clearfix"></div>
                        <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                    </div>
                </div>
            </section>
        </footer>
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

        <!-- Form element -->
        <script src="${pageContext.request.contextPath}/resources/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="${pageContext.request.contextPath}/resources/behind/js/form.js"></script>

        <!-- Custom -->
        <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_MovieList();
            });
		</script>

</body>
</html>
