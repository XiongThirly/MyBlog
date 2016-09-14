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
            <h1 class="page-title">
                友情链接
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="links.php">
                    友情链接
                </a>
            </h2>
            <div class="post-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="thumbnail">
                            <img src="assets/img/Link.png" />
                            <div class="caption">
                                <h3>
                                    友情链接
                                </h3>
                                <p>
                                嘿,baby,这里是存放友情链接的地方,你可以在这里存储对您重要的友情链接，然后将其他友情链接存入一个单独的页面．
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="list-group" id="site-link-list">
                    <a class="list-group-item" target="_blank" href="javascript:if(confirm('点击确定将跳转'))window.location='http://www.ybsat.com/'">
                        <h4 class="list-group-item-heading">
                            <i class="fa fa-link">
                            </i>
                            异步
                        </h4>
                        <p class="list-group-item-text">
                            异步
                        </p>
                    </a>
                </div>
                <div class="list-group" id="site-link-list">
                    <a class="list-group-item" target="_blank" href="javascript:if(confirm('点击确定将跳转'))window.location='http://www.ybsat.com/'">
                        <h4 class="list-group-item-heading">
                            <i class="fa fa-link">
                            </i>
                            异步
                        </h4>
                        <p class="list-group-item-text">
                            异步
                        </p>
                    </a>
                </div>
                <div class="list-group" id="site-link-list">
                    <a class="list-group-item" target="_blank" href="javascript:if(confirm('点击确定将跳转'))window.location='http://www.ybsat.com/'">
                        <h4 class="list-group-item-heading">
                            <i class="fa fa-link">
                            </i>
                            异步
                        </h4>
                        <p class="list-group-item-text">
                            异步
                        </p>
                    </a>
                </div>
                <div class="list-group" id="site-link-list">
                    <a class="list-group-item" target="_blank" href="javascript:if(confirm('点击确定将跳转'))window.location='http://www.ybsat.com/'">
                        <h4 class="list-group-item-heading">
                            <i class="fa fa-link">
                            </i>
                            异步
                        </h4>
                        <p class="list-group-item-text">
                            异步
                        </p>
                    </a>
                </div>
                <div class="list-group" id="site-link-list">
                    <a class="list-group-item" target="_blank" href="javascript:if(confirm('点击确定将跳转'))window.location='http://www.ybsat.com/'">
                        <h4 class="list-group-item-heading">
                            <i class="fa fa-link">
                            </i>
                            异步
                        </h4>
                        <p class="list-group-item-text">
                            异步
                        </p>
                    </a>
                </div>
            </div>
            <div class="meta-box">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
    <footer>
        <!--版权信息-->
        <div class="copyright">
            Copyright Ybsat ©2016 All rights reserved 豫ICP备15027119&nbsp;&nbsp;
            <a href="www.ybsat.com">
                Theme leaves by Ybsat
            </a>
        </div>
    </footer>
</div>
<script src="assets/js/bootstrap.min.js"></script>
<script>
        /*banner 初始化*/
        $(window).load(function() {
         $('#slider').nivoSlider({
            effect: 'random',        // 过渡效果
            controlNav: false,       // 是否显示图片导航控制按钮（,2,3... ）
            pauseOnHover: true,      // 鼠标县浮时是否停止动画
            manualAdvance: false,    // 是否手动切换 
            animSpeed: 100,          // 图片过渡时间   
            pauseTime: 2000,         // 图片显示时间
            pauseOnHover: false,
            manualAdvance: false,
        });
        });
    $(document).ready(function(){
        $('body').show();
        $('.version').text(NProgress.version);
        NProgress.start();
        setTimeout(function() { NProgress.done(); $('.fade').removeClass('out'); }, 1000);
    })
    
</script>
</body>

</html>