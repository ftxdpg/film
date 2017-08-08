<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>邮箱注册</title>
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

        <!-- Main content -->
        <form id="email-form" class="login" method="post" novalidate='' style="margin-top: 100px;" action="${pageContext.request.contextPath}/common/emailReg">
            <c:if test="${result!=null}">
                <div class="alert alert-danger">
                    <span class="icon-warning"></span>
                        ${result.msg}
                    <a class="close" data-dismiss="alert" href="#" aria-hidden="true"></a>
                </div>
            </c:if>
            <p class="login__title" style="padding-left: 0px; border-left-width: 0px; padding-right: 120px;">邮箱注册</p>
            <a href="${pageContext.request.contextPath}/common/messageRegUI" class="login__tracker form__tracker" style="padding-left: 190px; margin-top: -46px;">短信注册<br></a>
            <div class="field-wrap">
                <input placeholder='账号' name="name" id='name' class="login__input" onblur="testName()"><i id="iName" class=""></i>
                <input type='email' placeholder='邮箱' name="email" id='email' class="login__input" onblur="testEmail()"><i id="iEmail" class=""></i>
                <input type='password' placeholder='密码' name="password" id='password' class="login__input">
                <input placeholder='邮箱验证码' id='code' name="code" class="login__input" style="width: 190px;">
                <input type='button' id="getCode" disabled="disabled" class="btn btn-md btn--warning btn--wider" onclick="settime()" value="获取验证码">
            </div>
            <br/>
            <div class="login__control">
                <button type='submit' class="btn btn-md btn--warning btn--wider">确认注册</button>
                <a href="${pageContext.request.contextPath}/common/loginUI" class="login__tracker form__tracker">已有账号？在这登录</a>
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
    <!-- Form validation -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>

    <!-- Custom -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

    <script type="text/javascript">
        function settime() {
            var email = $("#email")[0].value;
            if (email != null && email != "" && email != undefined){
                $.ajax({
                    url:"${pageContext.request.contextPath}/common/sendEmail",
                    type:"post",
                    data:{"email":email},
                    error: function(){alert("内部错误");}
                });
            }
        }

        $(document).ready(function () {
            $("#email-form").validate({
                rules:{
                    name:{
                        required:true,
                        minlength:3,
                        maxlength:10
                    },
                    email:{
                        required:true,
                        email:true
                    },
                    password:{
                        required:true,
                        minlength:6,
                        maxlength:15
                    },
                    code:"required"
                },
                messages:{
                    name:{
                        required:"请填写你的昵称",
                        minlength:"昵称最小为3位",
                        maxlength:"昵称最大为10位"
                    },
                    email:{
                        required:"请填写邮箱",
                        email:"请输入正确的邮箱"
                    },
                    password:{
                        required:"请填写你的密码",
                        minlength:"密码最短为6位",
                        maxlength:"密码最长为15位"
                    },
                    code:"请填写验证码"
                }
            });
        });

        // 昵称唯一
        function testName() {
            var name = $("#name")[0].value;
            if(name != undefined && name != "" && name != null){
                $.ajax({
                    url:"${pageContext.request.contextPath}/common/testName",
                    type:"post",
                    data:{"name":name},
                    success:function (msg) {
                        if (msg.status == 200){
                            // 更新状态栏显示值
                            $("#iName").addClass("fa fa-check-circle");
                        }else {
                            $("#iName").addClass("fa fa-times-circle");
                        }
                    },
                    error: function(){alert("内部错误");}
                });
            }
        }

        // 邮箱唯一
        function testEmail() {
            var email = $("#email")[0].value;
            if(email != undefined && email != "" && email != null){
                $.ajax({
                    url:"${pageContext.request.contextPath}/common/testEmail",
                    type:"post",
                    data:{"email":email},
                    success:function (msg) {
                        if (msg.status == 200){
                            // 更新状态栏显示值
                            $("#iEmail").addClass("fa fa-check-circle");
                            $("#getCode").removeAttrs("disabled");
                        }else {
                            $("#iEmail").addClass("fa fa-times-circle");
                        }
                    },
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
