<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>电影详情</title>
    <meta name="description" content="A Template by Gozha.net">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="Gozha.net">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/behind/discuss/css/CommentStyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/behind/discuss/css/comment.css">

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="telephone=no" name="format-detection">

    <!-- Fonts -->
    <!-- Font awesome - icon font -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

    <!-- Stylesheets -->
    <!-- jQuery UI -->
    <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet">

    <!-- Mobile menu -->
    <link href="${pageContext.request.contextPath}/resources/css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="${pageContext.request.contextPath}/resources/css/external/jquery.selectbox.css" rel="stylesheet" />
    <!-- Swiper slider -->
    <link href="${pageContext.request.contextPath}/resources/css/external/idangerous.swiper.css" rel="stylesheet" />
    <!-- Magnific-popup -->
    <link href="${pageContext.request.contextPath}/resources/css/external/magnific-popup.css" rel="stylesheet" />

    <!-- Custom -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css?v=1" rel="stylesheet" />
</head>

<body>
<div class="wrapper">
    <!-- Header section -->
    <jsp:include page="../../common/Head.jsp"/>

    <!-- Search bar -->
    <jsp:include page="../../common/search.jsp"/>

    <!-- Main content -->
    <section class="container">
        <div class="col-sm-12">
            <div class="movie">
                <h2 class="page-heading">${film.name}</h2>

                <div class="movie__info">
                    <div class="col-sm-4 col-md-3 movie-mobile">
                        <div class="movie__images">
                            <span class="movie__rating">${film.point}</span>
                            <img alt='' src="${pageContext.request.contextPath}/resources/behind/images/${film.img}" height="384" width="256">
                        </div>
                        <div class="movie__rate">
                            热度:
                            <c:choose>
                                <c:when test="${film.point <= 2}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:when test="${2 < film.point && film.point <= 4}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:when test="${4 < film.point && film.point <= 6}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:when test="${6 < film.point && film.point <= 8}">
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div style="cursor: pointer; width: 90px;">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>

                    <div class="col-sm-8 col-md-9">
                        <p class="movie__time">${film.time}</p>

                        <p class="movie__option"><strong>国家: </strong>${film.contry}</p>
                        <p class="movie__option"><strong>年份: </strong>${film.createtime}</p>
                        <p class="movie__option"><strong>类型: </strong><c:forEach items="${film.typesList}" var="type">${type.typeName}&nbsp;</c:forEach></p>
                        <p class="movie__option"><strong>导演: </strong>${film.director}</p>
                        <p class="movie__option"><strong>演员: </strong>${film.actor}</p>
                        <p class="movie__option"><strong>价格: </strong>${film.price}</p>

                        <a class="comment-link">Comments:  ${discussPageUtil.totalCount}</a>

                        <div class="movie__btns movie__btns--full">
                            <a href="${pageContext.request.contextPath}/film/user/car/insetCar?filmId=${film.filmid}&userId=${user.uid}" class="btn btn-md btn--warning">添加至购物车</a>
                            <div id="collected" style="margin-top: 20px;">
                                <c:choose>
                                    <c:when test="${!empty sessionScope.user}">
                                        <c:choose>
                                            <c:when test="${empty userFilm}">
                                                <a href="${pageContext.request.contextPath}/film/user/collect?filmId=${film.filmid}&userId=${user.uid}" class="watchlist">收藏至观看列表</a>
                                            </c:when>
                                            <c:otherwise>
                                                已收藏，点击<a href="${pageContext.request.contextPath}/film/user/userInfo?uid=${user.uid}">查看收藏</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:otherwise>
                                        没有<a href="${pageContext.request.contextPath}/common/loginUI">登录</a>，无法查看收藏记录
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <h2 class="page-heading">电影简介</h2>
                <p class="movie__describe">${film.introduction}</p>
            </div>

            <div class="choose-container">
                <input type="hidden" id="repFloat" value="">
                <input type="hidden" id="repName" value="">
                <div class="clearfix"></div>
                <h2 class="page-heading">评论数 (${discussPageUtil.totalCount})</h2>

                <div class="comment-wrapper">
                    <div class="commentAll" style="width: 1000px;">
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
                                                <p class="comment-size-name" style="height: 0px;">${discuss.discussName} </p>
                                                <span class="my-pl-con">&nbsp;${discuss.content}</span>
                                            </div>
                                            <div class="date-dz">
                                                <span class="date-dz-left pull-left comment-time">${discuss.discussTime}</span>
                                                <div class="date-dz-right pull-right comment-pl-block">
                                                    <c:if test="${!empty user and discuss.discussName eq user.name}">
                                                        <a onclick="deleteDiscuss(${discussPageUtil.currentPage}, ${discussPageUtil.pageSize}, ${discuss.discussFloat})" class="removeBlock">删除</a>
                                                    </c:if>
                                                    <a onclick="addReplyFloat(${discuss.discussFloat})" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                                </div>
                                            </div>
                                            <c:if test="${!empty discuss.replyList}">
                                                <c:forEach items="${discuss.replyList}" var="reply">
                                                    <c:if test="${reply.replyFloat eq discuss.discussFloat}">
                                                        <!-- 一条回复的开始 begin -->
                                                        <div class="hf-list-con">
                                                            <div class="all-pl-con">
                                                                <div class="pl-text hfpl-text clearfix">
                                                                    <a class="comment-size-name">${reply.replyUser}  </a>
                                                                    <span class="my-pl-con">回复<a class="comment-size-name">${reply.replyTo}</a>：${reply.replyContent}</span>
                                                                </div>
                                                                <div class="date-dz">
                                                                    <span class="date-dz-left pull-left comment-time">${reply.replyTime}</span>
                                                                    <div class="date-dz-right pull-right comment-pl-block">
                                                                        <c:if test="${!empty user and reply.replyUser eq user.name}">
                                                                            <a onclick="deleteReply(${discussPageUtil.currentPage},${discussPageUtil.pageSize}, ${reply.replyId})" class="removeBlock">删除</a>
                                                                        </c:if>
                                                                        <a onclick="addReplyFloat(${discuss.discussFloat})" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
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
                    <div class="col-sm-12" id="discuss_page" style="margin-left: 200px;padding-bottom: 50px;">
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
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <jsp:include page="/WEB-INF/common/bottom.jsp"/>
</div>

<!-- JavaScript-->
<!-- jQuery 1.9.1-->
<script src="${pageContext.request.contextPath}/resources/behind/js/jquery.min.js"></script>
<!-- Migrate -->

<script src="${pageContext.request.contextPath}/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
<!-- jQuery UI -->
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<!-- Bootstrap 3-->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

<!-- Mobile menu -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.mobile.menu.js"></script>
<!-- Select -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.selectbox-0.2.min.js"></script>

<!-- Stars rate -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.raty.js"></script>
<!-- Swiper slider -->
<script src="${pageContext.request.contextPath}/resources/js/external/idangerous.swiper.min.js"></script>
<!-- Magnific-popup -->
<script src="${pageContext.request.contextPath}/resources/js/external/jquery.magnific-popup.min.js"></script>
<!-- Share buttons -->
<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

<!-- Form element -->
<script src="${pageContext.request.contextPath}/resources/js/external/form-element.js"></script>
<!-- Form validation -->
<script src="${pageContext.request.contextPath}/resources/behind/js/form.js"></script>
<!-- Modernizr -->
<script src="${pageContext.request.contextPath}/resources/js/external/modernizr.custom.js"></script>
<!-- Custom -->
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/behind/discuss/js/jquery.flexText.js"></script>
<script type="text/javascript">
    // 评论回复分页
    function discussPage(page, size) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/filmCommon/common/discuss",
            type:"post",
            data:{"page":page, "size":size, "filmId":${film.filmid}},
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
            url:"${pageContext.request.contextPath}/film/filmCommon/common/discuss",
            type:"post",
            data:{"page":page, "size":size, "filmId":${film.filmid}},
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

    // 添加评论
    function addDiscuss() {
        var size;
        if ($("#my_discussSize")[0] == undefined){
            size = 5;
        }else{
            size = $("#my_discussSize")[0].value;
        }

        var page;
        if ($("#my_discussPage")[0] == undefined){
            page = 1;
        }else{
            page = $("#my_discussPage")[0].value;
        }
        var content = $("#content")[0].value;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/addDiscuss",
            type:"post",
            data:{"page":page, "size":size, "filmId":${film.filmid}, "content":content},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $("#content").val('');
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("未登录或评论内容为空");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 添加回复
    function addReply(page, size) {
        var content = $("#replyContent")[0].value;
        var replyFloat = $("#repFloat")[0].value;
        var replyTo = $("#repName")[0].value;
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/addReply",
            type:"post",
            data:{"page":page, "size":size, "replyTo":replyTo, "replyFloat":replyFloat, "replyContent":content, "filmId":${film.filmid}},
            success: function (result) {
                var $discuss = $("#discuss");
                var $discuss_page = $("#discuss_page");
                if (result.status == 200) {
                    $discuss.empty();
                    $discuss.append(result.msg);
                    $discuss_page.empty();
                    $discuss_page.append(result.data);
                } else {
                    alert("没有登录或内容为空");
                }
            },
            error: function(){alert("内部错误");}
        });
    }

    // 删除评论
    function deleteDiscuss(page, size, discussFloat) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/deleteDiscuss",
            type:"post",
            data:{"page":page, "size":size, "discussFloat":discussFloat},
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
    function deleteReply(page, size, replyId) {
        $.ajax({
            url:"${pageContext.request.contextPath}/film/user/discuss/deleteReply",
            type:"post",
            data:{"page":page, "size":size, "replyId":replyId, "filmId":${film.filmid}},
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

    // 改变楼层
    function addReplyFloat(float) {
        $("#repFloat").val(float);
    }
</script>

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
        // 获取分页
        var size = $("#my_discussSize")[0].value;
        var page = $("#my_discussPage")[0].value;
        // 设置被回复人
        $("#repName").val($.trim(fhName));
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml= '<div class="hf-con pull-left">'+
                '<textarea id="replyContent" class="content comment-input hf-input" placeholder="'+fhN+'" onkeyup="keyUP(this)"></textarea> '+
                '<a onclick="addReply('+page+', '+size+')" class="hf-pl">评论</a>'+
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
    $(document).ready(function() {
        init_MoviePage();
        init_MoviePageFull();
    });
</script>

</body>
</html>

