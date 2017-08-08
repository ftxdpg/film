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
        <!-- Header section -->
        <jsp:include page="../../common/Head.jsp"/>

        <!-- Search bar -->
        <jsp:include page="../../common/search.jsp"/>

        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12" style="padding-bottom: 50px;">
                <h2 class="page-heading">电影分类</h2>
                <div class="choose-container">
                    <div class="clearfix"></div>

                    <div class="time-select">
                        <div class="time-select__group group--first">
                            <div class="col-sm-4">
                                <p class="time-select__place">类型</p>
                            </div>
                            <ul class="col-sm-8 items-wrap" id="typeChoose">
                                <li onclick="chooseType('1')" class="time-select__item 1">喜剧</li>
                                <li onclick="chooseType('2')" class="time-select__item 2">爱情</li>
                                <li onclick="chooseType('3')" class="time-select__item 3">动作</li>
                                <li onclick="chooseType('4')" class="time-select__item 4">惊悚</li>
                                <li onclick="chooseType('5')" class="time-select__item 5">悬疑</li>
								<li onclick="chooseType('6')" class="time-select__item 6">动画</li>
								<li onclick="chooseType('7')" class="time-select__item 7">科幻</li>
								<li onclick="chooseType('8')" class="time-select__item 8">战争</li>
								<li onclick="chooseType('9')" class="time-select__item 9">青春</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">国家</p>
                            </div>
                            <ul class="col-sm-8 items-wrap" id="countryChoose">
                                <li onclick="chooseCountry('9')" class="time-select__item 9">华语</li>
								<li onclick="chooseCountry('10')" class="time-select__item 10">美国</li>
								<li onclick="chooseCountry('11')" class="time-select__item 11">香港</li>
								<li onclick="chooseCountry('12')" class="time-select__item 12">韩国</li>
								<li onclick="chooseCountry('13')" class="time-select__item 13">日本</li>
								<li onclick="chooseCountry('14')" class="time-select__item 14">印度</li>
								<li onclick="chooseCountry('15')" class="time-select__item 15">其他</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">年份</p>
                            </div>
                            <ul class="col-sm-8 items-wrap" id="timeChoose">
                                <li onclick="chooseTime('2017')" class="time-select__item 2017 ">2017</li>
								<li onclick="chooseTime('2016')" class="time-select__item 2016 ">2016</li>
								<li onclick="chooseTime('2015')" class="time-select__item 2015 ">2015</li>
								<li onclick="chooseTime('2014')" class="time-select__item 2014 ">2014</li>
								<li onclick="chooseTime('2013')" class="time-select__item 2013 ">2013</li>
								<li onclick="chooseTime('2012')" class="time-select__item 2012 ">2012</li>
								<li onclick="chooseTime('2012')" class="time-select__item 2012 ">2011</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <c:forEach items="${filmPage.data}" var="film">
                <!-- Movie preview item -->
                <div class="movie movie--preview movie--full release" id="type">
                    <div class="col-sm-3 col-md-2 col-lg-2">
                        <div class="movie__images">
                            <img alt='' src="${pageContext.request.contextPath}/resources/behind/images/${film.img}" style="height: 300px;">
                        </div>
                    </div>
                    <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                        <a href="${pageContext.request.contextPath}/film/frontInfo?id=${film.filmid}" class="movie__title link--huge">${film.name}</a>
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
                                        <c:forEach items="${filmPage.data}" var="userFilms">
                                            <c:if test="${film.filmid eq userFilms.filmId}">
                                                已收藏，点击<a href="${pageContext.request.contextPath}/film/user/userInfo?uid=${user.uid}">查看收藏</a>
                                            </c:if>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        没有<a href="${pageContext.request.contextPath}/common/loginUI">登录</a>，无法查看收藏记录
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>

                        <div class="preview-footer">
                            <div class="movie__rate">
                                热度:
                                <c:choose>
                                    <c:when test="${film.point <= 2}">
                                        <div style="cursor: pointer; width: 90px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:when test="${2 < film.point && film.point <= 4}">
                                        <div style="cursor: pointer; width: 90px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:when test="${4 < film.point && film.point <= 6}">
                                        <div style="cursor: pointer; width: 90px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:when test="${6 < film.point && film.point <= 8}">
                                        <div style="cursor: pointer; width: 90px;">
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
                    </div>
                </div>
                </c:forEach>
            </div>
            <div id="type_page" style="padding-bottom: 50px;">
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

            var choose = [];

            // 选择类型的时候
            function chooseType(ch) {
                // 清除选择
                $("#typeChoose").children("li.active").removeClass("active");
                // 点击选择
                $("."+ch).addClass("active");
                chooseAll(1,5);
            }

            // 选择国家的时候
            function chooseCountry(ch) {
                // 清除选择
                $("#countryChoose").children("li.active").removeClass("active");
                $("."+ch).addClass("active");
                chooseAll(1,5);
            }

            // 选择时间的时候
            function chooseTime(ch) {
                // 清除选择
                $("#timeChoose").children("li.active").removeClass("active");
                $("."+ch).addClass("active");
                chooseAll(1,5);
            }

            // 把选择的都添加进数组里
            function chooseAll(page, size) {
                choose = [];
                $("li").filter(".active").each(function () {
                    choose.push($(this).text());
                });

                $.ajax({
                    url:"${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditions",
                    type:"post",
                    data:{"types[]":choose, "page":page, "size":size },
                    success:function (result) {
                        if (result.status == 200) {
                            var $type = $("#type");
                            var $type_page = $("#type_page");
                            $type.empty();
                            $type.append(result.msg);
                            $type_page.empty();
                            $type_page.append(result.data);
                        }else{
                            alert(result.msg);
                        }
                    },
                    error:function () {
                        alert("请求超时");
                    }
                });
            }

            function typeSelfPage() {
                var size = $("#my_typePageSize")[0].value;
                var page = $("#my_typePagePage")[0].value;
                chooseAll(page, size);
            }
		</script>
</body>
</html>
