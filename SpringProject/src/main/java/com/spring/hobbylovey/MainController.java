package com.spring.hobbylovey;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.hobbylovey.lecture.ClassListDTO;
import com.spring.hobbylovey.lecture.LectureDAO;
import com.spring.hobbylovey.lecture.ReviewDTO;


/***
 * 메인 페이지를 불러오기위한 컨트롤러
 * @author 2조
 *
 */
@Controller
public class MainController {
	
	@Autowired
	private LectureDAO ldao;
	
	
	/***
	 * 메인페이지를 보여주기 위한 메소드
	 * @param req
	 * @param resp
	 * @param session
	 * @return 메인페이지로 이동하기위한 리턴
	 */
	@RequestMapping(value = "/index.action", method = { RequestMethod.GET })
	public String index(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {


		List<ClassListDTO> list = ldao.getIndexClassList(); 
		
		req.setAttribute("list",list);
		
		
		return "index";
	}

}
