<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
<script type="text/javascript">
	function logoutClick() {
	$.ajax({
				dataType : 'json',
				url : "../admin/logout",

				success : function(data) {
					if (data["logout"] == 1) {
						location = "../index"
					
					}
				},
				error : function() {
					alert("出现错误");
				}
			});
			return true;
		

	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/admin/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/admin/css/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/js/libs/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="design?currentpage=1">首页</a></li>
                <li><a href="../index" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
               
                <li><a href="AlterPassword">修改密码</a></li>
                <li><a href="#" onclick="logoutClick()">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                     
                        <li><a href="design?currentpage=1"><i class="icon-font">&#xe005;</i>博文管理</a></li>
                       
                     
                        <li><a href="links"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        
                        <li><a href="../admin/pageComments?currentpage=1"><i class="icon-font">&#xe052;</i>留言管理</a></li>
                  
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="../admin/system"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="../admin/Sysinfo"><i class="icon-font">&#xe037;</i>系统信息</a></li>
                        <li><a href="../admin/system"><i class="icon-font">&#xe046;</i>网站信息</a></li>
                        <li><a href="../admin/recycle?currentpage=1"><i class="icon-font">&#xe045;</i>回收站</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>