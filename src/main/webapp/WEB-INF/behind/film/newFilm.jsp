<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>新增电影</title>
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

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/datepicker/WdatePicker.js"></script>
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
                <li><a href="${pageContext.request.contextPath}/film/newFilm" title="">新增电影</a></li>
            </ul>
        </li>
        <div class="sidebarSep"></div>
    </ul>

</div>


<!-- Right side -->
<div id="rightSide">

    <!-- 头顶功能 -->
    <jsp:include page="/WEB-INF/common/admin.jsp"/>
    <div class="clear"></div>
    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- 弹窗 -->
        <div class="nNote nInformation hideit">
            <p><strong>提示: </strong>请务必把信息填写完整！</p>
        </div>
        <c:if test="${!empty result}">
            <div class="nNote nFailure hideit">
                <p>
                    <strong>提示: </strong>
                    ${result}
                </p>
            </div>
        </c:if>

        <!-- 正文 -->
        <form id="validate" class="form" method="post" action="${pageContext.request.contextPath}/film/newFilm" enctype="multipart/form-data">
            <fieldset>
                <div class="widget">
                    <div class="title"><img src="${pageContext.request.contextPath}/resources/behind/images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>新增电影</h6></div>
                    <div class="formRow">
                        <label>电影名:<span class="req">*</span></label>
                        <div class="formRight">
                            <input type="text" class="validate[required]" name="name" id="name" onblur="testName()"/>
                            <img id="iImage" src="" alt="">
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label>演员:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="validate[required]" name="actor" id="actor"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>导演:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="validate[required]" name="director" id="director"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>播放时长:<span class="req">*</span></label>
                        <div class="formRight"><input type="text" class="validate[required]" name="time" id="time"/></div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>价格:<span class="req">*</span></label>
                        <div class="formRight">
                            <input type="text" class="validate[required]" id="price" name="price"/>
                        </div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>国家:<span class="req">*</span></label>
                        <div class="formRight">
                            <div class="floatL">
                                <select name="contry" id="contry" class="validate[required]" >
                                    <option value="">未选择</option>
                                    <option value="美国">美国</option>
                                    <option value="华语">华语</option>
                                    <option value="香港">香港</option>
                                    <option value="韩国">韩国</option>
                                    <option value="日本">日本</option>
                                    <option value="印度">印度</option>
                                    <option value="其他">其他</option>
                                </select>
                            </div>
                        </div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>类型:<span class="req">*</span></label>
                        <div class="formRight">
                            <label><input type="checkbox" name="type" value="1"/>喜剧</label>
                            <label><input type="checkbox" name="type" value="2"/>爱情</label>
                            <label><input type="checkbox" name="type" value="3"/>动作</label>
                            <label><input type="checkbox" name="type" value="4"/>悬疑</label>
                            <label><input type="checkbox" name="type" value="5"/>惊悚</label>
                            <label><input type="checkbox" name="type" value="6"/>动画</label>
                            <label><input type="checkbox" name="type" value="7"/>科幻</label>
                            <label><input type="checkbox" name="type" value="8"/>战争</label>
                            <label><input type="checkbox" name="type" value="9"/>青春</label>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>热度:<span class="req">*</span></label>
                        <div class="formRight">
                            <input type="text" class="validate[required]" id="point" name="point"/>
                        </div><div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>上映时间:<span class="req">*</span></label>
                        <div class="formRight">
                            <input type="text" class="validate[required]" id="createtime" name="createtime" readonly="true" onclick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'});"/>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>图片:<span class="req">*</span></label>
                        <div class="formRight">
                            <div id="uniform-file" class="uploader">
                                <input id="imgs" name="imgs" class="validate[required]" size="25" type="file">
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <div class="formRow">
                        <label>简介:<span class="req">*</span></label>
                        <div class="formRight"><textarea name="introduction" style="width:90%;height:500px;" id="introduction"></textarea></div><div class="clear"></div>
                    </div>
                    <div class="formSubmit"><input type="submit" id="sub" value="确认添加" class="redB" /></div>
                    <div class="clear"></div>
                </div>

            </fieldset>
        </form>
    </div>
</div>
<!-- 富文本编辑器 -->
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/behind/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/behind/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/behind/ueditor/lang/zh-cn/zh-cn.js"></script>

<script>
    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/behind/ueditor/";
    var ue = UE.getEditor('introduction');

    var validator = $("#validate").submit(function() {
        UE.getEditor('introduction').sync();
    }).validate({
        ignore: "",
        rules: {
            introduction: "required"
        },
        messages:{
            introduction:"请输入电影简介"
        }
    });

    $(document).ready(function(){
        $("#sub").click(function(){
            if ($(":checkbox:checked").length == 0)
            {
                alert("电影类型未选择");
            }
        });
    });

    // 异步
    function testName() {
        var name = $("#name")[0].value;
        if (name == null) {
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath}/film/testFilmName",
                type: "post",
                data: {"name": name},
                success:function (msg) {
                    if (msg.status == 200){
                        // 更新状态栏显示值
                        $("#iImage").attr("src","${pageContext.request.contextPath}/resources/behind/images/icons/dark/check.png");
                    }else {
                        $("#iImage").attr("src","${pageContext.request.contextPath}/resources/behind/images/icons/dark/close.png");
                    }
                },
                error: function () {
                    alert("内部错误");
                }
            });
        }
    }
</script>
<div class="clear"></div>
</body>
</html>