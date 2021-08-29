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
		
		// 회원 리스트 
		List<AdminDTO> list = dao.member();
		
		req.setAttribute("list", list);
		
		return "admin.member";
	}
}

