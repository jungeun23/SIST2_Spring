package com.spring.hobbylovey.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthController {
	
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
	

}
