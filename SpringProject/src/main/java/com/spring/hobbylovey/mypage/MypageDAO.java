package com.spring.hobbylovey.mypage;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 마이페이지 관련 DB 작업 담당 DAO
 * @author 이미현
 *
 */
@Repository
public class MypageDAO {

	@Autowired
	private SqlSessionTemplate template;

	public List<MypageDTO> signupClassList(String id) {
		
		return template.selectList("test.signupClassList", id);
		
	}

	/**
	 * 수강신청목록을 가져오기 위한 메소드
	 * @param seq
	 * @return List<SignUpClassDTO>
	 */
	public List<SignUpClassDTO> getSignUpClassList(String seq) {

		return template.selectList("mypage.getSignupClassList", seq);
	}

	/**
	 * 총 수강신청 클래스 개수를 가져오기 위한 메소드
	 * @return 총 수강신청 클래스 개수
	 */
	public int getTotalSignUpClass() {
		return template.selectOne("mypage.getTotalSignUpClass");
	}

	/**
	 * 수강신청한 클래스의 썸네일 이미지를 가져오기 위한 메소드
	 * @param classSeq
	 * @return 썸네일 이미지
	 */
	public String getClassImg(String classSeq) {
		return template.selectOne("mypage.getClassImg");
	}

	
	
}
