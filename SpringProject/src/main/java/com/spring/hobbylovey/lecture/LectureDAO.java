package com.spring.hobbylovey.lecture;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<ClassListDTO> getAll(ClassListDTO dto) {
		
		return template.selectList("lecture.getAll", dto);
	}


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


	public List<ClassOptionDTO> getOption(String classSeq) {

		return template.selectList("lecture.getOption", classSeq);
	}


	public String getUserSeq(String id) {

		return template.selectOne("lecture.getUserSeq",id);
	}


	public void addSign(ClassOptionDTO dto) {

		template.insert("lecture.addSign", dto);
	}


	public ClassListDTO listCount(ClassListDTO dto) {
		return template.selectOne("lecture.listCount", dto);
	}


	public List<ClassListDTO> getIndexClassList() {

		return template.selectList("lecture.getIndexClassList");
	}

	
}
