<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>个人信息显示</title>
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
    <link href="${pageContext.request.contextPath}/resources/css/gozha-nav.css" rel="stylesheet"/>
    <!-- Select -->
    <link href="${pageContext.request.contextPath}/resources/css/external/jquery.selectbox.css" rel="stylesheet"/>

    <!-- Custom -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css?v=1" rel="stylesheet"/>

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
            <a href='index.html' class="logo">
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
                        <a href="">观看历史</a>
                        <ul>
                            <li class="menu__nav-item"><a href="gallery-four.html">4 col gallery</a></li>
                            <li class="menu__nav-item"><a href="gallery-three.html">3 col gallery</a></li>
                            <li class="menu__nav-item"><a href="gallery-two.html">2 col gallery</a></li>
                        </ul>
                    </li>

                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="">消息</a>
                        <ul>
                            <li class="menu__nav-item"><a href="news-left.html">News (rigth sidebar)</a></li>
                            <li class="menu__nav-item"><a href="news-right.html">News (left sidebar)</a></li>
                            <li class="menu__nav-item"><a href="news-full.html">News (full widht)</a></li>
                            <li class="menu__nav-item"><a href="single-page-left.html">Single post (rigth sidebar)</a></li>
                            <li class="menu__nav-item"><a href="single-page-right.html">Single post (left sidebar)</a></li>
                            <li class="menu__nav-item"><a href="single-page-full.html">Single post (full widht)</a></li>
                        </ul>
                    </li>

                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="">电影分类</a>
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

                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="">电影院信息</a>
                        <ul class="mega-menu container">
                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">电影院准备上映</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">The Counselor</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Bad Grandpa</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Blue Is the Warmest Color</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Capital</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Spinning Plates</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Bastards</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">Gravity</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Captain Phillips</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Carrie</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Cloudy with a Chance of Meatballs 2</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">电影院准备结束</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">Escape Plan</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Rush</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Prisoners</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Enough Said</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">The Fifth Estate</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">Runner Runner</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">Insidious: Chapter 2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <!-- Additional header buttons / Auth and direct link to booking-->
            <div class="control-panel">
                <div class="auth auth--home">
                    <div class="auth__show">
                        <span class="auth__image">
                          <img alt="" src="${pageContext.request.contextPath}/resources/images/31-31.png">
                        </span>
                    </div>
                    <a href="#" class="btn btn--sign btn--singin">
                        ${user.name}
                    </a>
                    <ul class="auth__function">
                        <li><a href="#" class="auth__function-item">收藏列表</a></li>
                        <li><a href="#" class="auth__function-item">已购影票</a></li>
                        <li><a href="#" class="auth__function-item">讨论过的</a></li>
                        <li><a href="#" class="auth__function-item">用户设置</a></li>
                        <li><a href="${pageContext.request.contextPath}/common/logout" class="auth__function-item">注销</a></li>
                    </ul>
                </div>
                <a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">预定电影票</a>
            </div>
        </div>
    </header>

    <section class="container">
        <div class="content-wrapper accordion-wrap" style="padding-left: 450px;">
            <!-- Tabs -->
            <div class="content-wrapper">
                <h2 class="heading heading--outcontainer">个人信息</h2>

                <!-- Horisontal tabs -->
                <div class="col-sm-6">
                    <div class="tabs tabs--horisontal">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" id="hTab">
                            <li class="active"><a href="#name" data-toggle="tab">昵称</a></li>
                            <li><a href="#email" data-toggle="tab">邮箱</a></li>
                            <li><a href="#phone" data-toggle="tab">手机</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="name">
                                <p>${user.name}</p>
                            </div>
                            <div class="tab-pane" id="email">
                                <p align="center">
                                    ${user.email}
                                    <c:choose>
                                        <c:when test="${!empty user.email}">
                                            &nbsp;<a href="${pageContext.request.contextPath}/film/user/removeEmailUI" onclick="return removeEmail(${user.phone})">解绑邮箱</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${pageContext.request.contextPath}/film/user/connectEmailUI">绑定邮箱</a>
                                        </c:otherwise>
                                    </c:choose>
                                </p>
                            </div>
                            <div class="tab-pane" id="phone">
                                <p align="center">
                                    ${user.phone}
                                    <c:choose>
                                        <c:when test="${!empty user.phone}">
                                            &nbsp;<a href="${pageContext.request.contextPath}/film/user/removePhoneUI" onclick="return removePhone(${user.email})">解绑手机号</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${pageContext.request.contextPath}/film/user/connectPhoneUI">绑定手机号</a>
                                        </c:otherwise>
                                    </c:choose>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
<!-- Inview -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.inview.js"></script>

<!-- Mobile menu -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.mobile.menu.js"></script>
<!-- Select -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.selectbox-0.2.min.js"></script>

<!-- Form element -->
<script src="${pageContext.request.contextPath}/resources/js/external/form-element.js"></script>
<!-- Form validation -->
<script src="${pageContext.request.contextPath}/resources/behind/js/form.js"></script>

<!-- Custom -->
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        init_Elements();
    });

    // 解绑邮箱
    function removeEmail(phone) {
        if (phone == null || phone == ""){
            alert("必须存在一个联系方式");
            return false;
        }else{
            return true;
        }
    }

    // 解绑手机
    function removePhone(email) {
        if (email == null || email == ""){
            alert("必须存在一个联系方式");
            return false;
        }else{
            return true;
        }
    }
</script>
</body>
</html>