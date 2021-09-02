package com.spring.hobbylovey.lecture;

import java.util.HashMap;
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
	
	@Autowired
	private MyDate date;
	
	// 클래스 목록 페이지 
	@RequestMapping(value = "/class/list.action", method = { RequestMethod.GET })
	public String list(HttpServletRequest req, HttpServletResponse resp, HttpSession session, ClassListDTO dto) {
		
		ClassListDTO pagecount = dao.listCount(dto);
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		if(dto.getNowpage() == 0) dto.setNowpage(1);
		
		map.put("nowpage", dto.getNowpage());
		
		map.put("totalPage", pagecount.getTotalPage());
		
		int pageGroup = (int)Math.ceil((double)dto.getNowpage()/dto.getBlockSize());
		map.put("pageGroup", pageGroup);
		
		int startPage = (pageGroup -1) * dto.getBlockSize() + 1;
		map.put("startPage", startPage);
		
		int endPage = startPage + dto.getBlockSize() -1;
		map.put("endPage", endPage);
		
		int prePage = (pageGroup -2) * dto.getBlockSize() + 1;
		map.put("prePage", prePage);
		
		int nextPage = pageGroup * dto.getBlockSize() + 1;
		map.put("nextPage", nextPage);
		
		System.out.println(map);
		
		
		dto.setFilter("classSeq asc");
		
		List<ClassListDTO> list = dao.getAll(dto);
		
		req.setAttribute("list", list);
		req.setAttribute("map", map);
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

		//임시 클래스 번호
		String cSeq = "3";
		
		//클래스 정보
		ClassDetailDTO cddto = dao.getClassDetail(cSeq);
		
		//가격 데이터 가공 
		//정규식 활용하여 천단위 , 찍기
		//price = price.replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",");
		
		//클래스 이미지 리스트
		List<ClassImageDTO> classImgList = dao.getClassImgList(cSeq);
		System.out.println("클래스 이미지: " + classImgList.get(0).getClassImage());
		
		
		
		//해당 클래스 호스트 정보
		HostDTO hdto = dao.getHost(cSeq);
		
		//호스트 전체 클래스 수
		int hCount = dao.getHostCount(hdto.getHostSeq());
		
		//해당 호스트의 전체 후기 수
		int hrCount = dao.getHostReviewCount(cSeq);
		
		//해당 클래스 호스트의 스크랩 수
		int hsCount = dao.getHostScrapCount(hdto.getHostSeq());
		
		
		//해당 클래스의 후기리스트
		List<ReviewListDTO> reviewList = dao.getReviewList(cSeq);
		
		req.setAttribute("cddto", cddto);
		req.setAttribute("classImgList", classImgList);
		
		req.setAttribute("hdto", hdto);
		req.setAttribute("hCount", hCount);
		req.setAttribute("hrCount", hrCount);
		req.setAttribute("hsCount", hsCount);
		
		req.setAttribute("reviewList", reviewList);
		req.setAttribute("classSeq", classSeq);
		

		return "class.detail";
	}
	
	
	// 클래스 옵션 선택 페이지
	@RequestMapping(value = "/class/option.action", method = { RequestMethod.GET })
	public String option(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String classSeq) {
		
		//System.out.println(classSeq);

		List<ClassOptionDTO> list = dao.getOption(classSeq);
		
		
		for(ClassOptionDTO dto: list) {
			
			String cdate = dto.getClassdate();
			
			dto.setClassdate(date.getDate(dto.getClassdate()));
			dto.setDeadline(date.getDeadline(cdate));
			dto.setPrice(dto.getPrice().substring(0, (dto.getPrice().length()%3)) + "," + dto.getPrice().substring(dto.getPrice().length()%3));
		}
		
		req.setAttribute("classSeq", classSeq);
		req.setAttribute("list", list);
		
		return "class.option";
	}
	
	@RequestMapping(value = "/class/optionok.action", method = { RequestMethod.GET })
	public String optionok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, ClassOptionDTO dto) {

		//수강신청 db 작업
		
		String id = (String)session.getAttribute("id");
		
		//임시 id
		id = "rAyvQp111";
		
		dto.setUserSeq(dao.getUserSeq(id));
		
		dao.addSign(dto);
		
		
		req.setAttribute("classSeq", dto.getClassSeq());
		
		return "forward:/class/detail.action";
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
