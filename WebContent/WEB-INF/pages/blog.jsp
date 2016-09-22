<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
#123 {
	display: none;
}

#pageNum {
	display: none;
}
</style>
<html lang="cn" dir="ltr" class="no-js">

<head>
<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
<meta name="keywords" content="">
<meta name="description" content="">
<title>全部文章</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/css/pageGroup.css" />

</head>

<body>
	<!--  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/js/jquery.js"></script>

	<jsp:include page="UI.jsp" />
	<div class="container-fluid main-container" id="main-container">

		<div class="row">
			<div class="col-md-12 top-title">
				<h2 class="page-title">博客文章</h2>
			</div>
		</div>
		<c:forEach var="context"  items="${requestScope.pagebean.page_list}">
			<div class="row">
				<div class="col-md-12 post-container">
					<h2 class="post-title">
						<a href="content?title=${context.contextid}" title="">${context.title}</a>
					</h2>
					<div class="meta-box">
						<span class="m-post-date"> <i class="fa fa-calendar-o">
						</i> ${context.time}
						</span>

					</div>
					<div class="post-content">${context.abstracts }</div>
					<div class="meta-box">
						<span class="cat-links"> <i class="fa fa-navicon"> </i> <b>
								分类: </b> <a href="#"> ${context.type } </a>
						</span> <span class="tag-links"> <i class="fa fa-tags"> </i> <b>
								作者: </b> <a href="#" rel="tag"> Thirly </a>
						</span>
					</div>
				</div>
			</div>
		</c:forEach>

		<!--分页进入第二页，一页多少可分配-->
		<div id="pageGro" class="cb">



			<c:if test="${requestScope.pagebean.current_page == '1' }">
				<div class="pageUp">上一页</div>
			</c:if>
			<c:if test="${requestScope.pagebean.current_page != '1' }">

				<div class="pageUp">
					<a class="previousPage"
						href="${ pageContext.request.contextPath }/pages/pageBlog?currentpage=${requestScope.pagebean.current_page-1}">上一页</a>
				</div>
			</c:if>
				<div class="pageList">
			<ul>
				<c:forEach begin="1" end="${requestScope.pagebean.total_page }"
					var="i">
					<c:if test="${requestScope.pagebean.current_page == i}">
					
							<li>${i}</li>
						
					</c:if>
					<c:if test="${requestScope.pagebean.current_page != i}">
					<div class="pageList">
					<li>	<a
							href="${ pageContext.request.contextPath }/pages/pageBlog?currentpage=${i}">
							${i}</a></li>
								</div>
					</c:if>
				</c:forEach>
			</ul>
			</div>
			<c:if
				test="${requestScope.pagebean.current_page==requestScope.pagebean.total_page }">
				<div class="pageDown">下一页</div>

			</c:if>
			<c:if
				test="${requestScope.pagebean.current_page != requestScope.pagebean.total_page }">
				<div class="pageDown">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/pages/pageBlog?currentpage=${requestScope.pagebean.current_page+1}">下一页</a>
				</div>

			</c:if>

		</div>
	
	<div class="row post-pagination">
		<div class="col-md-12">
			<p>
				<a href="" class="btn btn-primary btn-sm"> <span
					class="glyphicon glyphicon-refresh"> </span> <span> 浏览之前的文章
				</span>
				</a>
			</p>
		</div>
	</div>
	<!--评论内容-->
	<div class="row page-comments-container">
		<div class="col-md-12"></div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
	</div>
	<jsp:include page="head.jsp" />

</body>

</html>