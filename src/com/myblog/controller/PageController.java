package com.myblog.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.attribute.HashAttributeSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myblog.entities.context;
import com.myblog.entities.user;
import com.myblog.page.OperationPage;
import com.myblog.service.ContextService;
import com.myblog.service.UserService;
import com.myblog.tools.PageBean;

/**
 * 
 * @author Thirly 设置所有页面的跳转
 */
@Controller
@RequestMapping("/pages")
public class PageController {

	@Autowired
	private ContextService contextService;

	@Autowired
	private UserService userservice;

	@OperationPage
	@RequestMapping({ "/about" })
	public String about() {
		return "about";
	}

	@OperationPage
	@RequestMapping({ "/contact" })
	public String contact() {
		return "contact";
	}

	@OperationPage
	@RequestMapping({ "/help" })
	public String help() {
		return "help";
	}

	@OperationPage
	@RequestMapping({ "/links" })
	public String links() {
		return "links";
	}

	@RequestMapping({ "/admin/logout" })
	@ResponseBody
	public Map logout(HttpServletRequest request) {

		HttpSession session = request.getSession();

		Map<String, Object> map = new HashMap<String, Object>();

		session.removeAttribute("userName");

		session.setAttribute("userName", null);

		session.setAttribute("loginName", "登录");

		map.put("logout", 1);

		return map;
	}

	@RequestMapping({ "admin/system" })
	public String system() {
		return "admin/system";
	}

	@RequestMapping({ "admin/Sysinfo" })
	public String Sysinfo() {
		return "admin/Sysinfo";
	}

	@OperationPage
	@RequestMapping({ "/works" })
	public String works() {
		return "works";
	}

	@OperationPage
	@RequestMapping({ "/error" })
	public String error() {
		return "error";
	}

	@RequestMapping({ "admin/AlterPassword" })
	public String AlterPassword() {
		return "admin/AlterPassword";
	}

	@RequestMapping({ "admin/success" })
	public String success() {
		return "admin/success";
	}

	@RequestMapping({ "/login" })
	public String login() {
		return "login";
	}

	@RequestMapping({ "/admin/update" })
	public String update() {
		return "admin/update";
	}

	@RequestMapping({ "/admin/design" })
	public ModelAndView design(@RequestParam(value="currentpage") Integer currentpage) throws Exception {

		ModelAndView mav = new ModelAndView("admin/design");

		PageBean pagebean = contextService.FindPage(currentpage, 5);

		mav.addObject("list", pagebean.getPage_list());

		mav.addObject("pagebean", pagebean);


		return mav;
	}

	@RequestMapping({ "/admin/insert" })
	public String insert() {
		return "admin/insert";
	}

	@RequestMapping({ "/admin/comments" })
	public String comments() {
		return "admin/comments";
	}
}
