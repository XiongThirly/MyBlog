package com.myblog.filter;

import java.io.IOException;
import java.io.PrintWriter; 
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.filter.OncePerRequestFilter;
 

public class loginFilter extends OncePerRequestFilter {
     
    @Override
    protected void doFilterInternal(HttpServletRequest request,
            HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException { 
        String[] notFilter = new String[] { "Login.jsp","Error.jsp", "Success.jsp","Show","login", "Update", "Delete", "Insert", "Edit", "GetList", "UpdateAll"};   
        String uri = request.getRequestURI();    
        if (uri.indexOf("UsersLogin") != -1) {          
            boolean doFilter = true;
            for (String s : notFilter) {
                if (uri.indexOf(s) != -1) {                
                    doFilter = false;
                    break;
                }
            }
            if (doFilter) {           
               //System.out.println("filter error");
               response.sendRedirect("Error.jsp");
            } else {   
            	//System.out.println("filter success");
                filterChain.doFilter(request, response);
            }
        } else {         
            filterChain.doFilter(request, response);
        }
    }
 
}