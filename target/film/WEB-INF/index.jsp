<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
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

    <!-- Mobile menu -->
    <link href="${pageContext.request.contextPath}/resources/css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="${pageContext.request.contextPath}/resources/css/external/jquery.selectbox.css" rel="stylesheet" />

    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/rs-plugin/css/settings.css" media="screen" />

    <!-- Custom -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css?v=1" rel="stylesheet" />

    <!-- Modernizr -->
    <script src="${pageContext.request.contextPath}/resources/js/external/modernizr.custom.js"></script>
</head>

<body>
<div class="wrapper">
    <!-- Header section -->
    <jsp:include page="common/Head.jsp"/>
    <!-- Slider -->
    <div class="bannercontainer">
        <div class="banner">
            <ul>
                <li data-transition="fade" data-slotamount="7" class="slide" data-slide='Rush.'>
                    <img alt='' src="${pageContext.request.contextPath}/resources/images/b1.jpg">
                    <div class="caption slide__name margin-slider"
                         data-x="right"
                         data-y="80"

                         data-splitin="chars"
                         data-elementdelay="0.1"

                         data-speed="700"
                         data-start="1400"
                         data-easing="easeOutBack"

                         data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"

                         data-frames="{ typ :lines;
                                                 elementdelay :0.1;
                                                 start:1650;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 },
                                                 { typ :lines;
                                                 elementdelay :0.1;
                                                 start:2150;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:00;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 }
                                                 "


                         data-splitout="lines"
                         data-endelementdelay="0.1"
                         data-customout="x:-230;y:0;z:0;rotationX:0;rotationY:0;rotationZ:90;scaleX:0.2;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%"

                         data-endspeed="500"
                         data-end="8400"
                         data-endeasing="Back.easeIn"
                    >
                        RUSH
                    </div>

                    <div class="caption slide__time margin-slider sfr str"
                         data-x="right"
                         data-hoffset='-243'
                         data-y="186"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"
                         data-end="8700"
                         data-endeasing="Back.easeIn"
                    >
                        From
                    </div>
                    <div class="caption slide__date margin-slider lfb ltb"
                         data-x="right"
                         data-hoffset='-149'
                         data-y="186"
                         data-speed="500"
                         data-start="2400"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"
                         data-end="8200"
                         data-endeasing="Back.easeIn"
                    >
                        October 18
                    </div>
                    <div class="caption slide__time margin-slider sfr str"
                         data-x="right"
                         data-hoffset='-113'
                         data-y="186"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"
                         data-end="8700"
                         data-endeasing="Back.easeIn"
                    >
                        - till
                    </div>
                    <div class="caption slide__date margin-slider lfb ltb"
                         data-x="right"
                         data-y="186"
                         data-speed="500"
                         data-start="2800"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"
                         data-end="8200"
                         data-endeasing="Back.easeIn"
                    >
                        November 01
                    </div>
                    <div class="caption slide__text margin-slider customin customout"
                         data-x="right"
                         data-y="250"
                         data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="400"
                         data-start="3000"
                         data-endspeed="400"
                         data-end="8000"
                         data-endeasing="Back.easeIn">
                    </div>
                    <div class="caption margin-slider skewfromright customout "
                         data-x="right"
                         data-y="324"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="400"
                         data-start="3300"
                         data-easing="Power4.easeOut"
                         data-endspeed="300"
                         data-end="7700"
                         data-endeasing="Power4.easeOut">
                    </div>
                </li>

                <li data-transition="fade" data-slotamount="7" class="slide fading-slide" data-slide='Travel worldwide.Create trip film.'>
                    <img alt='' src="${pageContext.request.contextPath}/resources/images/b2.jpg">


                    <div class="caption slide__name slide__name--smaller"
                         data-x="left"
                         data-y="160"

                         data-splitin="chars"
                         data-elementdelay="0.1"

                         data-speed="700"
                         data-start="1400"
                         data-easing="easeOutBack"

                         data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"

                         data-frames="{ typ :lines;
                                                 elementdelay :0.1;
                                                 start:1650;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 },
                                                 { typ :lines;
                                                 elementdelay :0.1;
                                                 start:2150;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:00;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 }
                                                 "


                         data-splitout="lines"
                         data-endelementdelay="0.1"
                         data-customout="x:-230;y:0;z:0;rotationX:0;rotationY:0;rotationZ:90;scaleX:0.2;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%"
                         data-endspeed="500"

                         data-endeasing="Back.easeIn"
                    >
                        Travel, Admire, Remember.
                    </div>

                    <div class="caption slide__time position-center postion-place--one sfr stl"
                         data-x="left"

                         data-y="242"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"

                         data-endeasing="Back.easeIn">
                        From
                    </div>
                    <div class="caption slide__date position-center postion-place--two lfb ltb"
                         data-x="left"
                         data-y="242"
                         data-speed="500"
                         data-start="2400"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"

                         data-endeasing="Back.easeIn">
                        April 18
                    </div>
                    <div class="caption slide__time position-center postion-place--three sfr stl"
                         data-x="left"
                         data-y="242"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"

                         data-endeasing="Back.easeIn">
                        - till
                    </div>
                    <div class="caption slide__date position-center postion-place--four lfb ltb"
                         data-x="left"
                         data-y="242"
                         data-speed="500"
                         data-start="2800"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"

                         data-endeasing="Back.easeIn">
                        May 01
                    </div>

                    <div class="caption lfb slider-wrap-btn ltb"
                         data-x="left"
                         data-y="310"
                         data-speed="400"
                         data-start="3300"
                         data-easing="Power4.easeOut"
                         data-endspeed="500"

                         data-endeasing="Power4.easeOut" >
                    </div>
                </li>

                <li data-transition="fade" data-slotamount="7" class="slide" data-slide='Stop wishing.
Start doing.'>
                    <img alt='' src="${pageContext.request.contextPath}/resources/images/b3.jpg">
                    <div class="caption slide__name slide__name--smaller slide__name--specific customin customout"
                         data-x="left"
                         data-y="160"

                         data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"

                         data-speed="700"
                         data-start="1400"
                         data-easing="easeOutBack"
                         data-endspeed="500"
                         data-end="8600"
                         data-endeasing="Back.easeIn"

                    >
                        Stop <span class="highlight">wishing.</span> Start <span class="highlight">doing.</span>
                    </div>

                    <div class="caption slide__descript customin customout"
                         data-x="left"
                         data-y="240"
                         data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="700"
                         data-start="2000"
                         data-endspeed="500"
                         data-end="8400"
                         data-endeasing="Back.easeIn">
                    </div>

                    <div class="caption lfb customout slider-wrap-btn"
                         data-x="left"
                         data-y="310"
                         data-speed="500"
                         data-start="2800"
                         data-easing="Power4.easeOut"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-endspeed="400"
                         data-end="8000"
                         data-endeasing="Power4.easeOut" >
                    </div>
                </li>

            </ul>
        </div>
    </div>

    <!-- Main content -->
    <section class="container">
        <div class="movie-best">
            <div class="col-sm-10 col-sm-offset-1 movie-best__rating">最佳选择</div>
            <div class="col-sm-12 change--col">
                <c:forEach items="${indexInfo.up}" var="topFive">
                    <div class="movie-beta__item ">
                        <img alt='' src="${pageContext.request.contextPath}/resources/behind/images/${topFive.img}" width="190" height="300">
                        <span class="best-rate">${topFive.point}</span>

                        <ul class="movie-beta__info">
                            <li>
                                <p class="movie__time">${topFive.time}</p>
                                <p>
                                    <c:forEach items="${topFive.typesList}" var="type">
                                        ${type.typeName} |
                                    </c:forEach>
                                </p>
                                <p>38 评论</p>
                            </li>
                            <li class="last-block">
                                <a href="${pageContext.request.contextPath}/film/frontInfo?id=${topFive.filmid}" class="slide__link">更多详情</a>
                            </li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
            <div class="col-sm-10 col-sm-offset-1 movie-best__check">查看正在热映的电影</div>
        </div>

        <div class="clearfix"></div>

        <h2 id='target' class="page-heading heading--outcontainer">In the Cinema Now</h2>

        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-8 col-md-12">
                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--dark movie--test--left">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(0).filmid}" class="movie-beta__link">
                                <img alt='${pageContext.request.contextPath}/resources/images/424-424.png' src="${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(0).img}" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(0).filmid}' class="movie__title">${indexInfo.onNow.get(0).name}  </a>

                            <p class="movie__time">${indexInfo.onNow.get(0).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(0).typesList}" var="type">${type.typeName} | </c:forEach> </p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(0).point <= 2}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(0).point && indexInfo.onNow.get(0).point <= 4}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(0).point && indexInfo.onNow.get(0).point <= 6}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(0).point && indexInfo.onNow.get(0).point <= 8}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(0).point && indexInfo.onNow.get(0).point <= 10}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(0).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--light movie--test--left">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(1).filmid}" class="movie-beta__link">
                                <img src='${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(1).img}' alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(1).filmid}' class="movie__title">${indexInfo.onNow.get(1).name}  </a>

                            <p class="movie__time">${indexInfo.onNow.get(1).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(1).typesList}" var="type">${type.typeName} | </c:forEach> </p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(1).point <= 2}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(1).point && indexInfo.onNow.get(1).point <= 4}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(1).point && indexInfo.onNow.get(1).point <= 6}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(1).point && indexInfo.onNow.get(1).point <= 8}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(1).point && indexInfo.onNow.get(1).point <= 10}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(1).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--light movie--test--right">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(2).filmid}" class="movie-beta__link">
                                <img src='${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(2).img}' alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(2).filmid}' class="movie__title">${indexInfo.onNow.get(2).name}   </a>

                            <p class="movie__time">${indexInfo.onNow.get(2).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(2).typesList}" var="type">${type.typeName} | </c:forEach></p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(2).point <= 2}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(2).point && indexInfo.onNow.get(2).point <= 4}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(2).point && indexInfo.onNow.get(2).point <= 6}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(2).point && indexInfo.onNow.get(2).point <= 8}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(2).point && indexInfo.onNow.get(2).point <= 10}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(2).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--dark movie--test--right">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(3).filmid}" class="movie-beta__link">
                                <img src='${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(3).img}' alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(3).filmid}' class="movie__title">${indexInfo.onNow.get(3).name} </a>

                            <p class="movie__time">${indexInfo.onNow.get(3).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(3).typesList}" var="type">${type.typeName} | </c:forEach></p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(3).point <= 2}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(3).point && indexInfo.onNow.get(3).point <= 4}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(3).point && indexInfo.onNow.get(3).point <= 6}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(3).point && indexInfo.onNow.get(3).point <= 8}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(3).point && indexInfo.onNow.get(3).point <= 10}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(3).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--dark movie--test--left">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(4).filmid}" class="movie-beta__link">
                                <img src='${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(4).img}' alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(4).filmid}' class="movie__title">${indexInfo.onNow.get(4).name}  </a>

                            <p class="movie__time">${indexInfo.onNow.get(4).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(4).typesList}" var="type">${type.typeName} | </c:forEach></p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(4).point <= 2}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(4).point && indexInfo.onNow.get(4).point <= 4}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(4).point && indexInfo.onNow.get(4).point <= 6}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(4).point && indexInfo.onNow.get(4).point <= 8}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(4).point && indexInfo.onNow.get(4).point <= 10}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(4).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--light movie--test--left">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(5).filmid}" class="movie-beta__link">
                                <img src='${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(5).img}' alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(5).filmid}' class="movie__title">${indexInfo.onNow.get(5).name} </a>

                            <p class="movie__time">${indexInfo.onNow.get(5).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(5).typesList}" var="type">${type.typeName} | </c:forEach></p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(5).point <= 2}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(5).point && indexInfo.onNow.get(5).point <= 4}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(5).point && indexInfo.onNow.get(5).point <= 6}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(5).point && indexInfo.onNow.get(5).point <= 8}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(5).point && indexInfo.onNow.get(5).point <= 10}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(5).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--light movie--test--right">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(6).filmid}" class="movie-beta__link">
                                <img src='${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(6).img}' alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(6).filmid}' class="movie__title">${indexInfo.onNow.get(6).name}   </a>

                            <p class="movie__time">${indexInfo.onNow.get(6).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(6).typesList}" var="type">${type.typeName} | </c:forEach></p>

                            <div class="movie__rate">
                                <c:if test="${indexInfo.onNow.get(6).point <= 2}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${2 < indexInfo.onNow.get(6).point && indexInfo.onNow.get(6).point <= 4}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${4 < indexInfo.onNow.get(6).point && indexInfo.onNow.get(6).point <= 6}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${6 < indexInfo.onNow.get(6).point && indexInfo.onNow.get(6).point <= 8}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:if>
                                <c:if test="${8 < indexInfo.onNow.get(6).point && indexInfo.onNow.get(6).point <= 10}">
                                    <div style="cursor: pointer; width: 130px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:if>
                                <span class="movie__rating">${indexInfo.onNow.get(6).point}</span>
                            </div>
                        </div>
                    </div>
                    <!-- Movie variant with time -->

                    <!-- Movie variant with time -->
                    <div class="movie movie--test movie--test--dark movie--test--right">
                        <div class="movie__images">
                            <a href="${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(7).filmid}" class="movie-beta__link">
                                <img src="${pageContext.request.contextPath}/resources/behind/images/${indexInfo.onNow.get(7).img}" alt="${pageContext.request.contextPath}/resources/images/424-424.png" width="200" height="200">
                            </a>
                        </div>

                        <div class="movie__info">
                            <a href='${pageContext.request.contextPath}/film/frontInfo?id=${indexInfo.onNow.get(7).filmid}' class="movie__title">${indexInfo.onNow.get(7).name}  </a>

                            <p class="movie__time">${indexInfo.onNow.get(7).time}</p>

                            <p class="movie__option"><c:forEach items="${indexInfo.onNow.get(7).typesList}" var="type">${type.typeName} | </c:forEach></p>

                            <div class="movie__rate">
                                <c:choose>
                                    <c:when test="${indexInfo.onNow.get(7).point <= 2}">
                                        <div style="cursor: pointer; width: 130px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:when test="${2 < indexInfo.onNow.get(7).point && indexInfo.onNow.get(7).point <= 4}">
                                        <div style="cursor: pointer; width: 130px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:when test="${4 < indexInfo.onNow.get(7).point && indexInfo.onNow.get(7).point <= 6}">
                                        <div style="cursor: pointer; width: 130px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:when test="${6 < indexInfo.onNow.get(7).point && indexInfo.onNow.get(7).point <= 8}">
                                        <div style="cursor: pointer; width: 130px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div style="cursor: pointer; width: 130px;">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                                <span class="movie__rating">${indexInfo.onNow.get(7).point}</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="col-sm-12">
            <h2 class="page-heading">看过的电影</h2>

            <div class="col-sm-4 similar-wrap col--remove">
                <div class="post post--preview post--preview--wide">
                    <div class="post__image">
                        <img alt='' src="${pageContext.request.contextPath}/resources/images/270-330.png">
                        <div class="">
                        </div>
                    </div>
                    <p class="post__date">22 October 2013 </p>
                    <a href="single-page-left.html" class="post__title">"Thor: The Dark World" - World Premiere</a>
                    <a href="single-page-left.html" class="btn read-more post--btn">read more</a>
                </div>
            </div>
            <div class="col-sm-4 similar-wrap col--remove">
                <div class="post post--preview post--preview--wide">
                    <div class="post__image">
                        <img alt='' src="${pageContext.request.contextPath}/resources/images/270-330.png">
                        <div class="">
                        </div>
                    </div>
                    <p class="post__date">22 October 2013 </p>
                    <a href="single-page-left.html" class="post__title">30th Annual Night Of Stars Presented By The Fashion Group International</a>
                    <a href="single-page-left.html" class="btn read-more post--btn">read more</a>
                </div>
            </div>
            <div class="col-sm-4 similar-wrap col--remove">
                <div class="post post--preview post--preview--wide">
                    <div class="post__image">
                        <img alt='' src="${pageContext.request.contextPath}/resources/images/270-330.png">
                        <div class="">
                        </div>
                    </div>
                    <p class="post__date">22 October 2013 </p>
                    <a href="single-page-left.html" class="post__title">Hollywood Film Awards 2013</a>
                    <a href="single-page-left.html" class="btn read-more post--btn">read more</a>
                </div>
            </div>
        </div>

    </section>

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
                    <div class="clearfix"></div>
                    <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                </div>
            </div>
        </section>
    </footer>
</div>


<!-- JavaScript-->
<!-- jQuery 1.9.1-->
<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/js/external/jquery-1.10.1.min.js"><\/script>')</script>
<!-- Migrate -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
<!-- Bootstrap 3-->
<script src="${pageContext.request.contextPath}/resources/http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

<!-- jQuery REVOLUTION Slider -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

<!-- Mobile menu -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.mobile.menu.js"></script>
<!-- Select -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.selectbox-0.2.min.js"></script>
<!-- Stars rate -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.raty.js"></script>

<!-- Form element -->
<script src="${pageContext.request.contextPath}/resources/js/external/form-element.js"></script>
<!-- Form validation -->
<script src="${pageContext.request.contextPath}/resources/js/form.js"></script>

<!-- Custom -->
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        init_Home();
    });
</script>

</body>
</html>