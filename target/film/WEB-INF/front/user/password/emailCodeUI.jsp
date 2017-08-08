<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>输入邮箱验证码</title>

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="telephone=no" name="format-detection">

    <!-- Fonts -->
    <!-- Font awesome - icon font -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

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
    <form id="email-form" class="login" method="post" novalidate='' style="margin-top: 100px;" action="${pageContext.request.contextPath}/common/inputEmailCode">
        <c:if test="${result!=null}">
            <div class="alert alert-danger">
                <span class="icon-warning"></span>
                    ${result}
                <a class="close" data-dismiss="alert" href="#" aria-hidden="true"></a>
            </div>
        </c:if>
        <p class="login__title">请输入邮箱验证码</p>
        <div class="field-wrap">
            <input placeholder='邮箱验证码' id="code" name='code' class="login__input" style="width: 190px;">
            <input type='button' class="btn btn-md btn--warning btn--wider" onclick="send()" value="获取验证码">
            <input type="hidden" id="emai" value="${sessionScope.forgetUserByEmail.email}">
        </div>
        <br/>
        <div class="login__control">
            <button type='submit' class="btn btn-md btn--warning btn--wider">下一步</button>
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
    // 发送邮件
    function send() {
        var email = $("#emai")[0].value;
        alert(email);
        $.ajax({
            url:"${pageContext.request.contextPath}/common/sendEmail",
            type:"post",
            data:{"email":email},
            error: function(){alert("内部错误");}
        });
    }

    $(document).ready(function(){
        $("#email-form").validate({
            rules:{
                email:{
                    required:true,
                    email:true
                },
                code:"required"
            },
            messages:{
                email:{
                    required:"请填写邮箱",
                    email:"请输入正确的邮箱"
                },
                code:"请输入验证码"
            }
        });
    });
</script>

</body>
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
</html>
