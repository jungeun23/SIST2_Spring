package com.spring.hobbylovey.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AuthController {
	
	@Autowired
	private AuthDAO dao;
	
	@RequestMapping(value = "/auth/signup.action", method = { RequestMethod.GET })
	public String signup(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		
		return "auth.signup";
	}
	
	@RequestMapping(value = "/auth/login.action", method = { RequestMethod.GET })
	public String login(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "auth.login";
	}
	
	
	@RequestMapping(value = "/auth/findidpw.action", method = { RequestMethod.GET })
	public String findidpw(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "auth.findidpw";
	}
	
	
	
	
	@RequestMapping(value = "/auth/idcheck.action", method = { RequestMethod.POST })
	@ResponseBody
	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session,String id) {

		int result = dao.authIdCheck(id);
		
		return result;
	}
	

}
