package com.spring.hobbylovey.lecture;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LectureController {
	
	@Autowired
	private LectureDAO dao;
	
	// 클래스 목록 페이지 
	@RequestMapping(value = "/class/list.action", method = { RequestMethod.GET })
	public String list(HttpServletRequest req, HttpServletResponse resp, HttpSession session, ClassListDTO dto) {

		dto.setFilter("classSeq asc");
		
		List<ClassListDTO> list = dao.getAll(dto);
		
		req.setAttribute("list", list);
		req.setAttribute("category", dto.getCategoryBig());
		return "class.list";
	}
	
	@RequestMapping(value = "/class/list_cgsmall.action", method = { RequestMethod.POST })
	@ResponseBody
	public List<ClassListDTO> list_cgsmall(HttpServletRequest req, HttpServletResponse resp, HttpSession session, ClassListDTO dto) {
		
		if( dto.getFilter() == null || dto.getFilter().equals("") || dto.getFilter().equals("score")) {
			dto.setFilter("classSeq asc");
			return dao.getAll(dto);		
		} else if(!dto.getFilter().equals("") || dto.getFilter() != null) {
			
			if(dto.getCategorySmall().equals("전체")) {
				return dao.getAll(dto);
			} else {
				return dao.csmallList(dto);
			}
		}
		return null;
	}

	
	
	
	// 클래스 상세 페이지

	@RequestMapping(value = "/class/detail.action", method = { RequestMethod.GET })
	public String detail(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String classSeq) {

		

		return "class.detail";
	}
	
	
	// 클래스 옵션 선택 페이지
	@RequestMapping(value = "/class/option.action", method = { RequestMethod.GET })
	public String option(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.option";
	}
	
	// 클래스 후기 페이지
	@RequestMapping(value = "/class/reviewlist.action", method = { RequestMethod.GET })
	public String reviewlist(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.reviewlist";
	}
	
	// 클래스 호스트 프로필 페이지
	@RequestMapping(value = "/class/hostprofile.action", method = { RequestMethod.GET })
	public String hostprofile(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.hostprofile";
	}
	
	@RequestMapping(value = "/class/hostreview.action", method = { RequestMethod.GET })
	public String hostreview(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.hostreview";
	}
	
	@RequestMapping(value = "/class/purchases.action", method = { RequestMethod.GET })
	public String purchases(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "class.purchases";
	}
}
