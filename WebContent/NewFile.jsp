<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="static/css/style1.css" type="text/css" media="all" />
<link href="static/css/demo.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="header">
    <div class="wraper">
    	<h1><a href="http://validform.rjboy.cn">Validform</a></h1>
        <ul class="nav">
            <li><a href="http://validform.rjboy.cn/">关于Validform</a></li>
            <li><a href="demo.html" class="current">Demo</a></li>
            <li><a href="document.html">文档</a></li>
            <li><a href="help.html">帮助</a></li>
            <li><a href="http://validform.rjboy.cn/?p=1">网友讨论</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="wraper">
        <p class="tr"><a href="demo.html" class="blue ml10 fz12">返回示例首页&raquo;</a></p>
        
    	<h2 class="green">Validform实现用户名的实时验证</h2>
        
        <form class="registerform" action="demo/ajax_post.php">
            <table width="100%" style="table-layout:fixed;">
                <tr>
                    <td class="need" style="width:10px;">*</td>
                    <td style="width:70px;">用户名：</td>
                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" ajaxurl="demo/valid.php" datatype="s6-18" errormsg="用户名至少6个字符,最多18个字符！" /></td>
                    <td><div class="Validform_checktip">用户名至少6个字符,最多18个字符</div></td>
                </tr>
                <tr>
                    <td class="need">*</td>
                    <td>密码：</td>
                    <td><input type="password" value="" name="userpassword" class="inputxt" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！" /></td>
                    <td><div class="Validform_checktip">密码范围在6~16位之间</div></td>
                </tr>
                <tr>
                    <td class="need">*</td>
                    <td>确认密码：</td>
                    <td><input type="password" value="" name="userpassword2" class="inputxt" datatype="*" recheck="userpassword" nullmsg="请再输入一次密码！" errormsg="您两次输入的账号密码不一致！" /></td>
                    <td><div class="Validform_checktip">两次输入密码需一致</div></td>
                </tr>
                <tr>
                    <td class="need"></td>
                    <td></td>
                    <td colspan="2" style="padding:10px 0 18px 0;">
                        <input type="submit" value="提 交" /> <input type="reset" value="重 置" />
                    </td>
                </tr>
            </table>
        </form>
        
        <h2>说明：</h2>
        <div class="tipmsg">
        	<p><strong>ajaxurl：</strong>会把当前元素的值Post给ajaxurl指定的文件。</p>
            <p>ajaxurl指定的文件可以接收到Post过来的两个值，分别是param和name，param是该元素的值，name是该元素的name名称。可以通过区别name来把一个表单下，多个实时验证请求，都指定到同一个文件。</p>
            <p>首先会对datatype进行验证，只有验证通过后才会Post数据。</p>
        </div>
         
    </div>
</div>

<div class="footer">
    <div class="wraper">
        <p class="fl">Copyright &copy; <a href="http://www.eloocor.com" target="_blank">易罗客</a></p>
        <p class="fr"><a href="http://www.rjboy.cn" target="_blank">瑞金佬的前端路</a><b> | </b><a href="http://validform.rjboy.cn">Validform</a><b> | </b><a href="http://www.rjboy.cn/?p=789" target="_blank">hScrollpane</a><b> | </b><a href="http://www.rjboy.cn/?p=708" target="_blank">Xslider</a></p>
    </div>
</div>

<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/js/Validform_v5.3.2_min.js"></script>

<script type="text/javascript">
$(function(){
	//$(".registerform").Validform();  //就这一行代码！;
		
	$(".registerform").Validform({
		tiptype:2
	});
})
</script>
</body>
</html>