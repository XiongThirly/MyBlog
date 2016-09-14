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
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	 public Map<String,String> login(user user,HttpServletRequest request) throws IOException{
	  Map<String, String> map = new HashMap<String, String>();  	
	
		HttpSession session = request.getSession();
		session.setAttribute("user", user); 	
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
	
	@RequestMapping(value="/Show",method=RequestMethod.POST)
	@ResponseBody
	public List<user> Show() throws IOException{                
        List<user> listStr = new ArrayList<user>();
        try {
        	listStr = userService.getList();   
			} catch (Exception e) {
				e.printStackTrace();				
			}	                    
      
     return listStr;
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
	
	@RequestMapping(value="/Page",method=RequestMethod.POST)
	@ResponseBody
	public List<user> Page(String startIndex) throws IOException{
		int start = Integer.parseInt(startIndex);
		//int size = Integer.parseInt(sizeCount);
		//System.out.println(start);		
        List<user> listStr = new ArrayList<user>();
       try {
        	listStr = userService.getListCount(start);   
			} catch (Exception e) {
				e.printStackTrace();				
			}	                    
      //System.out.println(start+size);
     return listStr;
     }
	
	@RequestMapping(value="/Update",method=RequestMethod.POST)
	@ResponseBody
	public boolean Update(user user) throws IOException{                      				
	    boolean result = false;
	    try {
        	 userService.update(user); 
        	 result = true;
			} catch (Exception e) {
				e.printStackTrace();				
			}                      
     return result;
	}
	
	@RequestMapping(value="/Delete",method=RequestMethod.POST)
	@ResponseBody
	public boolean Delete(int id) throws IOException{                      			
	    boolean result = false;
	    try {
       	 userService.deleteUser(id); 
       	 result = true;
			} catch (Exception e) {
				e.printStackTrace();				
			}                         
     return result;
	}
	
	@RequestMapping(value="/Insert",method=RequestMethod.POST)
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
	
	@RequestMapping(value="/Edit",method=RequestMethod.POST)
	@ResponseBody
	public boolean Edit(HttpSession session) throws IOException{	
		user user1 = (user)session.getAttribute("user");
	    boolean result = false;
	    try {
	       	user1 = userService.getUserInfo(user1); 
	       	if(user1.getFlag() == 1){
	       	 result = false;
	       	 }
	       	else{
	       		result = true;
	       	}
				} catch (Exception e) {
					e.printStackTrace();				
				} 
     return result;
	}
	
	@RequestMapping(value="/GetList",method=RequestMethod.POST)
	@ResponseBody
	public void GetList(user user) throws IOException{ 
		List.add(user);        
	}	
	
	@RequestMapping(value="/UpdateAll",method=RequestMethod.POST)
	@ResponseBody
	public boolean UpdateAll() throws IOException{ 		
	    boolean result = false;
	    try {
	    	//System.out.println(List);
        	 userService.updateAll(List); 
        	 result = true;
			} catch (Exception e) {
				e.printStackTrace();				
			} 
	    List.clear();
     return result;
	}	
}
