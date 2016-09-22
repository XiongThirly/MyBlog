package com.myblog.page;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class pageAspect implements java.io.Serializable {
	
	    private HttpServletRequest request;
	    private Logger logger = Logger.getLogger(this.getClass());
	    /**
	     * 定义Pointcut，Pointcut的名称，此方法不能有返回值，该方法只是一个标示
	     */
	    @Pointcut("@annotation(com.myblog.page.OperationPage)")
	    public void controllerAspect()
	    {
	       
	    }
	    @Before("controllerAspect()")
	    public void doBefore(JoinPoint joinPoint)
	    {
	       logger.info("=====>清理setAttribute(listStr)中的值,初始化页脚");
	       
	     HttpServletRequest request =SysContent.getRequest();
	     
	 //    request.setAttribute("currentpage", 1);
	      
	    }
}
