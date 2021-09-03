package com.spring.hobbylovey.auth;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/***
 * 회원인증의 MyBatis(DB)작업을 하기한 클래스
 * @author 2조
 *
 */
@Repository
public class AuthDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	/***
	 * 회원/호스트의 아이디 중복확인을 위한 메소드
	 * @param id
	 * @param auth
	 * @return 중복값이 있는지 없는지 반환
	 */
	public int authIdCheck(String id,String auth) {
		
		
		if(auth.equals("1")) {
			return template.selectOne("auth.authUserIdCheck",id);
		}
		
		return template.selectOne("auth.authHostIdCheck",id);
		
	}

	/***
	 * 회원의 회원가입을 데이터를 처리하기 위한 메소드
	 * @param dto
	 * @return 성공유무를 반환
	 */
	public int authUserSignup(AuthDTO dto) {
		
		return template.insert("auth.authUserSignup",dto);
	}

	
	/***
	 * 호스트의 회원가입을 데이터를 처리하기 위한 메소드
	 * @param dto
	 * @return 성공유무를 반환
	 */	
	public int authHostSignup(AuthDTO dto) {
		
		
		return template.insert("auth.authHostSignup",dto);
	}

	
	/***
	 * 회원의 로그인 작업을 하기위한 메소드
	 * @param dto
	 * @return 특정 회원 레코드 반환
	 */
	public AuthDTO authUserLogin(AuthDTO dto) {
		
		return template.selectOne("auth.authUserLogin",dto);
	}

	/***
	 * 호스트의 로그인 작업을 하기위한 메소드
	 * @param dto
	 * @return 특정 호스트 레코드 반환
	 */
	public AuthDTO authHostLogin(AuthDTO dto) {
		
		return template.selectOne("auth.authHostLogin",dto);
	}
	
	

}
