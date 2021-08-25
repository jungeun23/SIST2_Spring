package com.spring.hobbylovey.lecture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LectureController {

	@RequestMapping(value = "/class/list.action", method = { RequestMethod.GET })
	public String list(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.list";
	}
	
	@RequestMapping(value = "/class/detail.action", method = { RequestMethod.GET })
	public String detail(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.detail";
	}
	
	@RequestMapping(value = "/class/option.action", method = { RequestMethod.GET })
	public String option(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.option";
	}
	
	@RequestMapping(value = "/class/reviewlist.action", method = { RequestMethod.GET })
	public String reviewlist(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.reviewlist";
	}
	
	@RequestMapping(value = "/class/hostprofile.action", method = { RequestMethod.GET })
	public String hostprofile(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.hostprofile";
	}
	
	@RequestMapping(value = "/class/hostreview.action", method = { RequestMethod.GET })
	public String hostreview(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.hostreview";
	}
	
	@RequestMapping(value = "/class/purchases.action", method = { RequestMethod.GET })
	public String purchases(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.purchases";
	}
}
