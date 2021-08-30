package com.spring.hobbylovey.host;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HostController {
	
	
	
	@RequestMapping(value = "/host/classmain.action", method = { RequestMethod.GET })
	public String name(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "host.name";
	}

}
