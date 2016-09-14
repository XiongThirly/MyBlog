package com.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * @author Thirly
 *   设置所有页面的跳转
 */
@Controller
@RequestMapping("/pages")
public class PageController {

	@RequestMapping({"/index"})
	public String index() {
		return "index";
	}
	@RequestMapping({"/about"})
	public String about() {
		return "about";
	}
	@RequestMapping({"/contact"})
	public String contact() {
		return "contact";
	}
	@RequestMapping({"/content"})
	public String content() {
		return "content";
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
	@RequestMapping({"/blog"})
	public String blog() {
		return "blog";
	}
	@RequestMapping({"/login"})
	public String login() {
		return "login";
	}
	@RequestMapping({"/editor"})
	public String editor() {
		return "editor";
	}
}
