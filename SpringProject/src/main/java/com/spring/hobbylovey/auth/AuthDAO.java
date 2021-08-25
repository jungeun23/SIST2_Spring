package com.spring.hobbylovey.auth;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AuthDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public int authIdCheck(String id) {
		
		return template.selectOne("auth.authIdCheck",id);
	}
	
	

}
