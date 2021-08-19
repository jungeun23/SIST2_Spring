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
	
}
