package com.myblog.Exception;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.myblog.log.SysLogAspect;
/**
 * 
 * @author Thirly
 *异常统一处理类
 */
public class ExcpetionInterceptor implements HandlerExceptionResolver {  
	  
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,  
            Exception ex) {  
    	
    	final Logger log= Logger.getLogger(SysLogAspect.class);
        Map<String, Object> model = new HashMap<String, Object>();  
        model.put("ex", ex);  
          
        // 根据不同错误转向不同页面  
        if(ex instanceof Exception) {  
        	log.info(ex.getMessage());
            return new ModelAndView("error", model);  
        }else if(ex instanceof NullPointerException) {  
        	log.info(ex.getMessage());
            return new ModelAndView("error", model);  
        } else {  
        	log.info(ex.getMessage());
            return new ModelAndView("error", model);  
        }  
    }  
} 