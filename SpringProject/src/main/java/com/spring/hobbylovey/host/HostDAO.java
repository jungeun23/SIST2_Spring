package com.spring.hobbylovey.host;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hobbylovey.notice.NoticeDTO;

@Repository
public class HostDAO {

	@Autowired
	private SqlSessionTemplate template;

	public int getMyClassCount(String id) {

		return template.selectOne("host.getMyClassCount", id);

	}

	public String getHostSeq(String id) {

		return template.selectOne("host.getHostSeq", id);

	}

	public int addClass(ClassDTO dto) {

		return template.insert("host.addClass", dto);
	}

	public int getClassSeq() {

		return template.selectOne("host.getClassSeq");
	}

	public int addClassOption(ClassDTO dto) {

		return template.insert("host.addClassOption", dto);
	}

	public int addClassImage(ClassDTO dto) {

		return template.insert("host.addClassImage", dto);
	}

	public int addOption(HashMap<String, String> map) {

		return template.insert("host.addOption", map);
	}

	public List<MyClassListDTO> getMyClassList(String id) {

		return template.selectList("host.getMyClassList", id);
	}

	public int getThisMonthCount(HashMap<String, String> map) {

		return template.selectOne("host.getThisMonthCount", map);
	}

	public int getAllCount(String hostSeq) {

		return template.selectOne("host.getAllCount", hostSeq);
	}

	public int getReviewCount(String hostSeq) {

		return template.selectOne("host.getReviewCount", hostSeq);
	}

	public int getAvgScore(HashMap<String, String> map) {

		return template.selectOne("host.getAvgScore", map);
	}

	public List<NoticeDTO> getNoticeList() {

		return template.selectList("host.getNoticeList");
	}

	public int getThisMonthSales(HashMap<String, String> map) {

		return template.selectOne("host.getThisMonthSales", map);
	}

	public int getAllSales(HashMap<String, String> map) {

		return template.selectOne("host.getAllSales", map);
	}

	public int getManCount(String hostSeq) {
		
		return template.selectOne("host.getManCount",hostSeq);
	}

	public List<SalesDTO> getSalesList(String hostSeq) {

		
		return template.selectList("host.getSalesList",hostSeq);
	}

}
