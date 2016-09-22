// javaScript Document


j(function(){
	//根据总页数判断，如果小于5页，则显示所有页数，如果大于5页，则显示5页。根据当前点击的页数生成
	var Maxnum=j("#123").val();
	var after =  j("#pageNum").val();
    alert(after)
	var num=Maxnum/3;
	if(Maxnum%3!=0&&Maxnum<3)num++;
	var pageCount =num;
	//生成分页按钮
	if(pageCount>5){
		page_icon(1,5,after);
	}else{
		page_icon(1,pageCount,after);
	}
	
	//点击分页按钮触发
	j("#pageGro li").live("click",function(){
		if(pageCount > 1){
			var pageNum = parseInt(j(this).html());//获取当前页数
			pageGroup(pageNum,pageCount);
		}else{
			j(this).addClass("on");
			j(this).siblings("li").removeClass("on");
		}
	});
	
	//点击上一页触发
	j("#pageGro .pageUp").click(function(){
		if(pageCount > 5){
			var pageNum = parseInt(j("#pageGro li.on").html());//获取当前页
			pageUp(pageNum,pageCount);
			var startpage=pageNum-1;
			
		}else{
			var index = j("#pageGro ul li.on").index();//获取当前页
			var startpage=index;
			
			if(index > 0){
				j("#pageGro li").removeClass("on");//清除所有选中
				j("#pageGro ul li").eq(index-1).addClass("on");//选中上一页
				
			}
			
		}
		   j.ajax({  
		        data:{"startPage":startpage, "endPage":endpage}, 
		        type:"POST",  
		        dataType: 'json',  
		        url:"pageBlog",  
		        
		        success:function(data){        	
		           if(data["msg"] == 1)  {
		        	   location.href='blog';
		        	  
		            }
		           else{
		        	 	alert("Expection")
		           }
		        },
		        error:function(){
		           	alert("error")
		        }
		        });   
	});
	
	//点击下一页触发
	j("#pageGro .pageDown").click(function(){
		if(pageCount > 5){
			var pageNum = parseInt(j("#pageGro li.on").html());//获取当前页
			pageDown(pageNum,pageCount);
			var startpage=pageNum+1;
			
		//	alert(endpage)
		}else{
			var index = j("#pageGro ul li.on").index();//获取当前页
			var startpage=index+2;
		
			if(index+1 < pageCount){
				j("#pageGro li").removeClass("on");//清除所有选中
				j("#pageGro ul li").eq(index-1).addClass("on");//选中上一页
			}
		}
		   j.ajax({  
        data:{"startPage":startpage}, 
        type:"POST",  
        dataType: 'json',  
        url:"pageBlog",  
        
        success:function(data){        	
           if(data["msg"] == 1)  {
        	    
        	   location.href='blog';
	        	  
        	  

            }
           else{
        	   alert("Expection")
           }
        },
        error:function(){
        	alert("error")
        }
        });   
		
	});
});

//点击跳转页面
function pageGroup(pageNum,pageCount){
	
	var startpage=pageNum;
	switch(pageNum){
		case 1:
			page_icon(1,pageCount,0);
		break;
		case 2:
			page_icon(1,pageCount,1);
		break;
		case pageCount-1:
			page_icon(pageCount-4,pageCount,3);
		
		break;
		case pageCount:
			page_icon(pageCount-4,pageCount,4);
		break;
		default:
			page_icon(pageNum-2,pageNum+2,2);
		break;
	}
	   j.ajax({  
	        data:{"startPage":startpage}, 
	        type:"POST",  
	        dataType: 'json',  
	        url:"pageBlog",  
	        
	        success:function(data){        	
	           if(data["msg"] == 1)  {
	        	    
	        	   location.href='blog';
	        

	            }
	           else{
	        	   alert("Expection")
	           }
	        },
	        error:function(){
	        	alert("error")
	        }
	        });  
}

//根据当前选中页生成页面点击按钮
function page_icon(page,count,eq){
	var ul_html = "";
	for(var i=page; i<=count; i++){
		ul_html += "<li>"+i+"</li>";
	}
	j("#pageGro ul").html(ul_html);
	j("#pageGro ul li").eq(eq).addClass("on");
}

//上一页
function pageUp(pageNum,pageCount){
	switch(pageNum){
		case 1:
		break;
		case 2:
			page_icon(1,5,0);
		break;
		case pageCount-1:
			page_icon(pageCount-4,pageCount,2);
		break;
		case pageCount:
			page_icon(pageCount-4,pageCount,3);
		break;
		default:
			page_icon(pageNum-2,pageNum+2,1);
		break;
	}
}

//下一页
function pageDown(pageNum,pageCount){
	switch(pageNum){
		case 1:
			page_icon(1,5,1);
		break;
		case 2:
			page_icon(1,5,2);
		break;
		case pageCount-1:
			page_icon(pageCount-4,pageCount,4);
		break;
		case pageCount:
		break;
		default:
			page_icon(pageNum-2,pageNum+2,3);
		break;
	}
}