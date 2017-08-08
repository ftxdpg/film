<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div class="topNav">
    <div class="wrapper">
        <div class="welcome"><img src="${pageContext.request.contextPath}/resources/behind/images/userPic.png"
                                  alt=""/><span>${sessionScope.admin.name}</span></div>
        <div class="userNav">
            <ul>
                <li class="dd"><a href="#" title=""><img
                        src="${pageContext.request.contextPath}/resources/behind/images/icons/topnav/profile.png"
                        alt=""/><span>账号</span><span class="numberTop">2</span></a>
                    <ul class="userDropdown">
                        <li><a href="${pageContext.request.contextPath}/film/admin/info" class="sAdd">查看账号信息</a>
                        </li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/common/logout" title=""><img
                        src="${pageContext.request.contextPath}/resources/behind/images/icons/topnav/logout.png"
                        alt=""/><span>注销</span></a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
</body>
</html>
