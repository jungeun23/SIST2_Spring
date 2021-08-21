package com.spring.hobbylovey.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	
	@Autowired
	private MypageDAO dao;
	
	@RequestMapping(value = "/mypage.action", method = { RequestMethod.GET })
	public String index(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String id) {

		id = "REChAJ881";
		
		List<MypageDTO> signupClassList = dao.signupClassList(id);
		
		req.setAttribute("signupClassList", signupClassList);
		
		return "member.mypage";
		
	}
	
	@RequestMapping(value = "/mypageReview.action", method = { RequestMethod.GET })
	public String mypageReview(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "member.mypageReview";

	}
	
	@RequestMapping(value = "/mypageFeed.action", method = { RequestMethod.GET })
	public String mypageFeed(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "member.mypageFeed";

	}

}
