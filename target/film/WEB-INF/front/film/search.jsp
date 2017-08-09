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
        <!-- Header section -->
        <jsp:include page="../../common/Head.jsp"/>

        <!-- Search bar -->
        <jsp:include page="../../common/search.jsp"/>
        
        <!-- Main content -->
        <c:if test="${!empty film}">
        <section class="container">
            <div class="col-sm-12" id="types">
                <h2 class="page-heading">Movies</h2>
                <!-- Movie preview item -->
                <c:forEach items="${film}" var="film">
                <div class="movie movie--preview movie--full release">
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
                                        <c:forEach items="${userFilm}" var="userFilms">
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
                    <div class="clearfix"></div>
                </div>
                </c:forEach>
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
        <jsp:include page="/WEB-INF/common/bottom.jsp"/>
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
