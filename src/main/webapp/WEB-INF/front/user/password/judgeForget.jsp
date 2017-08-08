<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>密码找回</title>
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
        <jsp:include page="/WEB-INF/common/Head.jsp"/>

        <div class="col-sm-5 col-md-4" style="border-left-width: 100px; margin-top: 250px; margin-left: 500px;">
            <h2 class="heading">忘记密码</h2>
            <div class="col-sm-5">
                <div class="btn-demo">
                    <a class="btn btn-md btn--warning" href="${pageContext.request.contextPath}/common/forgetPasswordByEmailUI">邮箱找回</a>
                </div>
            </div>
            <div class="col-sm-6 col--modificator">
                <div class="btn-demo">
                    <a class="btn btn-md btn--warning" href="${pageContext.request.contextPath}/common/forgetPasswordByPhoneUI">短信找回</a>
                </div>
            </div>
        </div>
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
</body>
</html>
