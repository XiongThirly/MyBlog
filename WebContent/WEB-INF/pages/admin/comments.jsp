<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/css/pageGroup.css" />
</head>
<body>
 
  
<jsp:include page="top.jsp"></jsp:include>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="design?currentpage=1">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">留言管理</span></div>
        </div>
   
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                       
                        <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                       
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            
                            <th>ID</th>
                            <th>标题</th>
                          
                            <th>发布人</th>
                            <th>留言时间</th>
                            
                            <th>操作</th>
                        </tr>
                          <c:forEach var="list" items="${requestScope.listsr}"  varStatus="status">
                        <tr>
                            <td class="tc"><input name="id[]" value="59" type="checkbox" id="checkbox"></td>
                            <input type="text"  value="${list.commentsid }" id="123" style="display:none"/>
                            <td><c:out value="${status.count}"/></td>
                            <td title=""><a target="_blank" href="#" title="">${list.title }</a> …
                            </td>
                            
                            
                            <td>${list.name }</td>
                            <td>${list.time }</td>
                        
                            <td>
       
                                <a class="link-del" href="${ pageContext.request.contextPath }/pages/admin/deleteComments?commentsid=${list.commentsid }">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                     
                    </table>
                  <div id="pageGro" class="cb">



			<c:if test="${requestScope.pagebean.current_page == '1' }">
				<div class="pageUp">上一页</div>
			</c:if>
			<c:if test="${requestScope.pagebean.current_page != '1' }">

				<div class="pageUp">
					<a class="previousPage"
						href="${ pageContext.request.contextPath }/pages/admin/pageComments?currentpage=${requestScope.pagebean.current_page-1}">上一页</a>
				</div>
			</c:if>
				<div class="pageList">
			<ul>
				<c:forEach begin="1" end="${requestScope.pagebean.total_page }"
					var="i">
					<c:if test="${requestScope.pagebean.current_page == i}">
					
							<li>${i}</li>
						
					</c:if>
					<c:if test="${ requestScope.pagebean.current_page != i}">
					<div class="pageList">
					<li>	<a
							href="${ pageContext.request.contextPath }/pages/admin/pageComments?currentpage=${i}">
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
						href="${ pageContext.request.contextPath }/pages/admin/pageComments?currentpage=${requestScope.pagebean.current_page+1}">下一页</a>
				</div>

			</c:if>

		</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>

</body>
</html>