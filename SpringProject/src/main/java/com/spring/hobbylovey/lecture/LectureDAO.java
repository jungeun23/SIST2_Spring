package com.spring.hobbylovey.lecture;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * 클래스 강의 DB 쿼리 처리 클래스
 * @author 김정은, 이미현
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


	/**
	 * 선택한 클래스의 상세정보를 가져오기 위한 메소드
	 * @param cSeq
	 * @return 선택한 클래스의 상세정보
	 */
	public ClassDetailDTO getClassDetail(String cSeq) {

		return template.selectOne("lecture.getClassDetail", cSeq);
	}


	/**
	 * 선택한 클래스의 호스트 정보를 가져오기 위한 메소드
	 * @param cSeq
	 * @return 선택한 클래스의 호스트 정보
	 */
	public HostDTO getHost(String cSeq) {

		return template.selectOne("lecture.getHost", cSeq);
	}


	/**
	 * 호스트의 총 클래스 개수를 가져오기 위한 메소드
	 * @param hostSeq
	 * @return 호스트의 총 클래스 개수
	 */
	public int getHostCount(String hostSeq) {

		return template.selectOne("lecture.getHostCount", hostSeq);
	}


	/**
	 * 선택한 클래스의 후기목록을 가져오기 위한 메소드
	 * @param cSeq
	 * @return 선택한 클래스의 후기목록
	 */
	public List<ReviewListDTO> getReviewList(String cSeq) {
		
		return template.selectList("lecture.getReviewList", cSeq);
	}


	/**
	 * 선택한 클래스의 썸네일 이미지 목록을 가져오기 위한 메소드
	 * @param cSeq
	 * @return 선택한 클래스의 썸네일 이미지 목록
	 */
	public List<ClassImageDTO> getClassImgList(String cSeq) {

		return template.selectList("lecture.getClassImgList", cSeq);
	}


	/**
	 * 호스트의 전체 리뷰수를 가져오기 위한 메소드
	 * @param cSeq
	 * @return 호스트의 전체 리뷰수
	 */
	public int getHostReviewCount(String cSeq) {

		return template.selectOne("lecture.getHostReviewCount", cSeq);
	}


	/**
	 * 호스트의 스크랩 수를 가져오기 위한 메소드
	 * @param hostSeq
	 * @return 호스트의 스크랩 수
	 */
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
