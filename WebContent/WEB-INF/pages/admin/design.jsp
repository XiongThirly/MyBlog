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

     
    	//获取选中选项的值
    	$(".batchDel").click(function(){
    		var valArr = new Array;
            $('input[name="checkbox"]:checked').each(function(i){
    			valArr[i] = $(this).val();
    			
    			
            });
            
            var val = valArr.join(',');
            

            
            $.ajax({  
        		
                data:{"Arr":val}, 
                type:"POST",  
                dataType: 'json',  
                url:"../admin/BatchDelete",  
                
                success:function(data){        	
                   if(data["Arrs"] == 1)  {
                	location="../admin/design?currentpage=1" 
                   alert("删除成功")
                    }
                   else{
                	 alert("抱歉删除失败")
                   }
                },
                error:function(){
            
                }
                });   
        });
    }); 
 
    </script>
</head>
<body>
 
  

    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="design?currentpage=1">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">作品管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="search.do" method="get">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="type" id="type">
                                    <option value="全部">全部</option>
                                     
                                    <option value="J2E框架">J2E框架</option><option value="编程语言">编程语言</option>
                                    <option value="数据库">数据库</option><option value="移动开发">移动开发 </option>
                                    <option value="其它">其它 </option>
                                </select>
                            </td>
                            <th width="70">关键字:</th>
                            <td><input class="common-text" placeholder="关键字" name="title" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="insert"><i class="icon-font"></i>新增作品</a>
                        <a class="batchDel" href=""   ><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
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
                          <c:forEach var="list" items="${requestScope.list}"  varStatus="status">
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
                                <a class="link-update" href="alter?id=${list.contextid }">修改</a>
                                <a class="link-del" href="delete?id=${list.contextid }">删除</a>
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
						href="${ pageContext.request.contextPath }/pages/admin/design?currentpage=${requestScope.pagebean.current_page-1}">上一页</a>
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
							href="${ pageContext.request.contextPath }/pages/admin/design?currentpage=${i}">
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
						href="${ pageContext.request.contextPath }/pages/admin/design?currentpage=${requestScope.pagebean.current_page+1}">下一页</a>
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