package com.spring.hobbylovey.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public List<AdminDTO> member() {
		
		
		return template.selectList("admin.member");
	}

}
