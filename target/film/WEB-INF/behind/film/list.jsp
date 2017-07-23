<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>电影列表</title>
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
                <h5>电影列表</h5>
            </div>
        </div>
    </div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Dynamic table -->
        <div class="widget">
            <div class="title">
                <span class="titleIcon">
                    <div id="uniform-titleCheck" class="checker">
                        <span>
                            <input id="titleCheck" name="titleCheck" style="opacity: 0;" type="checkbox">
                        </span>
                    </div>
                </span>
                <h6>电影列表</h6>
                &nbsp;&nbsp;&nbsp;
                <form id="file-form" action="${pageContext.request.contextPath}/film/importFilms" style="margin-top: -21px;" enctype="multipart/form-data" method="post">
                    <input id="file" name="file" style="margin-top: -5px;" size="25" type="file">
                    <button class="button blueB" type="submit"  style="margin: 5px;">导入电影</button>
                    <c:if test="${!empty result}"><p style="color: rgb(233, 87, 93); margin-top: -30px; width: 200px; padding-top: 0px; border-top-width: 0px; margin-left: 500px;">${result}</p></c:if>
                </form>
            </div>
            <table id="checkAll" class="sTable withCheck" width="100%" cellspacing="0" cellpadding="0">
                <thead>
                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath}/resources/behind/images/icons/tableArrows.png" alt="">
                    </td>
                    <td>电影海报</td>
                    <td>电影名</td>
                    <td>类型</td>
                    <td>发布时间</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody id = "t_body">
                    <c:if test="${!empty page.data}">
                        <c:forEach items="${page.data}" var="film">
                            <tr id="filmTable">
                                <td>
                                    <div id="uniform-titleCheck2" class="checker">
                                        <span>
                                            <input id="check_${film.filmid}" name="checkRow" style="opacity: 0;" type="checkbox" value="${film.filmid}">
                                        </span>
                                    </div>
                                </td>
                                <td align="center">
                                    <img src="${pageContext.request.contextPath}/resources/behind/images/${film.img}" width="50px" height="75px" alt="图片无法显示"/>
                                </td>
                                <td style="border-left-color: rgb(203, 203, 203);" align="center">${film.name}</td>
                                <td align="center">
                                    <c:if test="${!empty film.typesList}">
                                        <c:forEach items="${film.typesList}" var="type">
                                            ${type.typeName}&nbsp;
                                        </c:forEach>
                                    </c:if>
                                </td>
                                <td align="center">${film.createtime}</td>
                                <td align="center">
                                    <a class="smallButton" href="${pageContext.request.contextPath}/film/filmInfo?id=${film.filmid}" style="margin: 5px;">
                                        <img src="${pageContext.request.contextPath}/resources/behind/images/icons/dark/magnify.png" alt="查看">
                                    </a>
                                    <a class="smallButton" href="${pageContext.request.contextPath}/film/updateFilmUI" style="margin: 5px;">
                                        <img src="${pageContext.request.contextPath}/resources/behind/images/icons/color/pencil.png" alt="修改">
                                    </a>
                                    <a class="smallButton" href="${pageContext.request.contextPath}/film/deleteFilm" title="" style="margin: 5px;">
                                        <img src="${pageContext.request.contextPath}/resources/behind/images/icons/dark/close.png" alt="删除">
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
        <ul class="pages" id="pagesInfo">
            <li>
                <input class="basic" value="第一页" style="margin: 5px;" onclick="page(${page.firstPage},5)" type="button">
            </li>
            <li>
                <input class="basic" value="<" style="margin: 5px;" onclick="page(${page.prePage},5)" type="button">
            </li>
            <li>
                当前第${page.currentPage}页
            </li>
            &nbsp;
            <li>
                总共${page.totalPage}页
            </li>
            <li>
            <li>
                <input class="basic" value=">" style="margin: 5px;" onclick="page(${page.nextPage},5)" type="button">
            </li>
            <li>
                <input class="basic" value="最后一页" style="margin: 5px;" onclick="page(${page.totalPage},5)" type="button">
            </li>
            <li>
                每页显示&nbsp;<input type="text" id="my_size" value="${page.pageSize}" title="" onblur="selfPage()" style="width: 30px; height: 20px;"/>&nbsp;条
            </li>
            <li>
                跳转到&nbsp;<input type="text" id="my_page" value="${page.currentPage}" title="" onblur="selfPage()" style="width: 30px; height: 20px;"/>&nbsp;页
            </li>
        </ul>
    </div>

    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">FILM<a href="${pageContext.request.contextPath}/common/index" target="_blank" title="影视网">影视网</a></div>
    </div>
</div>
<div class="clear"></div>
<script type="text/javascript">
    function page(page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/ajaxList",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $tbody = $("#t_body");
                var $pagesinfo = $("#pagesInfo");
                if (result.status == 200) {
                    $tbody.empty();
                    $tbody.append(result.msg);
                    $pagesinfo.empty();
                    $pagesinfo.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    function selfPage() {
        var size = $("#my_size")[0].value;
        var page = $("#my_page")[0].value;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/ajaxList",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $tbody = $("#t_body");
                var $pagesinfo = $("#pagesInfo");
                if (result.status == 200) {
                    $tbody.empty();
                    $tbody.append(result.msg);
                    $pagesinfo.empty();
                    $pagesinfo.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }
</script>
</body>
</html>