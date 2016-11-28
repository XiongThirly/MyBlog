package com.myblog.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myblog.page.SysContent;

/**
 * Session过滤器,将所有的请求保存
 * 
 */
public class SessionValidateFilter implements Filter{
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {		
		 SysContent.setRequest((HttpServletRequest) request);
		 SysContent.setResponse((HttpServletResponse) response);
		 chain.doFilter(request, response); 
	}

	@Override
	public void destroy() {
	}
}

