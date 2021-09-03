package com.spring.hobbylovey.host;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hobbylovey.lecture.ReviewDTO;
import com.spring.hobbylovey.notice.NoticeDTO;


/***
 * 호스트의 MyBatis(DB)작업을 하기한 클래스
 * @author 2조
 *
 */
@Repository
public class HostDAO {

	@Autowired
	private SqlSessionTemplate template;

	/***
	 * 호스트(자신)의 클래스 수를 가져오기 위한 메소드
	 * @param id
	 * @return 클래스 수를 반환
	 */
	public int getMyClassCount(String id) {

		return template.selectOne("host.getMyClassCount", id);

	}

	/***
	 * 호스트(자신)의 호스트 번호를 가져오기 위한 메소드
	 * @param id
	 * @return 호스트 번호 반환
	 */
	public String getHostSeq(String id) {

		return template.selectOne("host.getHostSeq", id);

	}

	/***
	 * 클래스를 작성하기 위한 메소드
	 * @param dto 
	 * @return 성공 유무를 반환
	 */
	public int addClass(ClassDTO dto) {

		return template.insert("host.addClass", dto);
	}

	/***
	 * 방금 작성한 클래스의 번호를 가져오기 위한 메소드
	 * @return 클래스 번호 반환
	 */
	public int getClassSeq() {

		return template.selectOne("host.getClassSeq");
	}

	/***
	 * 클래스 옵션(일정)을 작성하기 위한 메소드
	 * @param dto
	 * @return 성공유무 반환
	 */
	public int addClassOption(ClassDTO dto) {

		return template.insert("host.addClassOption", dto);
	}

	/***
	 * 클래스 작성시 썸네일 이미지를 작성하기 위한 메소드
	 * @param dto
	 * @return 성공유무를 반환
	 */
	public int addClassImage(ClassDTO dto) {

		return template.insert("host.addClassImage", dto);
	}

	/***
	 * 클래스 옵션(일정)을 작성하기 위한 메소드
	 * @param map
	 * @return 성공유무를 반환
	 */
	public int addOption(HashMap<String, String> map) {

		return template.insert("host.addOption", map);
	}

	/***
	 * 자신의 클래스 리스트를 가져오기 위한 메소드
	 * @param id
	 * @return 클래스 리스트 객체 반환
	 */
	public List<MyClassListDTO> getMyClassList(String id) {

		return template.selectList("host.getMyClassList", id);
	}

	/***
	 * 자신의 이번달 신청자 수를 가져오기 위한 메소드
	 * @param map
	 * @return 이번달 신청자 수 반환
	 */
	public int getThisMonthCount(HashMap<String, String> map) {

		return template.selectOne("host.getThisMonthCount", map);
	}

	/***
	 * 자신의 전체 신청자 수를 가져오기 위한 메소드
	 * @param hostSeq
	 * @return 전체 신청자 수를 반환
	 */
	public int getAllCount(String hostSeq) {

		return template.selectOne("host.getAllCount", hostSeq);
	}

	/***
	 * 자신의 클래스에 달린 댓글의 수를 가져오기 위한 메소드
	 * @param hostSeq
	 * @return 댓글 수 반환
	 */
	public int getReviewCount(String hostSeq) {

		return template.selectOne("host.getReviewCount", hostSeq);
	}

	/***
	 * 자신의 클래스의 평균 점수를 가져오기 위한 메소드
	 * @param map
	 * @return 평균 점수 반환
	 */
	public int getAvgScore(HashMap<String, String> map) {

		return template.selectOne("host.getAvgScore", map);
	}

	/***
	 * 클래스 관리 메인페이지에서 보여지는 공지사항을 가져오기 위한 메소드
	 * @return 공지사항 리스트 객체 반환
	 */
	public List<NoticeDTO> getNoticeList() {

		return template.selectList("host.getNoticeList");
	}

	/***
	 * 이번달 매출액을 가져오기 위한 메소드
	 * @param map
	 * @return 이번달 매출액 반환
	 */
	public int getThisMonthSales(HashMap<String, String> map) {

		return template.selectOne("host.getThisMonthSales", map);
	}

	/***
	 * 전체 매출액을 가져오기 위한 메소드
	 * @param map
	 * @return 전체 매출액 반환
	 */
	public int getAllSales(HashMap<String, String> map) {

		return template.selectOne("host.getAllSales", map);
	}

	/***
	 * 자신의 클래스의 성비를 계산하기위해 남자 신청자의 수를 가져오는 메소드
	 * @param hostSeq
	 * @return
	 */
	public int getManCount(String hostSeq) {
		
		return template.selectOne("host.getManCount",hostSeq);
	}

	/***
	 * 월별 매출액을 가져오기 위한 메소드
	 * @param hostSeq
	 * @return
	 */
	public List<SalesDTO> getSalesList(String hostSeq) {

		
		return template.selectList("host.getSalesList",hostSeq);
	}

	/***
	 * 리뷰 리스트를 가져오기 위한 메소드
	 * @param hostSeq
	 * @return 리뷰 리스트 객체 반환
	 */
	public List<ReviewDTO> getReviewList(String hostSeq) {
		
		return template.selectList("host.getReviewList",hostSeq);
	}

}
