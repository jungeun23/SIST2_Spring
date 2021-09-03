package com.spring.hobbylovey.lecture;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 클래스 강의 DB 쿼리 처리 클래스
 * @author 
 *
 */
@Repository
public class LectureDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	/**
	 * 클래스 목록을 categoryBig을 조건으로 조회하는 메소드
	 * @param dto
	 * @return List<ClassListDTO> 클래스 목록
	 */
	public List<ClassListDTO> getAll(ClassListDTO dto) {
		
		return template.selectList("lecture.getAll", dto);
	}

	/**
	 * 클래스 목록을 categoryBig, categorySmall를 조건으로 , filter로 정렬하여 조회하는 메소드
	 * @param dto
	 * @return List<ClassListDTO> 클래스 목록
	 */
	public List<ClassListDTO> csmallList(ClassListDTO dto) {
		
		return template.selectList("lecture.csmallList", dto);
	}


	public ClassDetailDTO getClassDetail(String cSeq) {

		return template.selectOne("lecture.getClassDetail", cSeq);
	}


	public HostDTO getHost(String cSeq) {

		return template.selectOne("lecture.getHost", cSeq);
	}


	public int getHostCount(String hostSeq) {

		return template.selectOne("lecture.getHostCount", hostSeq);
	}


	public List<ReviewListDTO> getReviewList(String cSeq) {
		
		return template.selectList("lecture.getReviewList", cSeq);
	}


	public List<ClassImageDTO> getClassImgList(String cSeq) {

		return template.selectList("lecture.getClassImgList", cSeq);
	}


	public int getHostReviewCount(String cSeq) {

		return template.selectOne("lecture.getHostReviewCount", cSeq);
	}


	public int getHostScrapCount(String hostSeq) {

		return template.selectOne("lecture.getHostScrapCount", hostSeq);
	}

	/**
	 * 클래스의 옵션 목록을 조회하는 메소드
	 * @param classSeq
	 * @return List<ClassOptionDTO>
	 */
	public List<ClassOptionDTO> getOption(String classSeq) {

		return template.selectList("lecture.getOption", classSeq);
	}

	/**
	 * 사용자 id를 조건으로 UserSeq를 조회하는 메소드
	 * @param id
	 * @return String (userSeq)
	 */
	public String getUserSeq(String id) {

		return template.selectOne("lecture.getUserSeq",id);
	}

	/**
	 * 수강신청 테이블 tblSignupClass에 추가하는 메소드
	 * @param dto
	 */
	public void addSign(ClassOptionDTO dto) {

		template.insert("lecture.addSign", dto);
	}

	/**
	 * 페이징을 위한 totalPage 값을 질의하는 메소드
	 * @param dto 
	 * @return ClassListDTO(totalCount, totalPage)
	 */
	public ClassListDTO listCount(ClassListDTO dto) {
		return template.selectOne("lecture.listCount", dto);
	}


	public List<ClassListDTO> getIndexClassList() {

		return template.selectList("lecture.getIndexClassList");
	}

	
}
