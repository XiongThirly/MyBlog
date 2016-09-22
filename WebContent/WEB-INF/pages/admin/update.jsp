<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/static/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/static/Validform/Validform_v5.3.2_min.js"></script>

<html>

<script type="text/javascript">
	function BtnClick() {

		var d = new Date();
		var time = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
		var title = $("#title").val();
		var content = UE.getEditor('editor').getContent();
		var type = $("#type").val();
		var abstracts = $("#abstracts").val();
		var flag=$("#flag").val();
		var contextid = $("#contextid").val();

		

	

			$.ajax({

				data : {
					"contextid":contextid,
					"time" : time,
					"title" : title,
					"content" : content,
					"type" : type,
					"abstracts" : abstracts,
					"flag":flag
				},
				type : "POST",
				dataType : 'json',
				url : "../admin/updates",

				success : function(data) {
					if (data["tips"] == 1) {
						location = "design?currentpage=1"
						alert("发布成功")
					} else {
						alert("抱歉发表失败")
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
<meta charset="UTF-8">

</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<!--/sidebar-->
	<div class="main-wrap">

		<div class="crumb-wrap">
			<div class="crumb-list">
				<i class="icon-font"></i><a href="design?currentpage=1">首页</a><span
					class="crumb-step">&gt;</span><a class="crumb-name"
					href="/jscss/admin/design/">作品管理</a><span class="crumb-step">&gt;</span><span>修改</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">

				<table class="insert-tab" width="100%">
					<tbody>

						<tr>
							<th width="120"><i class="require-red">*</i>分类：</th>
							<td>${context.type  }</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>标题：</th>
							<td><input class="common-text required" id="title"
								name="title" size="50" value="${context.title }" type="text">
							</td>
						</tr>
						<tr>
							<th>作者：</th>
							<td><input class="common-text" name="author" size="50"
								value="Thirly" type="text"></td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>摘要：</th>
							<td><textarea name="abstracts" class="common-textarea"
									id="abstracts" cols="30" style="width: 98%;" rows="2">${context.abstracts }</textarea></td>
						</tr>
						<tr>
							<th>内容：</th>
							<script id="container" name="content" type="text/plain">
   
                       </script>
							<script id="editor" type="text/plain"
								style="width:900px;height:400px;"></script>
							<!-- 配置文件 -->
							<script type="text/javascript" charset="utf-8"
								src="${pageContext.request.contextPath }/static/ueditor.config.js"></script>
							<script type="text/javascript" charset="utf-8"
								src="${pageContext.request.contextPath }/static/ueditor.all.min.js">
								
							</script>
							<!-- 实例化编辑器 -->
							<script type="text/javascript">
								var editor = UE.getEditor('editor');

								editor.addListener("ready", function() {
									var content = $("#content").val();
									// editor准备好之后才可以使用
									editor.setContent(content);

								});
							</script>
						</tr>
						<tr>
							<th></th>
							<td><input class="btn btn-primary btn6 mr10" value="提交"
								type="submit" onclick="BtnClick()"> <input
								class="btn btn6" onclick="history.go(-1)" value="返回"
								type="button"></td>
						</tr>

					</tbody>
				</table>

			</div>
		</div>

	</div>
	<!--/main-->
	</div><div style="display:none;">
<textarea name="content" 
									id="content" cols="30" style="width: 98%;" rows="40">${context.content }</textarea>
									<input type="text"  value="${context.flag }" id="flag"/>
           <input type="text"  value="${context.contextid  }" id="contextid"/>			
             <input type="text"  value="${context.type  }" id="type"/>		
        		
									</div>
		   				
</body>
</html>