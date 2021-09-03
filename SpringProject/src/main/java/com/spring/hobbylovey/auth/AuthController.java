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


/***
 * 회원 인증(회원가입, 로그인) 페이지를 불러오기 위한 컨트롤러
 * @author 2조
 *
 */
@Controller
public class AuthController {

	@Autowired
	private AuthDAO dao;

	
	/***
	 * 회원가입 페이지를 보여주기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 회원가입 페이지로 이동하기위한 리턴
	 */
	@RequestMapping(value = "/auth/signup.action", method = { RequestMethod.GET })
	public String signup(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "auth.signup";
	}

	
	/***
	 * 로그인 페이지를 보여주기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 로그인 페이지로 이동하기위한 리턴
	 */
	@RequestMapping(value = "/auth/login.action", method = { RequestMethod.GET })
	public String login(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "auth.login";
	}

	/***
	 * 아이디/비밀번호 찾기 페이지를 보여주기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 아이디/비밀번호 페이지로 이동하기위한 메소드
	 */
	@RequestMapping(value = "/auth/findidpw.action", method = { RequestMethod.GET })
	public String findidpw(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "auth.findidpw";
	}

	/***
	 * 회원가입시 아이디 중복확인을 하기위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @param id
	 * @param auth
	 * @return 성공유무를 반환
	 */
	@RequestMapping(value = "/auth/idcheck.action", method = { RequestMethod.POST })
	@ResponseBody
	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String id, String auth) {

		int result = -1;

		result = dao.authIdCheck(id, auth);

		return result;
	}

	/***
	 * 회원가입 완료시 DB작업을 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @param dto
	 */
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

	/***
	 * 로그인 완료시 DB검색을 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @param dto
	 */
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
	
	
	/***
	 * 로그아웃을 하기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 */
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
