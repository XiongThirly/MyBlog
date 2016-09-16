<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">
              Toggle navigation
            </span>
            <span class="icon-bar">
            </span>
            <span class="icon-bar">
            </span>
            <span class="icon-bar">
            </span>
            </button>
            <a class="navbar-brand" href="index">
                <img src="/MyBlog/static/assets/img/logo.png" class="logo"/>
            </a>
        </div>
        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav header-menu">
                <li>
                    <a href="${pageContext.request.contextPath }/pages/index">
                        首页
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/pages/about">
                        关于
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/pages/blog">
                        博客
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/pages/works">
                        作品
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/pages/links">
                        链接
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/pages/contact">
                        联系
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/pages/help">
                        帮助
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="leftbar">
    <!-- 左菜单 -->
    <div class="left_menu">
        <ul class="menu_link">
            <li>
                <a href="${pageContext.request.contextPath }/pages/login" class="simptip-position-right simptip-smooth simptip-movable"
                   data-toggle="tooltip" data-placement="right" title="登陆">
            
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
          
            <li data-toggle="tooltip" data-placement="right" title="博客">
                <a href="${pageContext.request.contextPath }/pages/editor.do" class="simptip-position-right simptip-smooth simptip-movable"
                   target="_black">
                  
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                注册
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="/MyBlog/static/assets/img/login.png">
              <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>
<!--Start banner img-->
<div class="container-filed" id="banner_container">
    <div class="row">
        <div class="col-md-12">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="/MyBlog/static/assets/img/owl.jpg" data-thumb="/MyBlog/static/assets/img/owl.jpg" alt="" />
                    <a href="/MyBlog/static/assets/img/owl2.jpg"><img src="/MyBlog/static/assets/img/owl2.jpg" alt="" /></a>
                    <img src="/MyBlog/static/assets/img/owl.jpg" data-thumb="/MyBlog/static/assets/img/owl.jpg" alt="" />
                    <img src="/MyBlog/static/assets/img/owl2.jpg" data-thumb="/MyBlog/static/assets/img/owl2.jpg" alt="" />
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>