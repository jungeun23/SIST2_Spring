package com.spring.hobbylovey.mypage;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDAO {

	@Autowired
	private SqlSessionTemplate template;

	public List<MypageDTO> signupClassList(String id) {
		
		return template.selectList("test.signupClassList", id);
		
	}

	
	
}