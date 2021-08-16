package com.spring.hobbylovey.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	
	@RequestMapping(value = "/member/mypage.action", method = { RequestMethod.GET })
	public String mypage(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "member.mypage";
	}

}
