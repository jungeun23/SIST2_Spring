package com.spring.hobbylovey.host;

import java.util.HashMap;
import java.util.List;

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

	public String getHostSeq(String id) {
		
		
		return template.selectOne("host.getHostSeq",id);
		
	}

	public int addClass(ClassDTO dto) {
		
		return template.insert("host.addClass",dto);
	}

	public int getClassSeq() {
		
		return template.selectOne("host.getClassSeq");
	}

	public int addClassOption(ClassDTO dto) {
		
		return template.insert("host.addClassOption",dto);
	}

	public int addClassImage(ClassDTO dto) {
		
		return template.insert("host.addClassImage",dto);
	}

	public int addOption(HashMap<String, String> map) {
		
		return template.insert("host.addOption",map);
	}

	public List<MyClassListDTO> getMyClassList(String id) {

		
		return template.selectList("host.getMyClassList",id);
	}


}
