<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>管理员个人信息</title>
    <link href="${pageContext.request.contextPath}/resources/behind/css/main.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/js/custom.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="${pageContext.request.contextPath}/film/list"><img src="${pageContext.request.contextPath}/resources/behind/images/logo.png" alt="" /></a></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="charts"><a href="${pageContext.request.contextPath}/film/list" title=""><span>电影管理列表</span></a></li>
		<div class="sidebarSep"></div>

		<li class="ui"><a href="${pageContext.request.contextPath}/film/user/list" title=""><span>用户管理列表</span></a></li>
		<div class="sidebarSep"></div>

		<li class="forms"><a href="#" class="exp"><span>新增</span><strong>2</strong></a>
            <ul class="sub">
                <li><a href="${pageContext.request.contextPath}/film/newFilmUI" title="">新增管理员</a></li>
            </ul>
        </li>
		<div class="sidebarSep"></div>
    </ul>

</div>


<!-- Right side -->
<div id="rightSide">

    <!-- 头顶功能 -->
    <jsp:include page="/WEB-INF/common/admin.jsp"/>

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>管理员个人信息</h5>
            </div>
			<div class="clear"></div>
        </div>
    </div>

	<!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Validation form -->
        <form id="validate" class="form" method="post" action="">
            <fieldset>
                <div class="widget">
                    <div class="formRow">
                        <label>账号:</label>
                        <div class="formRight"><input disabled="disabled" value="${sessionScope.admin.name}" type="text" name="account" id="account"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>邮箱:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${sessionScope.admin.email}" name="email" id="email"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>手机号:</label>
                        <div class="formRight"><input disabled="disabled" value="${sessionScope.admin.phone}" type="text" name="phone" id="phone"/></div><div class="clear"></div>
                    </div>

                    <a class="button dredB" href="${pageContext.request.contextPath}/film/list">
                        <span>返回后台主页</span>
                    </a>
                    <a class="button dredB" href="${pageContext.request.contextPath}/admin/list">
                        <span>修改信息</span>
                    </a>
                    <div class="clear"></div>
                </div>
            </fieldset>
        </form>       
    </div>
</div>

<div class="clear"></div>

</body>
</html>