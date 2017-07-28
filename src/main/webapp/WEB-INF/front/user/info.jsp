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

    <section class="container">
        <div class="content-wrapper accordion-wrap">
            <!-- Tabs -->
            <div class="content-wrapper">
                <h2 class="heading heading--outcontainer">个人信息</h2>

                <!-- Horisontal tabs -->
                <div class="col-sm-2">
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
                <div class="col-sm-10">
                    <div class="tabs tabs--horisontal">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" id="bigPlace">
                            <li class="active"><a href="#collection" data-toggle="tab">我的收藏</a></li>
                            <li><a href="#comment" data-toggle="tab">我的评论</a></li>
                            <li><a href="#preview" data-toggle="tab">他人对我的评论</a></li>
                            <li><a href="#address" data-toggle="tab">我的地址</a></li>
                            <li><a href="#order" data-toggle="tab">我的订单</a></li>
                            <li><a href="#car" data-toggle="tab">我的购物车</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="order">

                            </div>
                            <div class="tab-pane" id="comment">

                            </div>
                            <div class="tab-pane" id="preview">

                            </div>
                            <div class="tab-pane" id="collection">
                                <table class="sTable" width="50%" cellspacing="0" cellpadding="0">
                                    <thead>
                                        <tr>
                                            <td align="center">电影海报</td>
                                            <td align="center">电影名</td>
                                            <td align="center">价格</td>
                                            <td align="center">热度</td>
                                            <td align="center">操作</td>
                                        </tr>
                                    </thead>
                                    <tbody id="collect">
                                        <c:forEach items="${collection.data}" var="users">
                                            <c:forEach items="${users.films}" var="film">
                                                <tr>
                                                    <td align="center"><img src="${pageContext.request.contextPath}/resources/behind/images/${film.img}" width="150" height="150" /></td>
                                                    <td align="center">${film.name}</td>
                                                    <td align="center">${film.price}</td>
                                                    <td align="center">${film.point}</td>
                                                    <td align="center">
                                                        <a onclick="removeCollection(${film.filmid}, ${sessionScope.user.uid})">取消收藏</a> &nbsp;
                                                        <a onclick="setInCar(${film.filmid}, ${user.uid}, 1, 5)">加入购物车</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <!-- 收藏分页相关 -->
                                <div id="collect_page">
                                    <input value="第一页" style="margin: 5px;" onclick="collectPage(${collection.firstPage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    <input value="<" style="margin: 5px;" onclick="collectPage(${collection.prePage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    当前第${collection.currentPage}页&nbsp;
                                    总共${collection.totalPage}页&nbsp;
                                    <input class="basic" value=">" style="margin: 5px;" onclick="collectPage(${collection.nextPage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    <input class="basic" value="最后一页" style="margin: 5px;" onclick="collectPage(${collection.totalPage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    每页显示&nbsp;<input type="text" id="my_CollectSize" value="${collection.pageSize}" title="" onblur="collectSelfPage(${sessionScope.user.uid})" style="width: 30px; height: 20px;"/>&nbsp;条&nbsp;
                                    跳转到&nbsp;<input type="text" id="my_CollectPage" value="${collection.currentPage}" title="" onblur="collectSelfPage(${sessionScope.user.uid})" style="width: 30px; height: 20px;"/>&nbsp;页
                                </div>
                            </div>

                            <div class="tab-pane" id="car">
                                <table class="sTable" width="50%" cellspacing="0" cellpadding="0">
                                    <thead>
                                    <tr>
                                        <td align="center"><input type="checkbox" onclick="doSelectAll()" id="selAll"/></td>
                                        <td align="center">电影海报</td>
                                        <td align="center">电影名</td>
                                        <td align="center">价格</td>
                                        <td align="center">数量</td>
                                        <td align="center">总价</td>
                                        <td align="center">操作</td>
                                    </tr>
                                    </thead>
                                    <!-- 购物车列表 -->
                                    <tbody id="cars">
                                        <c:forEach items="${car.data}" var="car1">
                                            <tr>
                                                <td align="center"><input type="checkbox" name="selectedRow"/></td>
                                                <td align="center"><img src="${pageContext.request.contextPath}/resources/behind/images/${car1.film.img}" width="150" height="150" /></td>
                                                <td align="center">${car1.film.name}</td>
                                                <td align="center">${car1.film.price}</td>
                                                <td align="center"><i class="fa fa-minus-square" onclick="deleteOne(${car1.carId}, ${car.currentPage}, ${car.pageSize})"></i>&nbsp;${car1.count}&nbsp;<i class="fa fa-plus-square" onclick="setInCar(${car1.film.filmid}, ${sessionScope.user.uid}, ${car.currentPage}, ${car.pageSize})"></i></td>
                                                <td align="center">${car1.count * car1.film.price}</td>
                                                <td align="center">
                                                    <a onclick="removeFromCar(${car1.carId}, ${sessionScope.user.uid})">移出购物车</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <!-- 购物车分页相关 -->
                                <div id="car_page">
                                    <input value="第一页" style="margin: 5px;" onclick="carPage(${car.firstPage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    <input value="<" style="margin: 5px;" onclick="carPage(${car.prePage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    当前第${car.currentPage}页&nbsp;
                                    总共${car.totalPage}页&nbsp;
                                    <input class="basic" value=">" style="margin: 5px;" onclick="carPage(${car.nextPage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    <input class="basic" value="最后一页" style="margin: 5px;" onclick="carPage(${car.totalPage},5, ${sessionScope.user.uid})" type="button">&nbsp;
                                    每页显示&nbsp;<input type="text" id="my_CarSize" value="${car.pageSize}" title="" onblur="carSelfPage(${sessionScope.user.uid})" style="width: 30px; height: 20px;"/>&nbsp;条&nbsp;
                                    跳转到&nbsp;<input type="text" id="my_CarPage" value="${car.currentPage}" title="" onblur="carSelfPage(${sessionScope.user.uid})" style="width: 30px; height: 20px;"/>&nbsp;页
                                    &nbsp;<i class="fa fa-refresh" onclick="carPage(1, 5, ${user.uid})"></i>
                                    &nbsp;<a class="watchlist">购买选中</a>
                                </div>
                            </div>
                            <div class="tab-pane" id="address">
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

    //全选、全反选
    function doSelectAll(){
        $("input[name=selectedRow]").prop("checked", $("#selAll").is(":checked"));
    }

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

    // 收藏分页
    function collectPage(page, size, uid) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/collectPage",
            type:"post",
            data:{"page":page, "size":size, "uid":uid},
            success: function (result) {
                var $collect = $("#collect");
                var $collect_page = $("#collect_page");
                if (result.status == 200) {
                    $collect.empty();
                    $collect.append(result.msg);
                    $collect_page.empty();
                    $collect_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 收藏自定义分页
    function collectSelfPage(uid) {
        var size = $("#my_CollectSize")[0].value;
        var page = $("#my_CollectPage")[0].value;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/collectPage",
            type:"post",
            data:{"page":page, "size":size, "uid":uid},
            success: function (result) {
                var $collect = $("#collect");
                var $collect_page = $("#collect_page");
                if (result.status == 200) {
                    $collect.empty();
                    $collect.append(result.msg);
                    $collect_page.empty();
                    $collect_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 取消收藏
    function removeCollection(filmId, userId) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/inCollect",
            data:{"filmId":filmId, "userId":userId},
            type:"post",
            success:function (result) {
                var $collect = $("#collect");
                var $collect_page = $("#collect_page");
                if (result.status == 200){
                    $collect.empty();
                    $collect.append(result.msg);
                    $collect_page.empty();
                    $collect_page.append(result.data);
                } else {
                    alert(result.msg);
                }
            },
            error:function () {alert("内部错误");}
        });
    }

    // 放进购物车（加一）
    function setInCar(filmId, userId, page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/car/yiBuInsetCar",
            data:{"filmId":filmId, "userId":userId, "page":page, "size":size},
            type:"post",
            success:function (result) {
                var $cars = $("#cars");
                var $car_page = $("#car_page");
                if (result.status == 200){
                    $cars.empty();
                    $cars.append(result.msg);
                    $car_page.empty();
                    $car_page.append(result.data);
                } else {
                    alert(result.msg);
                }
            },
            error:function () {alert("内部错误");}
        });
    }

    // 减一
    function deleteOne(carId, page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/car/deleteOne",
            data:{"carId":carId, "page":page, "size":size},
            type:"post",
            success:function (result) {
                var $cars = $("#cars");
                var $car_page = $("#car_page");
                if (result.status == 200){
                    $cars.empty();
                    $cars.append(result.msg);
                    $car_page.empty();
                    $car_page.append(result.data);
                } else {
                    alert(result.msg);
                }
            },
            error:function () {alert("内部错误");}
        });
    }

    // 移出购物车
    function removeFromCar(carId, userId) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/car/deleteCar",
            data:{"carId":carId, "userId":userId},
            type:"post",
            success:function (result) {
                var $cars = $("#cars");
                var $car_page = $("#car_page");
                if (result.status == 200){
                    $cars.empty();
                    $cars.append(result.msg);
                    $car_page.empty();
                    $car_page.append(result.data);
                } else {
                    alert(result.msg);
                }
            },
            error:function () {alert("内部错误");}
        });
    }

    // 购物车分页
    function carPage(page, size, uid) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/car/carPage",
            type:"post",
            data:{"page":page, "size":size, "uid":uid},
            success: function (result) {
                var $cars = $("#cars");
                var $car_page = $("#car_page");
                if (result.status == 200) {
                    $cars.empty();
                    $cars.append(result.msg);
                    $car_page.empty();
                    $car_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 购物车自定义分页
    function carSelfPage(uid) {
        var size = $("#my_CarSize")[0].value;
        var page = $("#my_CarPage")[0].value;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/car/carPage",
            type:"post",
            data:{"page":page, "size":size, "uid":uid},
            success: function (result) {
                var $cars = $("#cars");
                var $car_page = $("#car_page");
                if (result.status == 200) {
                    $cars.empty();
                    $cars.append(result.msg);
                    $car_page.empty();
                    $car_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 立即购买（跳转到订单页面）
    function setInOrder() {

    }
</script>
</body>
</html>