package com.spring.hobbylovey.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 마이페이지 관련 업무를 담당하는 Controller
 * @author 이미현
 *
 */
@Controller
public class MypageController {
	
	@Autowired
	private MypageDAO dao;
	
	/**
	 * 마이페이지 호출 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return /member/mypage.action
	 */
	@RequestMapping(value = "/member/mypage.action", method = { RequestMethod.GET })
	public String index(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		String seq = (String) session.getAttribute("seq");
		String id = (String) session.getAttribute("id");
		
		//수강신청내역	목록
		List<SignUpClassDTO> list = dao.getSignUpClassList(seq);
		
		//신청일자 데이터 가공
		for (SignUpClassDTO dto : list) {
			String regdate = dto.getRegdate();
			regdate = regdate.substring(0, 10);
			dto.setRegdate(regdate);
		}
		
		
		req.setAttribute("list", list); 
		req.setAttribute("id", id); 
		
		
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
