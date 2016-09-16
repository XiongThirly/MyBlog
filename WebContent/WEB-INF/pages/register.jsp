<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- <script src="/MyBlog/static/js/jquery.min.js"></script>

<script type="text/javascript">
 

function BtnClick(){
	var name = $("#name").val();
	var pw = $("#pw").val();
	var num=$("#num").val()
	var email=$("#email").val()
	alert(pw)
	$.ajax({  
        data:{"name":name, "password":pw,"num":num,"email":email}, 
        type:"POST",  
        dataType: 'json',  
        url:"grantOn.do",  
        
        success:function(data){        	
           if(data["message"] == "3")  {
            location.href='index';
            }
           else{
        	   location.href='Error.jsp';
           }
        },
        error:function(){
        	alert("error");
        }
        });   
	

}
		
</script> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="/MyBlog/static/css/style.css" />
<body>

<div class="register-container">

	
	<div class="connect">
		
	</div>
	

		<div>
			<input type="text" name="username" id="name" class="username" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" id="pw" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
	
		<div>
			<input type="text" name="phone_number" class="phone_number"  id="num" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="email" name="email" id="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
		</div>
<form action="grantOn.jsp"  method="get">
		<button id="submit" type="submit" >注 册</button><br>
	</form>
	<a href="login">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>


<script src="/MyBlog/static/js/jquery.min.js"></script>
<script src="/MyBlog/static/js/common.js"></script>
<!--背景图片自动更换-->
<script src="/MyBlog/static/js/supersized.3.2.7.min.js"></script>
<script src="/MyBlog/static/js/supersized-init.js"></script>
<!--表单验证-->
<script src="/MyBlog/static/js/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>