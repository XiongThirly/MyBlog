<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登录</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css" />
<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>

<script type="text/javascript">
 

function BtnClick(){
	var name = $("#name").val();
	var pw = $("#pw").val();
	
	$.ajax({  
        data:{"name":name, "password":pw}, 
        type:"POST",  
        dataType: 'json',  
        url:"loginin",  
        
        success:function(data){        	
           if(data["message"] == "1")  {
            location.href='admin/design?currentpage=1';
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
		
</script>
<body>

<div class="login-container">
	<h1>用户登录</h1>
	
	<div class="connect">
		
	</div>
	
	
		<div>
			<input type="text" name="name" class="name" id="name"  placeholder="用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="pw" class="pw" id="pw"   placeholder="密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="submit" onclick="BtnClick()">登 陆</button><br>
	

	

</div>


<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/static/js/common.js"></script>
<!--背景图片自动更换-->
<script src="${pageContext.request.contextPath }/static/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath }/static/js/supersized-init.js"></script>
<!--表单验证-->
<script src="${pageContext.request.contextPath }/static/js/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>