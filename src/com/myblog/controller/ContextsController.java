package com.myblog.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myblog.entities.context;
import com.myblog.entities.user;
import com.myblog.service.ContextService;
import com.myblog.tools.InputFile;
import com.myblog.tools.OutputFile;

@Controller
@RequestMapping("/pages")
public class ContextsController {
	
	  List<context> listStr = new ArrayList<context>();

	@Autowired
	private ContextService contextService;
	
/*@Autowired
 private InputFile inputfile;
	
	@Autowired
	private OutputFile outputfile;*/
	
	@RequestMapping("/inputFile")
	@ResponseBody
	public Map insert(context context,HttpServletRequest request){
	
			
		HttpSession session = request.getSession();
		user author = (user) session.getAttribute("user");
		context.setAuthor(author.getName());
	
		try {
			int row=contextService.getCount();
			String contents=context.getContent();
		    //   String address =	inputfile.inputFile(row, contents);
		   // context.setContent(address);
			context.setContextid(row+1);
		
			contextService.insert(context);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		  Map<String, String> map = new HashMap<String, String>();  
		  map.put("mag", "2");
		return map;
	}
	
	@RequestMapping("/index")

	public ModelAndView  getContext() throws Exception{
		
		 List<context> listStr = new ArrayList<context>();
	
			listStr = contextService.getContextInfo();
		
			ModelAndView mav=new ModelAndView("index");
		 	mav.addObject("listStr",listStr);

		 	return mav;
	}
	@RequestMapping("/blog")

	public ModelAndView  getAllcontext() throws Exception{
		
		 List<context> listStr = new ArrayList<context>();
	
			listStr = contextService.getAllContextInfo();
		   
			ModelAndView mav=new ModelAndView("blog");
		 	mav.addObject("listStr",listStr);

		 	return mav;
	}
	
	@RequestMapping("/content")

	public ModelAndView  getContent( HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		
			String title=request.getParameter("title");
			title = new String(title.getBytes("iso8859-1"),"utf-8");
			context content= contextService.getContent(title);
		   System.out.println(title);
			ModelAndView mav=new ModelAndView("content");
		 	mav.addObject("content",content);

		 	return mav;
	}
}
