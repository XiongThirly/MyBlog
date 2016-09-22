<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <footer>
        <!--版权信息-->
        <div class="copyright">
            Copyright Thirly ©2016 All rights reserved 鄂ICP备16018438&nbsp;&nbsp;
            <a href="www.ybsat.com">
                Theme leaves by Ybsat
            </a>
        </div>
    </footer>
</div>
<script src="${pageContext.request.contextPath }/static/assets/js/bootstrap.min.js"></script>
<script>
    /*banner 初始化*/
    $(window).load(function(){
      $('#slider').nivoSlider({
        effect: 'random',        // 过渡效果
        controlNav: false,       // 是否显示图片导航控制按钮（,2,3... ）
        pauseOnHover: true,      // 鼠标县浮时是否停止动画
        manualAdvance: false,    // 是否手动切换 
        animSpeed: 100,          // 图片过渡时间   
        pauseTime: 2000,         // 图片显示时间
        pauseOnHover: false,
        manualAdvance: false,
      });
    });
    $(document).ready(function(){
      $('body').show();
      $('.version').text(NProgress.version);
      NProgress.start();
      setTimeout(function() { NProgress.done(); $('.fade').removeClass('out'); }, 1000);
      var style2 = $(".style2")
      style2.click(function(){
        
      })
    })
    
</script>
</body>
</html>