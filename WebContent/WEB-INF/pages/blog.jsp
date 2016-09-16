<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="cn" dir="ltr" class="no-js">

<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>异步 </title>
    <link href="/MyBlog/static/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/MyBlog/static/assets/css/style.css" rel="stylesheet" />
    <link href="/MyBlog/static/assets/css/nprogress.css" rel="stylesheet" />
    <link rel="stylesheet" href="/MyBlog/static/assets/css/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="/MyBlog/static/assets/css/default.css" type="text/css" media="screen" />
    <script src="/MyBlog/static/assets/js/jquery.min.js"></script>
    <link rel="stylesheet" href="/MyBlog/static/assets/APlayer/dist/APlayer.min.css">
    <script src="/MyBlog/static/assets/js/jquery.nivo.slider.pack.js"></script>
    <script src="/MyBlog/static/assets/js/nprogress.js"></script>
</head>

<body>
<jsp:include page="UI.jsp"/>
<div class="container-fluid main-container" id="main-container">

    <div class="row">
        <div class="col-md-12 top-title">
            <h2 class="page-title">
                博客文章
            </h2>
        </div>
    </div>
      <c:forEach var="context" items="${listStr}" >
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="content?title=${context.title}" title="">${context.title}</a>
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
             ${context.time}
            </span>
            <span class="comments-link">
              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
               ${context.abstracts }
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="topics/life/diary.htm">
                  ${context.type }
              </a>
            </span>
            <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  标签:
              </b>
              <a href="tags/毕业.htm" rel="tag">
                  异步
              </a>
            </span>
            </div>
        </div>
    </div>
    </c:forEach>
   
    <!--分页进入第二页，一页多少可分配-->
    <div class="row post-pagination">
        <div class="col-md-12">
            <p>
                <a href="" class="btn btn-primary btn-sm">
              <span class="glyphicon glyphicon-refresh">
              </span>
              <span>
                浏览之前的文章
              </span>
                </a>
            </p>
        </div>
    </div>
    <!--评论内容-->
    <div class="row page-comments-container">
        <div class="col-md-12">
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
   <jsp:include page="head.jsp"/>
</body>

</html>