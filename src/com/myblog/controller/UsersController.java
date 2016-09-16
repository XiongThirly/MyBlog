package com.myblog.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.io.IOException;  
import java.util.ArrayList;
import java.util.List ; 
import java.util.Map;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;  
//import javax.servlet.http.HttpServletResponse; 
import  java.sql. * ;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;
import com.myblog.service.*;
import com.myblog.entities.*;

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
   * @return  map
   * @throws IOException
   */
	@RequestMapping(value="/loginin",method=RequestMethod.POST)
	@ResponseBody
	 public Map<String,String> login(user user,HttpServletRequest request) throws IOException{
	  Map<String, String> map = new HashMap<String, String>();  	
	
		HttpSession session = request.getSession();
		session.setAttribute("user", user); 	
		session.setAttribute("userName", user.getName()); 	
		session.setAttribute("userImg", user.getImg()); 	
		try{
	        user = userService.getUserInfo(user);
	       
	        if(user != null){
				map.put("message", "1");
			
			}
	        }
		catch (Exception e) {
			e.printStackTrace();				
		}		
	
	    return map;
	    } 
	

	
	@RequestMapping(value="/Count",method=RequestMethod.POST)
	@ResponseBody
	public int Count() throws IOException{ 
		int listStr = 0;
        try {
        	listStr = userService.getCount();   
			} catch (Exception e) {
				e.printStackTrace();				
			}	                    
      //System.out.println(listStr);
     return listStr;
     }

	
	@RequestMapping(value="/registerOn",method=RequestMethod.POST)
	@ResponseBody
	public boolean Insert(user user) throws IOException{                      				
	    boolean result = false;
	    try {
	       	 userService.insert(user); 
	       	 result = true;
				} catch (Exception e) {
					e.printStackTrace();				
				} 
     return result;
	}
	

	

}
