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
                关于异步
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="about.php" rel="bookmark">
                    关于异步
                </a>
            </h2>
            <div class="post-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="thumbnail">
                            <a href="javascript:;">
                                <img title="关于我 @Ybsat" src="assets/img/about.png" alt="关于我 @Ybsat"
                                />
                            </a>
                            <div class="caption">
                                <h3>
                                    个人概况
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default" id="simple-intro">
                    <div class="panel-body">
                        <h3>
                            简单概述
                        </h3>
                        <p>
                            学程序是因为有梦想，希望自己以后能够和小伙伴们创建一家属于自己的互联网公司。对前端(FrontEnd) &amp; 交互体验(User Experience)/后端(Backend)/存储(Storage)/等相关技术十分感兴趣，喜欢变着花样（寻求最优方案）去完成想要完成的事情。可以独立设计并完成网站或软件视觉设计，有轻微代码洁癖。
                        </p>
                        <p>
                            我的联系方式：
                        </p>
                        <blockquote class="contact-list" id="about-list">
                            <ul>
                                <li>
                                    电子邮箱:
                                    <kbd>
                                        junqiahen@gmail.com
                                    </kbd>
                                </li>
                                <li>
                                    腾讯QQ:
                                    <kbd>
                                        @724847899
                                    </kbd>
                                </li>
                                <li>
                                    新浪微博:
                                    <kbd>
                                        weibo.com/5249464563/profile
                                    </kbd>
                                </li>
                                <li>
                                    腾讯微博:
                                    <kbd>
                                        t.qq.com/qaz0857/kbd>
                                </li>
                                <li>
                                    我的GIT:
                                    <kbd>
                                    </kbd>
                                </li>
                            </ul>
                        </blockquote>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body clearfix">
                        <h3>
                            往事如烟
                        </h3>
                        <p>
                            暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发
                        </p>
                        <p>
                            暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发。
                        </p>
                        <p>
                            暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发。
                        </p>
                        <p>
                            暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发暂未开发。
                        </p>
                        <footer class="pull-right">
                            二零一五年九月落笔于
                            <cite title="郑州">
                                郑州
                            </cite>
                        </footer>
                    </div>
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