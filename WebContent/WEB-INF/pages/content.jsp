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
                <a href="/MyBlog/pages/blog.jsp">博客</a> >> <a href="content.html">异步测试文章</a>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="booklist.htm" tppabs="http://www.soulteary.com/booklist" rel="bookmark">
                    异步测试文章
                </a>
            </h2>
            <div class="meta-box">
            </div>
            <div class="post-content">
                <p>
                    这是本文的简介,可以是文章的前一部分内容,或者是作者对本文所做的一些概括
                </p>
                <hr/>
                <section>
                    <div class="main-container">
                        <div class="row">
                            <p>
                            这是本文的内容,举例,今天是不错的一天,因为今天leaves主题从黑色变成白色的了,虽然说白色的看起来更漂亮,但是我依然不会放弃黑色的主题的,我会对黑色的主题进行再次重构,等到下次更新的时候我们就会看到不一样的黑色主题．
                            </p>
                            <p>
                                其次就是本次新增填了文章音乐播放器,在看文章的时候您可以点开本文所带的音乐,或是一首或是几首,为您带来一段愉悦的时光,当然本文是将音乐放在最下方了,您也可以选择放在本文的最上方
                            </p>
                            <div id="player3" class="aplayer"></div>
                        </div>
                    </div>
                </section>
                <div class="meta-box">
                </div>
            </div>
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
<script src="assets/APlayer/dist/APlayer.min.js"></script>
<script src="assets/APlayer/demo/demo.js"></script>
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