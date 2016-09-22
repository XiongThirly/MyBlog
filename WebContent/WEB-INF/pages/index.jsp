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
    <title>Thirly的博客</title>
   
</head>

<body>
<jsp:include page="UI.jsp"/>
<!--End banner img-->
<!--主要内容 -->
    <div class="container-fluid main-container" id="main-container">
        <div class="row top-title">
            <div class="col-md-12">
                <h1 class="page-title">
                    最新文章
                </h1>
            </div>
        </div>
    <!--main Start-->
    <c:forEach var="context" items="${listStr}" >
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="${pageContext.request.contextPath }/pages/content?title=${context.contextid}" title="">${context.title}</a>
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
            ${context.time}
            </span>
            <span class="comments-link">
              <a href="${pageContext.request.contextPath }/pages/contact" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
                ${context.abstracts}
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="#">
                  ${context.type}
              </a>
            </span>
            <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  作者:
              </b>
              <a href="${pageContext.request.contextPath }/pages/about" rel="tag">
                  Thirly
              </a>
            </span>
            </div>
        </div>
    </div></c:forEach>
    
          
    <!--更多内容-->
    <div class="row">
        <div class="col-md-12">
            <h2 class="page-title">
                <a href="${pageContext.request.contextPath }/pages/pageBlog?currentpage=1" title="">更多内容</a>
            </h2>
        </div>
    </div>
    <!--跳转至博客页面-->
    <div class="row">
        <div class="col-md-12 post-container">
            <div class="row">
                <div class="col-md-4">
                    <a class="btn btn-primary home-browser-more-btn" href="${pageContext.request.contextPath }/pages/pageBlog?currentpage=1">
                        <span>浏览更多文章</span>
                    </a>
                </div>
                <div class="col-md-8">
                </div>
            </div>
        </div>
    </div>
    <!--推荐阅读-->
    <div class="row">
        <div class="col-md-12 post-container m-recommend-page">
            <div class="row">
                <div class="col-md-4">
                    <a href="" class="thumbnail">
                        <img src="${pageContext.request.contextPath }/static/assets/img/works.png" alt="作品展示">
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="thumbnail">
                        <img src="${pageContext.request.contextPath }/static/assets/img/study.png" alt="学习生活">
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="" class="thumbnail">
                        <img src="${pageContext.request.contextPath }/static/assets/img/book.png" alt="作品推荐">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- 网站底部 -->
      
     <jsp:include page="head.jsp"/>
</body>

</html>