<%@ page isErrorPage="true" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>权限错误</title>
    <jsp:include page="/WEB-INF/common/error.jsp"/>
</head>

<body class="nobg errorPage">
<!-- Main content wrapper -->
<div class="errorWrapper">
    <span class="sadEmo"></span>
    <span class="errorTitle">你没有权限执行该操作 :(</span>
    <span class="errorNum">权限拦截</span>
    <span class="errorDesc">Oops! Sorry, an error has occured. </span>
    <a href="${pageContext.request.contextPath}/common/index" title="" class="button dredB"><span>返回主页</span></a>
</div>    

</body>
</html>