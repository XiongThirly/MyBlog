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
    <title>${content.title } </title>

</head>

<body>
<jsp:include page="UI.jsp"/>
<div class="container-fluid main-container" id="main-container">
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title right">
                <a href="${pageContext.request.contextPath }/pages/pageBlog?currentpage=1">博客</a> >> <a href="#">${content.title }</a>
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
                 <div id="player3" class="aplayer"></div>
            </div>
        </div>
    </div>
    <!-- 多说评论框 start --> 
    <div class="ds-thread" data-thread-key=${content.contextid }data-title=${content.title }data-url="请替换成文章的网址"></div> 
    <!-- 多说评论框 end -->
     <!-- 多说公共JS代码 start (一个网页只需插入一次) --> 
     <script type="text/javascript"> 
     var duoshuoQuery = {short_name:"thirly"}; 
     (function() 
    		 {
    	 var ds = document.createElement('script'); 
    	 ds.type = 'text/javascript';ds.async = true; 
    	 ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.unstable.js'; 
    	 ds.charset = 'UTF-8'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds); })(); 
     </script>
    	  <!-- 多说公共JS代码 end -->
     <jsp:include page="head.jsp"/>
</body>

</html>