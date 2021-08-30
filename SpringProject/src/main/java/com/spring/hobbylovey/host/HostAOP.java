package com.spring.hobbylovey.host;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class HostAOP {
	
	@Pointcut("execution(public String com.spring.hobbylovey.host.HostController.*(..))")
	public void loginCheck() {}
	
	
	@Before("loginCheck()")
	public void check(JoinPoint joinPoint) {
		
		
		Object[] args = joinPoint.getArgs();
		
		//보조업무 객체내에서 request, response, session 등을 얻어오는 방법
		HttpSession session = (HttpSession)joinPoint.getArgs()[2];
		HttpServletResponse resp = (HttpServletResponse)joinPoint.getArgs()[1];
		
		
		//미인증 사용자
		if (session.getAttribute("id") == null || !session.getAttribute("auth").equals("2")) {
			try {

				resp.setCharacterEncoding("UTF-8");
				PrintWriter writer = resp.getWriter();
				
				writer.println("<html>");
				writer.println("<head>");
				writer.println("<meta charset='UTF-8'>");
				writer.println("</head>");
				writer.println("<body>");
				writer.println("<script>");
				writer.println("alert('호스트 전용 페이지입니다.');");
				writer.println("location.href='/hobbylovey/index.action';");
				writer.println("</script>");
				writer.println("</body>");
				writer.println("</html>");
				
				writer.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
