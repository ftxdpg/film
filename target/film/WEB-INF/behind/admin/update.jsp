<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>修改管理员信息页面</title>
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
                            <li><a href="${pageContext.request.contextPath}/film/admin/info" class="sAdd">查看账号信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/" class="sInbox">更改账号信息</a></li>
                        </ul>
					</li>
                    <li><a href="${pageContext.request.contextPath}/common/logout"><img src="${pageContext.request.contextPath}/resources/behind/images/icons/topnav/logout.png" alt="" /><span>注销</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>修改管理员信息</h5>
            </div>
			<div class="clear"></div>
        </div>
    </div>
    
	<!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p><strong>提示： </strong>务必把信息都填写完整！</p>
        </div>

        <!-- Validation form -->
        <form id="validate" class="form" method="post" action="${pageContext.request.contextPath}/resources/behind/admin/saveAdmin">
            <fieldset>
                <div class="widget">
                    <div class="formRow">
                        <label>账号:<span class="req">*</span></label>
                        <input id="id" name="id" type="hidden" value="${sessionScope.admin.id}"/>
                        <div class="formRight"><input type="text" value="${sessionScope.admin.account}" class="validate[required,minSize[2],maxSize[8]]" name="account" id="account"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>姓名:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="validate[required,maxSize[4]]" name="name" id="name" value="${sessionScope.admin.name}"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>邮箱:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" value="${sessionScope.admin.email}" class="validate[required,custom[email]]" name="email" id="email"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>手机号:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="validate[required]" value="${sessionScope.admin.phone}" name="phone" id="phone"/></div><div class="clear"></div>
                    </div>

                    <div class="formSubmit"><input type="submit" value="保存修改" class="redB" /></div>
                    <div class="clear"></div>
                </div>
            </fieldset>
        </form>       
    </div>
</div>

<div class="clear"></div>

</body>
</html>