<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>新建博客</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
   <script src="/MyBlog/static/js/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/Validform/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
function BtnClick(){
	 var error = $('.Error');
	 var error1 = $('.Error1');
	 var error2= $('.Error2');
	 var error3 = $('.Error3');
	 
	var d = new Date();
	var time = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
	var title = $("#title").val();
	var content = UE.getEditor('editor').getContent();
	var type =  $('#we input[name="type"]:checked ').val();
	var abstracts  = $("#abstracts").val();
	

	
	if(title == '' ||content == '' || type=='') {
		  error.html('<font color="red">*标题不能为空!</font>');
		  error1.html('<font color="red">*请填写内容！</font>');
		  error2.html('<font color="red">*请选择一个分类！</font>');
		  error3.html('<font color="red">*摘要不能为空!</font>');
	
		  return false;
		 }  else {
	

	$.ajax({  
		
        data:{"time":time,"title":title,"content":content,"type":type,"abstracts":abstracts}, 
        type:"POST",  
        dataType: 'json',  
        url:"inputFile",  
        
        success:function(data){        	
           if(data["mag"] == "2")  {
        	location=location 
           alert("发布成功")
            }
           else{
        	 alert("抱歉发表失败")
           }
        },
        error:function(){
        	alert("出现错误");
        }
        });   
	  return true;
			 }

}

</script>
<style> 
.fonts{ font-family:"楷体"; font-size:26px; font-style:italic;}

textarea
{
width:100%;
height:100%;
}
span{
    color:#dcdcdc;
	font-weight:bold;
}
 

body{ text-align:left;} 
.div{ margin:0 auto; width:900px; height:1000px; border:0px solid #dcdcdc} 
.div1{ margin:0 auto; width:900px; height:150px; border:0px solid #dcdcdc} 
.div2{ margin:0 auto; width:900px; height:400px; border:1px solid #dcdcdc} 
.div3{ margin:0 auto; width:900px; height:100px; border:1px solid #dcdcdc} 



</style> 
</head> 
<body style="background-image:url(../static/assets/img/wave.png); background-repeat:repeat-y;"></body>
<div class="div"> 
<div class="div1">
<div style=" width:150px; height:150px;float:left">
	<img src="${sessionScope.userImg}"/></div>
	<div style="float:left;width:600px" class="fonts"><p>${sessionScope.userName}的个人博客</p>
	<a href="${pageContext.request.contextPath }/pages/personal">个人中心</a>
	</div>
	
</div>
<hr>

<span>文章标题:</span><span class="Error"></span>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<input type="text" style="width:900px;" id="title" autocomplete="off"/>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<span>文章内容:</span><span class="Error1"></span>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<div class="div2">
   <!-- 加载编辑器的容器 -->
    <script id="container" name="content" type="text/plain">
   
    </script>
    <script id="editor" type="text/plain" style="width:900px;height:400px;"></script>
    <!-- 配置文件 -->
   <script type="text/javascript" charset="utf-8" src="../static/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/ueditor.all.min.js"> </script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
    var editor = new UE.ui.Editor({initialFrameHeight:400,initialFrameWidth:900});
        var editor  = UE.getEditor('editor');
    </script>
</div>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<span>文章分类:</span><span class="Error2"></span>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<div id="we">
<label><input name="type" type="radio" value="移动开发" />移动开发 </label> 
<label><input name="type" type="radio" value="Web前端" />Web前端 </label> 
<label><input name="type" type="radio" value="J2E框架" />J2E框架 </label> 
<label><input name="type" type="radio" value="编程语言" />编程语言</label> 
<label><input name="type" type="radio" value="数据库 " />数据库 </label> 

</div>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<span>摘要:</span> </span><span class="Error3"></span>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
<div class="div3">
	<textarea cols="50" rows="5" id="abstracts" autocomplete="off"   ></textarea>

</div>
<br>
<button id="submit" type="submit" onclick="BtnClick()">提交</button><br>
</div> 


</div> 

</body> 

</html>