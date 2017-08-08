<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>订单详情</title>
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
        <jsp:include page="/WEB-INF/common/Head.jsp"/>

        <section class="container">
            <div class="content-wrapper accordion-wrap">
                <!-- Theme accordions variants-->
                <h2 class="heading  heading--outcontainer">订单详情</h2>
                <!-- Dark accordion-->
                <div class="col-sm-12">
                    <div class="panel-group accordion-dark" id="accordion-dark">
                      <!-- Accordion item -->
                      <c:if test="${!empty order}">
                          <c:forEach items="${order.orderDetails}" var="orderDetail">
                              <div class="panel panel-default">
                                <div class="panel-heading">
                                  <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-dark" href="#${orderDetail.film.filmid}" class="collapsed">
                                      <span class="marker">
                                        <span class="custom1">+</span>
                                        <span class="custom2">-</span>
                                      </span>
                                      ${orderDetail.film.name}&nbsp;&nbsp;&nbsp;数量:${orderDetail.number}&nbsp;&nbsp;&nbsp;总价:${orderDetail.number*orderDetail.film.price}
                                    </a>
                                  </h4>
                                </div>
                                <div id="${orderDetail.film.filmid}" class="panel-collapse collapse">
                                  <div class="panel-body">
                                    <table class="sTable" width="50%" cellspacing="0" cellpadding="0">
                                      <thead>
                                        <tr>
                                          <td align="center">电影海报</td>
                                          <td align="center">电影名</td>
                                          <td align="center">价格</td>
                                          <td align="center">热度</td>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td align="center"><img src="${pageContext.request.contextPath}/resources/behind/images/${orderDetail.film.img}" width="150" height="150"/></td>
                                          <td align="center">${orderDetail.film.name}</td>
                                          <td align="center">${orderDetail.film.price}</td>
                                          <td align="center">${orderDetail.film.point}</td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                          </c:forEach>
                      </c:if>
                    </div>
                </div>
            </div>
            <div class="devider-wrapper">
                <div class="devider"></div>
            </div>
        </section>
        <div class="col-sm-12" style="margin-top: -35px;">
            <div class="col-sm-2" style="margin-left: 120px;">订单号:${order.orderId}</div>
            <div class="col-sm-3">创建时间:${order.createdTime}</div>
            <div class="col-sm-1">状态:${order.status}</div>
            <div class="col-sm-2">总金额:${order.money}</div>
            <c:if test="${order.status eq '未付款'}">
                <a class="btn btn-md btn--danger btn--wider col-sm-2" href="${pageContext.request.contextPath}/film/user/order/buySuccess?orderId=${order.orderId}">立即购买</a>
            </c:if>
        </div>

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
            $(document).ready(function() { 
                init_Elements();
            });
		</script>
</body>
</html>