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

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.myblog.entities.context;

import com.myblog.entities.user;
import com.myblog.log.OperationLogger;
import com.myblog.page.OperationPage;
import com.myblog.service.ContextService;
import com.myblog.tools.PageBean;

@Controller
@RequestMapping("/pages")
public class ContextsController  {

	List<context> listStr = new ArrayList<context>();

	@Autowired
	private ContextService contextService;

	/** 
	* @Title: insert 
	* @Description: 博客的插入操作
	* @param：context
	* @return Map
	* @throws Exception
	*/
	@RequestMapping("/inputFile")
	@ResponseBody
	public Map<String, String> insert(context context, HttpServletRequest request) throws Exception {
		Map<String, String> map = new HashMap<>();
		HttpSession session = request.getSession();
		user author = (user) session.getAttribute("user");
		String name = author.getName();

		contextService.insert(context, name);

		map.put("mag", "2");
		return map;
	}
	/** 
	* @Title: Update 
	* @Description: 博客的更新操作
	* @param：context
	* @return Map
	* @throws Throwable
	*/
	@RequestMapping("/admin/updates")
	@ResponseBody
	public Map<String, Object> Update(context context, HttpServletRequest request) throws Throwable {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("tips", 1);

		contextService.updateContent(context);

		return map;

	}

	/** 
	* @Title: getContext 
	* @Description: 获取数据库前3条数据
	* @param：
	* @return ModelAndView 
	* @throws Exception
	*/
	@OperationPage
	@OperationLogger(modelName = "WelcomeController", option = "getWelcome")
	@RequestMapping("/index")

	public ModelAndView getContext(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		if (session.getAttribute("loginName") == null) {
			session.setAttribute("loginName", "登录");
		}
		List<context> listStr = new ArrayList<context>();

		listStr = contextService.getContextInfo();

		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listStr", listStr);

		return mav;
	}



	@RequestMapping("/content")

	/** 
	* @Title: getContent 
	* @Description: 通过博客id获取博客内容
	* @param：title
	* @return ModelAndView 
	* @throws Exception
	*/
	public ModelAndView getContent(@RequestParam(value="title") Integer id,HttpServletRequest request, HttpServletResponse response) 
			throws Exception {

		context content = contextService.getContent(id);

		ModelAndView mav = new ModelAndView("content");
		
		mav.addObject("content", content);

		return mav;
	}

	/** 
	* @Title: getPageContext 
	* @Description: 数据分页功能
	* @param：currentpage
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("/pageBlog")
	
	public ModelAndView getPageContext(@RequestParam(value="currentpage") Integer currentpage) throws Exception {

		ModelAndView mav = new ModelAndView("blog");

		PageBean pagebean = contextService.FindPage(currentpage, 4);
	
		mav.addObject("listsr", pagebean.getPage_list());
		
		mav.addObject("pagebean", pagebean);

		return mav;
	}
	
	/** 
	* @Title: getRecycle 
	* @Description: 查找数据库中的标志量获取被删除的数据
	* @param：currentpage
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("/admin/recycle")
	
	public ModelAndView getRecycle(@RequestParam(value="currentpage") Integer currentpage) throws Exception {

		ModelAndView mav = new ModelAndView("admin/recycle");

		PageBean pagebean = contextService.FindRecyclePage(currentpage, 4);
	
		mav.addObject("list_recycle", pagebean.getPage_list());
		
		mav.addObject("recycle_pagebean", pagebean);
	
		return mav;
	}
	/** 
	* @Title: getRecycle 
	* @Description: 修改数据库中的标志值实现数据的恢复
	* @param：id
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("admin/recyclepage")

	public String RecyclePage(@RequestParam(value="id") Integer id,HttpServletRequest request) throws Exception {

		contextService.deleteContext(0,id);

		return "redirect:/pages/admin/design?currentpage=1";

	}

	/** 
	* @Title: getRecycle 
	* @Description: 修改数据库中的标志值实现数据的删除
	* @param：id
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("admin/delete")

	public String Delete(@RequestParam(value="id") Integer id,HttpServletRequest request) throws Exception {

	

		contextService.deleteContext(1,id);

		return "redirect:/pages/admin/design?currentpage=1";

	}
	/** 
	* @Title: getRecycle 
	* @Description: 修改数据库中的标志值实现数据的批量删除
	* @param：Arr
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("admin/BatchDelete")
	@ResponseBody
	public Map<String, Integer> BatchDelete(HttpServletRequest request, String Arr) throws Exception {
		
		Map<String,Integer> map = new HashMap<>();
		
		

		String[] _list = Arr.split(",");//将字符串转换为字符串数组

		int[] _listNew = new int[_list.length];//转换为int数组

		for (int i = 0; _list.length > i; i++) {

			_listNew[i] = Integer.parseInt(_list[i]);
			
			System.out.println(_listNew[i]);

		}
		contextService.BatchDelete(_listNew);
		
		map.put("Arrs", 1);
		
		return map;

	}
	/** 
	* @Title: alter 
	* @Description: 由对应id修改数据库中的内容
	* @param：id
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("admin/alter")

	public ModelAndView alter(@RequestParam(value="id") Integer id,HttpServletRequest request) throws Exception {

		context context = contextService.getContextById(id);

		ModelAndView mav = new ModelAndView("/admin/update");

		mav.addObject("context", context);

		return mav;

	}

	/** 
	* @Title: alter 
	* @Description: 由关键字查找数据库中的内容
	* @param：type,title
	* @return ModelAndView 
	* @throws Exception
	*/
	@RequestMapping("admin/search")

	public String search(@RequestParam(value="type") String type,@RequestParam(value="title") String title,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();

		List<context> SearchList = new ArrayList<context>();


		if ("全部".equals(type)) {

			SearchList = contextService.getAllContextInfo();

			session.setAttribute("list", SearchList);

		} else {

			SearchList = contextService.search(type, title);

			session.setAttribute("list", SearchList);

		}

		return "admin/design";

	}



}
