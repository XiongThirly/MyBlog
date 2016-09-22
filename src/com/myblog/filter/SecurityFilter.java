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
            
            
    
            if (user!=null&&url.indexOf("login")>0) {
            	
            	//request.getRequestDispatcher("admin/design.do").forward(request, response);
            	response.sendRedirect("admin/design");
            	
                return true;

        }
      
                if (user==null&&url.indexOf("admin")>0) {
                	
                	request.getRequestDispatcher("/NoGrant.jsp").forward(request, response);
            
            return true;
    
            }
          return true;
        }}