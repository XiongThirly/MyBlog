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
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title right">
                <a href="/MyBlog/pages/blog">博客</a> >> <a href="content">${content.title }</a>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="">
                  ${content.title }
                </a>
            </h2>
            <div class="meta-box">
            </div>
            <div class="post-content">
                <p>
                   ${content.abstracts }
                </p>
                <hr/>
            ${content.content }
                <div class="meta-box">
                </div>
            </div>
        </div>
    </div>
     <jsp:include page="head.jsp"/>
</body>

</html>