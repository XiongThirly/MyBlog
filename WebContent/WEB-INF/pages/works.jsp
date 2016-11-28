<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="cn" dir="ltr" class="no-js">

<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>作品 </title>
   
</head>

<body>
<jsp:include page="UI.jsp"/>
<div class="container-fluid main-container" id="main-container">
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title">作品</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title"><a href="book.htm" rel="bookmark">阅读列表</a></h2>
            <div class="meta-box"></div>
            <div class="post-content">
                <p>存放一些作品,或者是相册。</p>
                <hr />
                <style>
                    .book-opt-sort{margin-left:10px;}
                </style>
                <div class="btn-group book-opt-filter"><a class="btn btn-primary btn-sm" data-filter="*">显示所有</a>
                    <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown"><span class="caret"></span><span class="sr-only">筛选内容</span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a data-filter=".book-cat-recommend">推荐</a></li>
                        <li><a data-filter=".book-cat-oreilly">“前端”</a></li>
                        <li><a data-filter=".book-cat-oreilly">“后端”</a></li>
                    </ul>
                </div>
                <div class="btn-group book-opt-sort"><a class="btn btn-primary btn-sm" data-sort-by="original-order">默认排序</a>
                    <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown"><span class="caret"></span><span class="sr-only">切换排序</span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a data-sort-by="name">类型</a></li>
                        <li><a data-sort-by="author">时间</a></li>
                        <li class="divider"></li>
                        <li><a data-sort-by="pubdate">开源</a></li>
                        <li><a data-sort-by="publisher">购买</a></li>
                    </ul>
                </div>
                <div class="book-container clearfix">
                    <div class="meta-box"></div>
                    <div class="row">

                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                    <div class="row">
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                    <div class="row">
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                    <div class="row">
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg" ><img  src = "${pageContext.request.contextPath }/static/assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                </div>
            </div>
            <div class="meta-box"></div>
        </div>
    </div>
      <jsp:include page="head.jsp"/>
</body>
</html>