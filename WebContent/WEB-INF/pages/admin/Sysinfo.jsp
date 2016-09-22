<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<script type="text/javascript" language="javascript">
function show_cur_times(){
//获取当前日期
 var date_time = new Date();
 //定义星期
 var week;
 //switch判断
 switch (date_time.getDay()){
	 case 1: week="星期一"; break;
	 case 2: week="星期二"; break;
	 case 3: week="星期三"; break;
	 case 4: week="星期四"; break;
	 case 5: week="星期五"; break;
	 case 6: week="星期六"; break;
	 default:week="星期天"; break;
 }
 
 //年
 var year = date_time.getFullYear();
 	//判断小于10，前面补0
   if(year<10){
 	year="0"+year;
 }
 
 //月
 var month = date_time.getMonth()+1;
 	//判断小于10，前面补0
  if(month<10){
	 month="0"+month;
 }
 
 //日
 var day = date_time.getDate();
 	//判断小于10，前面补0
   if(day<10){
 	day="0"+day;
 }
 
 //时
 var hours =date_time.getHours();
 	//判断小于10，前面补0
    if(hours<10){
 	hours="0"+hours;
 }
 
 //分
 var minutes =date_time.getMinutes();
 	//判断小于10，前面补0
    if(minutes<10){
 	minutes="0"+minutes;
 }
 
 //秒
 var seconds=date_time.getSeconds();
 	//判断小于10，前面补0
    if(seconds<10){
 	seconds="0"+seconds;
 }
 
 //拼接年月日时分秒
 var date_str = year+"年"+month+"月"+day+"日 "+hours+":"+minutes+":"+seconds+" "+week;
 
 //显示在id为showtimes的容器里
 document.getElementById("showtimes").innerHTML= date_str;

}
 
 //设置1秒调用一次show_cur_times函数
setInterval("show_cur_times()",100);
</script>
    <meta charset="UTF-8">

</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用博客程序，建博的首选工具。</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="insert"><i class="icon-font">&#xe001;</i>新增作品</a>
                 
                </div>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>系统基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">操作系统</label><span class="res-info">LINUX</span>
                    </li>
                    <li>
                        <label class="res-lab">运行环境</label><span class="res-info">Tomcat/7.0 (linux64) java/1.7.08</span>
                    </li>
                    <li>
                        <label class="res-lab">Tomcat运行方式</label><span class="res-info">Tomcathandler</span>
                    </li>
                    <li>
                        <label class="res-lab">版本</label><span class="res-info">v-1.0.0</span>
                    </li>
                    <li>
                        <label class="res-lab">上传附件限制</label><span class="res-info">2M</span>
                    </li>
                    <li>
                        <label class="res-lab">北京时间</label><span class="res-info"  id="showtimes"></span>
                    </li>
                    <li>
                        <label class="res-lab">服务器域名/IP</label><span class="res-info">123.141.207.12</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info">thirly.cn</span>
                    </li>
                </ul>
            </div>
        </div>
       
    <!--/main-->
</div>
</body>
</html>