<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
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
                    <ul class="mega-menu container" style="margin-left: 290px;">
                        <li class="col-md-4 mega-menu__coloum">
                            <ul class="mega-menu__list">
                                <%-- 第一格 --%>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=1">喜剧</a></li>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=2">爱情</a></li>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=3">动作</a></li>
                            </ul>
                        </li>

                        <%-- 第二格 --%>
                        <li class="col-md-4 mega-menu__coloum">
                            <ul class="mega-menu__list">
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=5">惊悚</a></li>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=4">悬疑</a></li>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=6">动画</a></li>
                            </ul>
                        </li>

                        <%-- 第三格 --%>
                        <li class="col-md-4 mega-menu__coloum">
                            <ul class="mega-menu__list">
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=7">科幻</a></li>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=8">战争</a></li>
                                <li class="mega-menu__nav-item"><a href="${pageContext.request.contextPath}/film/filmCommon/common/multiplyConditionsUI?type=9">青春</a></li>
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
                            <li><a href="${pageContext.request.contextPath}/film/user/userInfo?uid=${sessionScope.user.uid}" class="auth__function-item">我的动态</a></li>
                            <li><a href="${pageContext.request.contextPath}/logout" class="auth__function-item">注销</a></li>
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
        </div>
    </div>
</header>
</body>
</html>
