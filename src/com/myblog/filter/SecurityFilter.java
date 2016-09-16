package com.myblog.filter;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

 

public class SecurityFilter extends HandlerInterceptorAdapter  {
    	
    
    	 
        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
            
        
            HttpSession session = request.getSession();
            String user = (String) session.getAttribute("userName");
            String url = request.getRequestURL().toString();
            
            
            Object porn= request.getAttribute("porn");
            System.out.println(porn);
            if(!("thirly".equals(porn))){
         	   porn=null;
            }
            System.out.println(url);
            System.out.println(porn);
            if(url.indexOf("register")>0&&porn==null){
              	request.getRequestDispatcher("/NoGrant.jsp").forward(request, response);
             	
             System.out.println("ok");
            }
                if (user==null&&url.indexOf("editor")>0) {
                	
            	request.getRequestDispatcher("/pages/login").forward(request, response);
            	System.out.println("ok");
            return true;
    
            }
          return true;
        }}