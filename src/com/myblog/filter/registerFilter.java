package com.myblog.filter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class registerFilter extends HandlerInterceptorAdapter  {

	/**
	 *    @author Thirly
	 *    @return boolean
	 *     控制用户注册的权限
	 * 
	 */
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response1, Object handler) throws Exception {
           
           String porn=(String) request.getAttribute("porn");
         
           String url = request.getRequestURL().toString();
           
        
           
           if("940904".equals(porn)){
        	   porn=null;
           }
           
           if(url.indexOf("register")>0&&porn==null){
          
           	request.getRequestDispatcher("/NoGrant.jsp").forward(request, response1);
            	
            
           }
           
           return true;
         
       }
}
