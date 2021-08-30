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
	
	@RequestMapping(value = "/member/mypage.action", method = { RequestMethod.GET })
	public String index(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String id) {

		String seq = "14"; //임시 회원번호 - 로그인 기능구현 후 수정해야함
		
		//수강신청내역	
		List<SignUpClassDTO> list = dao.getSignUpClassList(seq);
		
		System.out.println("list 사이즈: " + list.size());
		req.setAttribute("list", list);
		
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
	
	@RequestMapping(value = "/mypageCourseDetail.action", method = { RequestMethod.GET })
	public String mypageCourseDetail(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "member.mypageCourseDetail";

	}
	
	@RequestMapping(value = "/mypageOrder.action", method = { RequestMethod.GET })
	public String mypageOrder(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		return "member.mypageOrder";
		
	}
	
	@RequestMapping(value = "/mypageModify.action", method = { RequestMethod.GET })
	public String mypageModify(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		return "member.mypageModify";
		
	}
	
	@RequestMapping(value = "/mypageWish.action", method = { RequestMethod.GET })
	public String mypageWish(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		return "member.mypageWish";
		
	}
	
	@RequestMapping(value = "/mypagePassword.action", method = { RequestMethod.GET })
	public String mypagePassword(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		return "member.mypagePassword";
		
	}

}
