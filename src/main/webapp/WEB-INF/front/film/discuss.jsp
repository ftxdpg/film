<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>仿微博评论</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/behind/discuss/css/CommentStyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/behind/discuss/css/comment.css">
</head>
<body>

<div class="commentAll">
    <!--评论区域 begin-->
    <div class="reviewArea clearfix">
        <textarea class="content comment-input" placeholder="字数上限为140&hellip;" onkeyup="keyUP(this)" id="content"></textarea>
        <a class="plBtn" onclick="addDiscuss()">评论</a>
    </div>
    <!--评论区域 end-->

    <!--回复区域 begin-->
    <div class="comment-show col-sm-12" id="discuss">

        <!-- 要删除就从这里开始 begin -->
        <c:if test="${!empty discussPageUtil.data}">
            <c:forEach items="${discussPageUtil.data}" var="discuss">
                <div class="comment-show-con clearfix">
                    <div class="comment-show-con-img pull-left"><img src="${pageContext.request.contextPath}/resources/images/31-31.png" alt=""></div>
                    <div class="comment-show-con-list pull-left clearfix">
                        <div class="pl-text clearfix">
                            <p class="comment-size-name">${discuss.discussName} : </p>
                            <span class="my-pl-con">&nbsp;${discuss.content}</span>
                        </div>
                        <div class="date-dz">
                            <span class="date-dz-left pull-left comment-time">${discuss.discussTime}</span>
                            <div class="date-dz-right pull-right comment-pl-block">
                                <a href="javascript:;" class="removeBlock">删除</a>
                                <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                            </div>
                        </div>
                        <c:if test="${!empty discuss.replyList}">
                            <c:forEach items="${discuss.replyList}" var="reply">
                                <c:if test="${reply.replyFloat eq discuss.discussFloat}">
                                    <!-- 一条回复的开始 begin -->
                                    <div class="hf-list-con">
                                        <div class="all-pl-con">
                                            <div class="pl-text hfpl-text clearfix">
                                                <a class="comment-size-name">${reply.replyUser} : </a>
                                                <span class="my-pl-con">回复<a class="comment-size-name">${reply.replyTo}</a>：${reply.replyContent}</span>
                                            </div>
                                            <div class="date-dz">
                                                <span class="date-dz-left pull-left comment-time">${reply.replyTime}</span>
                                                <div class="date-dz-right pull-right comment-pl-block">
                                                    <a href="javascript:;" class="removeBlock">删除</a>
                                                    <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 一条回复的结束 end -->
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        <!-- 要删除就从这里结束 end -->

    </div>
    <!--回复区域 end-->
</div>

<!-- 分页区域 -->
<div class="col-sm-12" id="discuss_page" style="margin-left: 350px;">
    <c:if test="${discussPageUtil.data.size() != 0}">
        <input value="第一页" style="margin: 5px;" onclick="discussPage(${discussPageUtil.firstPage},5)" type="button">&nbsp;
        <input value="<" style="margin: 5px;" onclick="discussPage(${discussPageUtil.prePage},5)" type="button">&nbsp;
        当前第${discussPageUtil.currentPage}页&nbsp;
        总共${discussPageUtil.totalPage}页&nbsp;
        <input class="basic" value=">" style="margin: 5px;" onclick="discussPage(${discussPageUtil.nextPage},5)" type="button">&nbsp;
        <input class="basic" value="最后一页" style="margin: 5px;" onclick="discussPage(${discussPageUtil.totalPage},5)" type="button">&nbsp;
        每页显示&nbsp;<input type="text" id="my_discussSize" value="${discussPageUtil.pageSize}" title="" onblur="discussSelfPage()" style="width: 30px; height: 20px;"/>&nbsp;条&nbsp;
        跳转到&nbsp;<input type="text" id="my_discussPage" value="${discussPageUtil.currentPage}" title="" onblur="discussSelfPage()" style="width: 30px; height: 20px;"/>&nbsp;页
    </c:if>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/discuss/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/discuss/js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>


<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>

<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click','.pl-hf',function(){
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@'+fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml= '<div class="hf-con pull-left">'+
                '<textarea class="content comment-input hf-input" placeholder="'+fhN+'" onkeyup="keyUP(this)"></textarea> '+
                '<a href="javascript:;" class="hf-pl">评论</a>'+
                '</div>';
        //显示回复
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus();
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
</script>

<script type="text/javascript">
    // 添加评论
    function addDiscuss() {
        var size = $("#my_discussSize")[0].value;
        var page = $("#my_discussPage")[0].value;
        var user = ${sessionScope.user};
        if (user == undefined){
            alert("请先登录");
            return;
        }
        var content = $("#content")[0].value;
        if (content == undefined || content.size() == 0){
            alert("请输入评论");
            return;
        }
        // 评论楼层
        var discussFloor = ${discussPageUtil.totalCount}+1;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/addDiscuss",
            type:"post",
            data:{"page":page, "size":size, "filmId":"1161273645", "content":content, "discussName":${sessionScope.user.name}, "discussFloat":discussFloor},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 添加回复
    function addReply(page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/addReply",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 评论回复分页
    function discussPage(page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/discuss",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 评论回复自定义分页
    function discussSelfPage() {
        var size = $("#my_discussSize")[0].value;
        var page = $("#my_discussPage")[0].value;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/discuss",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 删除评论
    function deleteDiscuss(page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/deleteDiscuss",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("内部错误，请刷新页面");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 删除回复
    function deleteReply(page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/deleteReply",
            type:"post",
            data:{"page":page, "size":size},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
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