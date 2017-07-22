<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>用户列表</title>
    <link href="${pageContext.request.contextPath}/resources/behind/css/main.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/jquery.min.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/jquery-ui.min.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/uniform.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/tables/datatable.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/calendar.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/behind/js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/custom.js"></script>
    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="${pageContext.request.contextPath}/common/index"><img
            src="${pageContext.request.contextPath}/resources/behind/images/logo.png" alt=""/></a></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="charts"><a href="${pageContext.request.contextPath}/film/list" title=""><span>电影管理列表</span></a>
        </li>
        <div class="sidebarSep"></div>

        <li class="ui"><a href="${pageContext.request.contextPath}/film/user/list"><span>用户管理列表</span></a>
        </li>
        <div class="sidebarSep"></div>

        <li class="forms"><a href="#" title="" class="exp"><span>新增</span><strong>2</strong></a>
            <ul class="sub">
                <li><a href="${pageContext.request.contextPath}/film/newFilmUI" title="">新增电影</a></li>
            </ul>
        </li>
        <div class="sidebarSep"></div>
    </ul>

</div>


<!-- Right side -->
<div id="rightSide">

    <!-- 头顶功能 -->
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
                            <li><a href="${pageContext.request.contextPath}/resources/behind/admin/update"
                                   class="sInbox">更改账号信息</a></li>
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


    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>用户列表</h5>
            </div>
        </div>
    </div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Dynamic table -->
        <div class="widget">

            <div class="title">
                <h6>用户列表</h6>
                <a class="button blueB" href="${pageContext.request.contextPath}/film/user/export" style="margin: 5px;">
                    <img class="icon" src="${pageContext.request.contextPath}/resources/behind/images/icons/light/users2.png">
                    <span>导出用户</span>
                </a>
            </div>
            <table id="checkAll" class="sTable withCheck" width="100%" cellspacing="0" cellpadding="0">
                <thead>
                <tr>
                    <td>账号</td>
                    <td>邮箱</td>
                    <td>手机</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                    <c:if test="${!empty userList}">
                        <c:forEach items="${userList}" var="user">
                            <tr>
                                <td style="border-left-color: rgb(203, 203, 203);" align="center">${user.name}</td>
                                <td align="center">${user.email}</td>
                                <td align="center">${user.phone}</td>
                                <td align="center">
                                    <a class="button blueB" href="${pageContext.request.contextPath}/film/user/info?id=${user.uid}" onclick="return" style="margin: 5px;">
                                        <img class="icon" src="${pageContext.request.contextPath}/resources/behind/images/icons/light/users2.png">
                                        <span>查看</span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>
    <div class="pagination">
        <ul class="pages">
            <li>
                <a href="${pageContext.request.contextPath}/film/user/list?page=${pageInfo.firstPage}&size=${pageInfo.pageSize}">第一页</a>
            </li>
            <li>
                <c:choose>
                    <c:when test="${pageInfo.isFirstPage}">
                        <a><</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/film/user/list?page=${pageInfo.prePage}&size=${pageInfo.pageSize}" target="_self"><</a>
                    </c:otherwise>
                </c:choose>
            </li>
            <li>
                当前第${pageInfo.pageNum}页
            </li>
            &nbsp;
            <li>
                总共${pageInfo.pages}页
            </li>
            <li>
            <li>
                <c:choose>
                    <c:when test="${pageInfo.isLastPage}">
                        <a>></a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/film/user/list?page=${pageInfo.nextPage}&size=${pageInfo.pageSize}" target="_self">></a>
                    </c:otherwise>
                </c:choose>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/film/user/list?page=${pageInfo.lastPage}&size=${pageInfo.pageSize}">最后一页</a>
            </li>
            <li>
                每页显示&nbsp;<input type="text" id="my_size" onblur="page()" value="${pageInfo.pageSize}" title="" style="width: 30px; height: 20px;"/>&nbsp;条
            </li>
            <li>
                跳转到&nbsp;<input type="text" id="my_page" onblur="page()" value="${pageInfo.pageNum}" title="" style="width: 30px; height: 20px;"/>&nbsp;页
            </li>
        </ul>
    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">FILM<a href="${pageContext.request.contextPath}/common/index" target="_blank"
                                    title="影视网">影视网</a></div>
    </div>
</div>

<div class="clear"></div>
<script type="text/javascript">
    function page() {
        var page = $("#my_page")[0].value;
        var size = $("#my_size")[0].value;
        if (page > ${pageInfo.pages}){
            page = ${pageInfo.pages};
        }
        var url = "${pageContext.request.contextPath}/film/user/list?page="+page+"&size="+size;
        window.location.href = url;
    }
</script>
</body>
</html>