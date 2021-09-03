package com.spring.hobbylovey.host;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/***
 * 특정 권한이 있는 사람에게만 페이지를 제공할 수 있도록 처리를 해주는 AOP 클래스
 * @author 2조
 *
 */
@Aspect
@Component
public class HostAOP {
	
	/***
	 *특정 클래스의 특정 메소드를 지정해주는 메소드
	 */
	@Pointcut("execution(public String com.spring.hobbylovey.host.HostController.*(..))")
	public void loginCheck() {}
	
	
	/***
	 * 특정 클래스의 특정 메소드를 실행 전 실행하는 메소드
	 * @param joinPoint
	 */
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
