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

	public List<SignUpClassDTO> getSignUpClassList(String seq) {

		return template.selectList("mypage.getSignupClassList", seq);
	}

	public SignUpClassDTO getSignUpClass(String seq) {
		// TODO Auto-generated method stub
		return template.selectOne("mypage.getSignupClass", seq);
	}

	public SignUpClassDTO getSignUpClass() {
		return template.selectOne("mypage.getSignUpClass");
	}

	public int getTotalSignUpClass() {
		return template.selectOne("mypage.getTotalSignUpClass");
	}

	public String getClassImg(String classSeq) {
		return template.selectOne("mypage.getClassImg");
	}

	
	
}
