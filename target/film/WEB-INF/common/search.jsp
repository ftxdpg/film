<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div class="search-wrapper" style="margin-top: 56px;">
    <div class="container container--add">
        <form action="${pageContext.request.contextPath}/film/filmCommon/common/selectByFilmName" id='search-form' method='post' class="search">
            <input type="text" class="search__field" id="name" name="name" placeholder="电影名">
            <button type='submit' class="btn btn-md btn--danger search__button">查询电影</button>
        </form>
    </div>
</div>
</body>
</html>
