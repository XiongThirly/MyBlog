<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
   <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style1.css" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/static/css/demo.css" type="text/css" rel="stylesheet" />

</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="design?currentpage=1">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">修改密码</span></div>
        </div>
        <div class="result-wrap">
             <form class="registerform" action="AlterPassword1">
            <table width="100%" style="table-layout:fixed;">
                <tr>
                    <td class="need" style="width:10px;">*</td>
                    <td style="width:70px;">旧密码：</td>
                    <td style="width:205px;"><input type="text" value="" name="name" class="inputxt" ajaxurl="checkPassword.do" datatype="s6-18" sucmsg="密码正确" nullmsg="请输入密码！"errormsg="密码范围在6~16位之间！" /></td>
                    <td><div class="Validform_checktip">密码范围在6~16位之间</div></td>
                </tr>
                <tr>
                    <td class="need">*</td>
                    <td>密码：</td>
                    <td><input type="password" id="pw"name="userpassword" class="inputxt" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！" /></td>
                    <td><div class="Validform_checktip">密码范围在6~16位之间</div></td>
                </tr>
                <tr>
                    <td class="need">*</td>
                    <td>确认密码：</td>
                    <td><input type="password" value="" name="userpassword2" class="inputxt" datatype="*" recheck="userpassword" nullmsg="请再输入一次密码！" errormsg="您两次输入的账号密码不一致！" /></td>
                    <td><div class="Validform_checktip">两次输入密码需一致</div></td>
                </tr>
                <tr>
                    <td class="need"></td>
                    <td></td>
                    <td colspan="2" style="padding:10px 0 18px 0;">
                        <input type="submit"  value="提 交" /> <input type="reset" value="重 置" />
                    </td>
                </tr>
            </table>
        </form>
        </div>

    



<script type="text/javascript" src="${pageContext.request.contextPath }/static//js/Validform_v5.3.2_min.js"></script>

<script type="text/javascript">
$(function(){
	//$(".registerform").Validform();  //就这一行代码！;
		
	$(".registerform").Validform({
		tiptype:2
	});
})
</script>
</body>
</html>