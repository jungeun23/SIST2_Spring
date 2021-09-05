package com.spring.hobbylovey.admin;

import java.util.List;

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
	public AdminDAO dao;
	
	@RequestMapping(value = "/admin/member.action", method = { RequestMethod.GET })
	public String admin(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		List<AdminDTO> list = dao.member();
		
		req.setAttribute("list", list);
		
		return "admin.member";
	}
	
	@RequestMapping(value = "/admin/notice_manage.action", method = { RequestMethod.GET })
	public String notice_manage(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		

		
		return "admin.notice_manage";
	}
	
	@RequestMapping(value = "/admin/class_manage.action", method = { RequestMethod.GET })
	public String class_manage(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		

		
		return "admin.class_manage";
	}
}

