<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>电影详情</title>
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

    <!-- 搜索框 -->
    <div class="search-wrapper" style="margin-top: 55px;">
        <div class="container container--add">
            <form id='search-form' method='get' class="search">
                <input type="text" class="search__field" placeholder="Search">
                <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                    <option value="1" selected='selected'>By title</option>
                    <option value="2">By year</option>
                    <option value="3">By producer</option>
                    <option value="4">By title</option>
                    <option value="5">By year</option>
                </select>
                <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
            </form>
        </div>
    </div>

    <!-- Main content -->
    <section class="container">
        <div class="col-sm-12">
            <div class="movie">
                <h2 class="page-heading">${film.name}</h2>

                <div class="movie__info">
                    <div class="col-sm-4 col-md-3 movie-mobile">
                        <div class="movie__images">
                            <span class="movie__rating">${film.point}</span>
                            <img alt='' src="${pageContext.request.contextPath}/resources/behind/images/${film.img}" height="384" width="256">
                        </div>
                        <div class="movie__rate">
                            热度:
                            <c:choose>
                                <c:when test="${film.point <= 2}">
                                    <div class="score" style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:when test="${2 < film.point && film.point <= 4}">
                                    <div class="score" style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:when test="${4 < film.point && film.point <= 6}">
                                    <div class="score" style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:when test="${6 < film.point && film.point <= 8}">
                                    <div class="score" style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>

                    <div class="col-sm-8 col-md-9">
                        <p class="movie__time">${film.time}</p>

                        <p class="movie__option"><strong>国家: </strong>${film.contry}</p>
                        <p class="movie__option"><strong>年份: </strong>${film.createtime}</p>
                        <p class="movie__option"><strong>类型: </strong><c:forEach items="${film.typesList}" var="type">${type.typeName}&nbsp;</c:forEach></p>
                        <p class="movie__option"><strong>导演: </strong>${film.director}</p>
                        <p class="movie__option"><strong>演员: </strong>${film.actor}</p>
                        <p class="movie__option"><strong>价格: </strong>${film.price}</p>

                        <a href="#" class="comment-link">Comments:  15</a>

                        <div class="movie__btns movie__btns--full">
                            <a href="#" class="btn btn-md btn--warning">预定该电影票</a>
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
                            <div id="car" style="margin-top: 40px;">
                                <a href="${pageContext.request.contextPath}/film/user/car/insetCar?filmId=${film.filmid}&userId=${user.uid}" class="watchlist">添加至购物车</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <h2 class="page-heading">The plot</h2>

                <p class="movie__describe">${film.introduction}</p>

            </div>

            <h2 class="page-heading">showtime &amp; tickets</h2>
            <div class="choose-container">
                <form id='select' class="select" method='get'>
                    <select name="select_item" id="select-sort" class="select__sort" tabindex="0">
                        <option value="1" selected='selected'>London</option>
                        <option value="2">New York</option>
                        <option value="3">Paris</option>
                        <option value="4">Berlin</option>
                        <option value="5">Moscow</option>
                        <option value="3">Minsk</option>
                        <option value="4">Warsawa</option>
                        <option value="5">Kiev</option>
                    </select>
                </form>

                <div class="datepicker">
                    <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                    <input type="text" id="datepicker" value='03/10/2014' class="datepicker__input">
                </div>

                <div class="clearfix"></div>

                <div class="time-select">
                    <div class="time-select__group group--first">
                        <div class="col-sm-4">
                            <p class="time-select__place">Cineworld</p>
                        </div>
                        <ul class="col-sm-8 items-wrap">
                            <li class="time-select__item" data-time='09:40'>09:40</li>
                            <li class="time-select__item" data-time='13:45'>13:45</li>
                            <li class="time-select__item active" data-time='15:45'>15:45</li>
                            <li class="time-select__item" data-time='19:50'>19:50</li>
                            <li class="time-select__item" data-time='21:50'>21:50</li>
                        </ul>
                    </div>

                    <div class="time-select__group">
                        <div class="col-sm-4">
                            <p class="time-select__place">Empire</p>
                        </div>
                        <ul class="col-sm-8 items-wrap">
                            <li class="time-select__item" data-time='10:45'>10:45</li>
                            <li class="time-select__item" data-time='16:00'>16:00</li>
                            <li class="time-select__item" data-time='19:00'>19:00</li>
                            <li class="time-select__item" data-time='21:15'>21:15</li>
                            <li class="time-select__item" data-time='23:00'>23:00</li>
                        </ul>
                    </div>

                    <div class="time-select__group">
                        <div class="col-sm-4">
                            <p class="time-select__place">Curzon</p>
                        </div>
                        <ul class="col-sm-8 items-wrap">
                            <li class="time-select__item" data-time='09:00'>09:00</li>
                            <li class="time-select__item" data-time='11:00'>11:00</li>
                            <li class="time-select__item" data-time='13:00'>13:00</li>
                            <li class="time-select__item" data-time='15:00'>15:00</li>
                            <li class="time-select__item" data-time='17:00'>17:00</li>
                            <li class="time-select__item" data-time='19:0'>19:00</li>
                            <li class="time-select__item" data-time='21:0'>21:00</li>
                            <li class="time-select__item" data-time='23:0'>23:00</li>
                            <li class="time-select__item" data-time='01:0'>01:00</li>
                        </ul>
                    </div>

                    <div class="time-select__group">
                        <div class="col-sm-4">
                            <p class="time-select__place">Odeon</p>
                        </div>
                        <ul class="col-sm-8 items-wrap">
                            <li class="time-select__item" data-time='10:45'>10:45</li>
                            <li class="time-select__item" data-time='16:00'>16:00</li>
                            <li class="time-select__item" data-time='19:00'>19:00</li>
                            <li class="time-select__item" data-time='21:15'>21:15</li>
                            <li class="time-select__item" data-time='23:00'>23:00</li>
                        </ul>
                    </div>

                    <div class="time-select__group group--last">
                        <div class="col-sm-4">
                            <p class="time-select__place">Picturehouse</p>
                        </div>
                        <ul class="col-sm-8 items-wrap">
                            <li class="time-select__item" data-time='17:45'>17:45</li>
                            <li class="time-select__item" data-time='21:30'>21:30</li>
                            <li class="time-select__item" data-time='02:20'>02:20</li>
                        </ul>
                    </div>
                </div>

                <h2 class="page-heading">comments (15)</h2>

                <div class="comment-wrapper">
                    <form id="comment-form" class="comment-form" method='post'>
                        <textarea class="comment-form__text" placeholder='Add you comment here'></textarea>
                        <button type='submit' class="btn btn-md btn--danger comment-form__btn">add comment</button>
                    </form>

                    <div class="comment-sets">

                        <div class="comment">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Roberta Inetti</a>
                            <p class="comment__date">today | 03:04</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div class="comment">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Olia Gozha</a>
                            <p class="comment__date">22.10.2013 | 14:40</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div class="comment comment--answer">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Dmitriy Pustovalov</a>
                            <p class="comment__date">today | 10:19</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div class="comment comment--last">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Sia Andrews</a>
                            <p class="comment__date"> 22.10.2013 | 12:31 </p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div id='hide-comments' class="hide-comments">
                            <div class="comment">
                                <div class="comment__images">
                                    <img alt='' src="http://placehold.it/50x50">
                                </div>

                                <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Roberta Inetti</a>
                                <p class="comment__date">today | 03:04</p>
                                <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                                <a href='#' class="comment__reply">Reply</a>
                            </div>

                            <div class="comment">
                                <div class="comment__images">
                                    <img alt='' src="http://placehold.it/50x50">
                                </div>

                                <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Olia Gozha</a>
                                <p class="comment__date">22.10.2013 | 14:40</p>
                                <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                                <a href='#' class="comment__reply">Reply</a>
                            </div>
                        </div>

                        <div class="comment-more">
                            <a href="#" class="watchlist">Show more comments</a>
                        </div>
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
<!--*** Google map infobox  ***-->
<script src="${pageContext.request.contextPath}/resources/js/external/infobox.js"></script>

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

