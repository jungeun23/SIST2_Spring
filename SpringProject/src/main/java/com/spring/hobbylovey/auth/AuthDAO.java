package com.spring.hobbylovey.auth;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AuthDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public int authIdCheck(String id,String auth) {
		
		
		if(auth.equals("1")) {
			return template.selectOne("auth.authUserIdCheck",id);
		}
		
		return template.selectOne("auth.authHostIdCheck",id);
		
	}

	public int authUserSignup(AuthDTO dto) {
		
		return template.insert("auth.authUserSignup",dto);
	}

	public int authHostSignup(AuthDTO dto) {
		
		
		return template.insert("auth.authHostSignup",dto);
	}

	public AuthDTO authUserLogin(AuthDTO dto) {
		
		return template.selectOne("auth.authUserLogin",dto);
	}

	public AuthDTO authHostLogin(AuthDTO dto) {
		
		return template.selectOne("auth.authHostLogin",dto);
	}
	
	

}
