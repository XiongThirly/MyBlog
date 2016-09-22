package com.myblog.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myblog.entities.comments;
import com.myblog.service.CommentsService;
import com.myblog.tools.PageBean;

@Controller
@RequestMapping("/pages")
public class CommentsController {
	
	@Autowired
	private CommentsService comment_service;
	
	
	@RequestMapping(value = "/insertComments", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Integer> insertComments(comments comments) throws Exception{
		

		
		Map<String,Integer> map = new HashMap<>();
		
		comment_service.insert(comments);
		
		map.put("comments", 1);
		

		
		return map;
		
	}
	
	@RequestMapping("/selectComments")
	
	public ModelAndView selectComment() throws Exception{
		
		ModelAndView mav = new ModelAndView("comment");
		
		List<comments> list_comments = comment_service.selectComment();
		
		mav.addObject(list_comments);
		
		return mav;
		
	}

	@RequestMapping("admin/deleteComments")

	public String deleteComments(@RequestParam(value="commentsid") Integer commentsid)
			throws Exception{
		
		
		
		comment_service.deleteByPrimaryKey(commentsid);
		
		
		return "admin/comments?currentpage=1";
		
	}
	@RequestMapping("admin/pageComments")
	
	public ModelAndView getPageContext(@RequestParam(value="currentpage") Integer currentpage) throws Exception {

		ModelAndView mav = new ModelAndView("admin/comments");

		PageBean pagebean = comment_service.FindPage(currentpage, 5);
	
		mav.addObject("listsr", pagebean.getPage_list());
		
		mav.addObject("pagebean", pagebean);

		return mav;
	}
}
