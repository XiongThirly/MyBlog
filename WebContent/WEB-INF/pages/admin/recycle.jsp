<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <jsp:include page="top.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/css/pageGroup.css" />
    <script type="text/javascript">
    $(function () {
    	//全选或全不选
    	$(".all").click(function(){   
        	if(this.checked){   
            	$(".result-tab :checkbox").prop("checked", true);  
        	}else{   
    			$(".result-tab :checkbox").prop("checked", false);
        	}   
     	}); 

     
    	
        
        
    }); 
 
    </script>
</head>
<body>
 
  

    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="design?currentpage=1">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">回收站</span></div>
        </div>
    
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                      
                      
                    </div>
                </div>
                <div class="result-content"  id="result-content">
                    <table class="result-tab" width="100%" id="tlist">
                        <tr>
                            <th class="tc" width="5%"><input class="all" name="" id="all" type="checkbox"></th>
                            
                            <th>ID</th>
                            <th>标题</th>
                            <th>审核状态</th>
                            <th>点击</th>
                            <th>发布人</th>
                            <th>更新时间</th>
                            <th>类型</th>
                            <th>操作</th>
                        </tr>
                          <c:forEach var="list" items="${requestScope.list_recycle}"  varStatus="status">
                        <tr>
                            <td class="tc" id=""><ul  id="list"><input name="checkbox" value="${list.contextid }" type="checkbox" id="checkbox"  /></ul></td>
                           
                            <td><c:out value="${status.count}"/></td>
                            <td title="发哥经典"><a target="_blank" href="#" title="发哥经典">${list.title }</a> …
                            </td>
                            <td>0</td>
                            <td>2</td>
                            <td>${list.author }</td>
                            <td>${list.time }</td>
                            <td>${list.type}</td>  
                            <td>
                                <a class="link-update" href="recyclepage?id=${list.contextid }">恢复</a>
                               
                            </td>
                        </tr>
                        </c:forEach>
                  
                    </table>
                   <div id="pageGro" class="cb">



			<c:if test="${requestScope.recycle_pagebean.current_page == '1' }">
				<div class="pageUp">上一页</div>
			</c:if>
			<c:if test="${requestScope.recycle_pagebean.current_page != '1' }">

				<div class="pageUp">
					<a class="previousPage"
						href="${ pageContext.request.contextPath }/pages/admin/recycle?currentpage=${requestScope.pagebean.current_page-1}">上一页</a>
				</div>
			</c:if>
				<div class="pageList">
			<ul>
				<c:forEach begin="1" end="${requestScope.recycle_pagebean.total_page }"
					var="i">
					<c:if test="${requestScope.recycle_pagebean.current_page == i}">
					
							<li>${i}</li>
						
					</c:if>
					<c:if test="${requestScope.recycle_pagebean.current_page != i}">
					<div class="pageList">
					<li>	<a
							href="${ pageContext.request.contextPath }/pages/admin/recycle?currentpage=${i}">
							${i}</a></li>
								</div>
					</c:if>
				</c:forEach>
			</ul>
			</div>
			<c:if
				test="${requestScope.recycle_pagebean.current_page==requestScope.recycle_pagebean.total_page }">
				<div class="pageDown">下一页</div>

			</c:if>
			<c:if
				test="${requestScope.recycle_pagebean.current_page != requestScope.recycle_pagebean.total_page }">
				<div class="pageDown">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/pages/admin/recycle?currentpage=${requestScope.recycle_pagebean.current_page+1}">下一页</a>
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