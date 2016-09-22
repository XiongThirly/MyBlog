package com.myblog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse; 
import java.sql.*;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;
import com.myblog.service.*;
import com.myblog.tools.UntlMD5;
import com.myblog.entities.*;
import com.myblog.log.OperationLogger;

import javax.annotation.Resource;

@Controller
@RequestMapping("/pages")

public class UsersController {
	private List<user> List = new ArrayList<user>();
	@Autowired
	private UserService userService;
   
	/**
	 * 
	 * @param user
	 * @param 验证登录信息并进行页面跳转
	 * @return map
	 * @throws IOException
	 */
	@OperationLogger(modelName = "user", option = "user login")
	@RequestMapping(value = "/loginin", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> login(user user, HttpServletRequest request) throws IOException {
		Map<String, String> map = new HashMap<String, String>();
		
		String paw=user.getPassword();
		
		HttpSession session = request.getSession();
		
		session.setAttribute("password",paw);
        String pw=UntlMD5.MD5(paw);
        user.setPassword(pw);

		session.setAttribute("loginName", "个人中心");
		System.out.println(session.getAttribute("loginName"));
		session.setAttribute("user", user);
		session.setAttribute("userName", user.getName());
		
		try {
			user = userService.getUserInfo(user);

			if (user != null) {
				map.put("message", "1");

			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return map;
	}

	@RequestMapping(value = "/Count", method = RequestMethod.POST)
	@ResponseBody
	public int Count() throws IOException {
		int listStr = 0;
		try {
			listStr = userService.getCount();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// System.out.println(listStr);
		return listStr;
	}

	/**
	 * 
	 * @param user
	 * @return
	 * @throws IOException
	 *             向数据库中插入用户信息
	 */
	@RequestMapping(value = "/registerOn", method = RequestMethod.POST)
	@ResponseBody
	public boolean Insert(user user) throws IOException {
		boolean result = false;
		try {
			userService.insert(user);
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	@RequestMapping("admin/checkPassword")  
	@ResponseBody  
	public Map<String,Object>  checkUser( String name,String param, HttpServletRequest request){  
	    Map<String,Object> map=new HashMap<String,Object>();  
	   
	    HttpSession session =request.getSession();
	    
	    String pw = (String) session.getAttribute("password");
	  
	    if(param.equals(pw)){  
	        map.put("status", "y");  
	        map.put("info","密码正确！" );  
	    }else{  
	    map.put("status", "n");  
	    map.put("info", "密码错误！");  
	    }  
	    return  map;  
	}  
	
	@RequestMapping("admin/AlterPassword1")
	
	public String alter(HttpServletRequest request,user user) throws Exception {
		
		HttpSession session = request.getSession();
		
		String pwd = request.getParameter("userpassword");
		
		user.setName((String) session.getAttribute("userName"));
	
	
		
		String newpw=UntlMD5.MD5(pwd);
	
		user.setPassword(newpw);
		
		userService.update(user);
       
		return "admin/success";

	}
	
}
