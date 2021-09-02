package com.spring.hobbylovey.auth;

import java.io.IOException;
import java.util.HashMap;

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
	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String id, String auth) {

		int result = -1;

		result = dao.authIdCheck(id, auth);

		return result;
	}

	@RequestMapping(value = "/auth/signupok.action", method = { RequestMethod.POST })
	public void signupok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, AuthDTO dto) {


		if (dto.getGender().equals("1") || dto.getGender().equals("3")) {
			dto.setGender("남자");
		} else {
			dto.setGender("여자");
		}

		int result = -1;

		if (dto.getAuth().equals("1")) {
			result = dao.authUserSignup(dto);
		} else if (dto.getAuth().equals("2")) {
			result = dao.authHostSignup(dto);
		}

		try {

			if (result == 1) {
				resp.sendRedirect("/hobbylovey/index.action");
			} else {
				resp.sendRedirect("/hobbylovey/auth/signup.action");
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "/auth/loginok.action", method = { RequestMethod.POST })
	public void loginok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, AuthDTO dto) {

		int result = -1;

		AuthDTO user = null;

		if (dto.getAuth().equals("1")) {
			user = dao.authUserLogin(dto);

		} else if (dto.getAuth().equals("2")) {
			user = dao.authHostLogin(dto);

		}

		try {
			if (user != null) {

				session.setAttribute("name", user.getName());
				session.setAttribute("id", user.getId());
				session.setAttribute("seq", user.getUserSeq());
				session.setAttribute("auth", user.getAuth());

				resp.sendRedirect("/hobbylovey/index.action");
			} else {
				resp.sendRedirect("/hobbylovey/auth/login.action");
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	@RequestMapping(value = "/auth/logout.action", method = { RequestMethod.GET })
	public void logout(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
			
		session.removeAttribute("name");
		session.removeAttribute("id");
		session.removeAttribute("auth");

		try {
				

				resp.sendRedirect("/hobbylovey/index.action");

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
