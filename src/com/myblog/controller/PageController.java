package com.myblog.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myblog.entities.context;
import com.myblog.entities.user;
import com.myblog.service.UserService;
/**
 * 
 * @author Thirly
 *   设置所有页面的跳转
 */
@Controller
@RequestMapping("/pages")
public class PageController {

	@Autowired
	private UserService userservice;
	
	@RequestMapping({"/about"})
	public String about() {
		return "about";
	}
	@RequestMapping({"/contact"})
	public String contact() {
		return "contact";
	}
	
	@RequestMapping({"/help"})
	public String help() {
		return "help";
	}
	@RequestMapping({"/links"})
	public String links() {
		return "links";
	}
	@RequestMapping({"/register"})
	public String register() {
		return "register";
	}
	@RequestMapping({"/works"})
	public String works() {
		return "works";
	}
	
	@RequestMapping({"/login"})
	public String login() {
		return "login";
	}
	@RequestMapping({"/personal"})
	public String personal() {
		return "personal";
	}
	@RequestMapping({"/editor.do"})
	public ModelAndView  getAllcontext(HttpServletRequest request) throws Exception{
		
		
	
		  user	user = userservice.getuserinfo();
		   
			ModelAndView mav=new ModelAndView("editor");
			HttpSession session = request.getSession();
			session.setAttribute("userImg", user.getImg());
		 	mav.addObject("user",user);

		 	return mav;
	}
}
