<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>电影信息</title>
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
            <div class="welcome"><a href="#" title=""><img src="${pageContext.request.contextPath}/resources/behind/images/userPic.png" alt="" /></a><span>${sessionScope.admin.name}</span></div>
            <div class="userNav">
                <ul>
                    <li class="dd"><a href="#" title=""><img src="${pageContext.request.contextPath}/resources/behind/images/icons/topnav/profile.png" alt="" /><span>Profile</span><span class="numberTop">2</span></a>
						<ul class="userDropdown">
                            <li><a href="${pageContext.request.contextPath}/film/admin/info" title="" class="sAdd">查看账号信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/resources/behind/admin/update" class="sInbox">更改账号信息</a></li>
                        </ul>
					</li>
                    <li><a href="${pageContext.request.contextPath}/common/logout" title=""><img src="${pageContext.request.contextPath}/resources/behind/images/icons/topnav/logout.png" alt="" /><span>注销</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>电影信息</h5>
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
                        <label>海报:</label>
                        <div class="formRight"><img alt="" src="${pageContext.request.contextPath}/resources/behind/images/${film.img}" width="200px" height="300px"/> </div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>电影名:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.name}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>播放时间:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.time}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>热点:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.point}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>价格:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.price}"/></div><div class="clear"></div>
                    </div>

					<div class="formRow">
                        <label>电影类型:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="<c:forEach items='${film.typesList}' var='type'>${type.typeName}&nbsp;</c:forEach> "/></div>
                        <div class="clear"></div>
                    </div>
                    
					<div class="formRow">
                        <label>演员:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.actor}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>导演:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.director}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>上映时间:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.createtime}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>国家:</label>
                        <div class="formRight"><input disabled="disabled" type="text" value="${film.contry}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>简介:</label>
                        <div class="formRight"><textarea name="introduction" disabled="disabled" style="width:70%;height:200px;">${film.introduction}</textarea></div>
                        <div class="clear"></div>
                    </div>

                    <a class="button dredB" href="${pageContext.request.contextPath}/">
                        <span>修改信息</span>
                    </a>
                    <a class="button dredB" href="${pageContext.request.contextPath}/film/list">
                        <span>返回后台主页</span>
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