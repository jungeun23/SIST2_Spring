package com.spring.hobbylovey.host;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HostDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public int getMyClassCount(String id) {
		
		
		return template.selectOne("host.getMyClassCount",id);
		
	}

}
