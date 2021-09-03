package com.spring.hobbylovey.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckMember {
	
public void check(HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			HttpSession session = req.getSession();
			//로그인 안한 사람
			if (session.getAttribute("id") == null || session.getAttribute("id").toString().equals("")) {
				
				resp.setCharacterEncoding("UTF-8");
				
				PrintWriter writer = resp.getWriter();
				
				writer.print("<html>");
				writer.print("<head>");
				writer.print("<meta charset='utf-8'>");
				writer.print("</head>");
				writer.print("<body>");
				writer.print("<script>");
				writer.print("alert('로그인 후 사용이 가능합니다.');");
				writer.print("location.href='/hobbylovey/index.action';");
				writer.print("</script>");
				writer.print("</body>");
				writer.print("</html>");
				
				writer.close();
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
