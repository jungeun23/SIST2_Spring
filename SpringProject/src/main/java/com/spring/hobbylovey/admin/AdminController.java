package com.spring.hobbylovey.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@Autowired
	private AdminDAO dao;
	
	@RequestMapping(value = "/member.action", method = { RequestMethod.GET })
	public String admin(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String id) {

		return "admin.member";
		
	}
}
