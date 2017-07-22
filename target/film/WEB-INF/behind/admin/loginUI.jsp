<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>管理员登录界面</title>
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
    <c:if test="${!empty result}">
        <div class="alert alert-danger">
            <span class="icon-warning"></span>
                ${result}
            <a class="close" data-dismiss="alert" href="#" aria-hidden="true"></a>
        </div>
    </c:if>
    <!-- Main content -->
    <form id="login-form" class="login" method='post' novalidate='' style="margin-top: 100px;" action="${pageContext.request.contextPath}/adminCommon/login">
        <p class="login__title">管理员登录<br></p>
        <div class="field-wrap">
            <input placeholder='手机号、邮箱、昵称' id="name" name='name' class="login__input">
            <input type='password' placeholder='密码' id="password" name='password' class="login__input">
        </div>

        <div class="login__control">
            <button type='submit' class="btn btn-md btn--warning btn--wider">确认登陆</button>
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
                name:"required",
                password:"required"
            },
            messages:{
                name:"请填写你的账号",
                password:"请填写你的密码"
            }
        });
    });
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
