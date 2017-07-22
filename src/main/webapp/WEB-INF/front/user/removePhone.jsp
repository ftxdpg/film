<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>解除绑定手机号</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="${pageContext.request.contextPath}/resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="${pageContext.request.contextPath}/resources/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="${pageContext.request.contextPath}/resources/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="${pageContext.request.contextPath}/resources/js/external/modernizr.custom.js"></script>
</head>

<body>
    <div class="wrapper">

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
                            <li><a href="#" class="auth__function-item">注销</a></li>
                        </ul>
                    </div>
                    <a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">预定电影票</a>
                </div>
            </div>
        </header>


        <!-- Main content -->
        <form id="email-form" class="login" method="post" novalidate='' style="margin-top: 100px;" action="${pageContext.request.contextPath}/film/user/removePhone">
            <c:if test="${result!=null}">
                <div class="alert alert-danger">
                    <span class="icon-warning"></span>
                        ${result}
                    <a class="close" data-dismiss="alert" href="#" aria-hidden="true"></a>
                </div>
            </c:if>
            <p class="login__title">解除绑定手机号码</p>
            <div class="field-wrap">
                <input type='email' placeholder='手机号码' name="phone" id='phone' class="login__input" onblur="sendMsg()"><i id="iPhone" class=""></i>
                <input placeholder='手机验证码' id='code' name="code" class="login__input" style="width: 190px;">
                <input type='button' id="getCode" disabled="disabled" class="btn btn-md btn--warning btn--wider" onclick="settime()" value="获取验证码">
            </div>
            <br/>
            <div class="login__control">
                <button type='submit' class="btn btn-md btn--warning btn--wider">确认</button>
            </div>
        </form>
        <div class="clearfix"></div>
    </div>


	<!-- JavaScript-->
    <!-- jQuery 1.9.1-->
    <script src="${pageContext.request.contextPath}/resources/js/external/jquery-1.10.1.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
    <!-- Migrate -->
    <script src="${pageContext.request.contextPath}/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
    <!-- Bootstrap 3-->
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

    <!-- Mobile menu -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.mobile.menu.js"></script>
     <!-- Select -->
    <script src="${pageContext.request.contextPath}/resources/js/external/jquery.selectbox-0.2.min.js"></script>
    <!-- Form element -->
    <script src="${pageContext.request.contextPath}/resources/js/external/form-element.js"></script>
    <!-- 验证 -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>

    <!-- Custom -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            $("#login-form").validate({
                rules:{
                    phone:{
                        required: true,
                        minlength: 11,
                        maxlength: 11,
                        number: true,
                        min:10000000000
                    },
                    code:"required"
                },
                messages:{
                    phone:{
                        required:"请填写你的手机号",
                        minlength:"请正确填写你的电话",
                        maxlength:"请正确填写你的电话",
                        number:"请填写数字",
                        min:"请正确填写你的电话"
                    },
                    code:"请填写验证码"
                }
            });
        });

        // 输入手机后才可以发送短信
        function sendMsg(){
            var phone = $("#phone")[0].value;
            if (phone != undefined && phone != ''){
                $("#getCode").removeAttrs("disabled");
            }
        }

        // 发送短信
        function settime() {
            var phone = $("#phone")[0].value;
            if (phone != null && phone != ""){
                $.ajax({
                    url:"${pageContext.request.contextPath}/common/sendMessage",
                    type:"post",
                    data:{"phone":phone},
                    error: function(){alert("内部错误");}
                });
            }
        }
    </script>

    <style type="text/css">
        input.error { border: 1px solid red; }
        label.error {
            background:no-repeat 0px 0px;
            padding-left: 16px;
            font-weight: bold;
            color: #EA5200;
        }
        label.checked {
            background:no-repeat 0px 0px;
        }
    </style>
</body>
</html>
