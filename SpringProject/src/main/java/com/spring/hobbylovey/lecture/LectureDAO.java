package com.spring.hobbylovey.lecture;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<ClassListDTO> getAll(String category) {
		
		return template.selectList("lecture.getAll", category);
	}


	public List<ClassListDTO> csmallList(ClassListDTO dto) {
		
		return template.selectList("lecture.csmallList", dto);
	}

	
}
