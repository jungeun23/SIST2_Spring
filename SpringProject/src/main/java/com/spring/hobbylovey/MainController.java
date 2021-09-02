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

@Controller
public class MainController {
	
	@Autowired
	private LectureDAO ldao;
	
	@Autowired
	private IndexDAO dao;
	
	@RequestMapping(value = "/index.action", method = { RequestMethod.GET })
	public String index(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {


		List<ClassListDTO> list = ldao.getIndexClassList(); 
		
		req.setAttribute("list",list);
		
		
		return "index";
	}

}
