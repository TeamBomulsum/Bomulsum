package com.web.bomulsum.writer.myinfo.repository;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WriterMyinfoDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//작가 내정보 불러오기
	public WriterMyinfoVO getWriterMyinfo(){
		WriterMyinfoVO info = sqlSessionTemplate.selectOne("writerMyinfoDAO.loadMyinfo");
		return info;
	}
	
	//보유 포인트
	public Map<String, Object> getGemPointSum2() {
		Map<String, Object> result =  sqlSessionTemplate.selectOne("writerGempointDAO.gempointSum"); 
		System.out.println("보유젬포인트:"+result); //테스트
		return result;
	}
	
	public void insertPhone(String writerPhone) {
		sqlSessionTemplate.update("writerMyinfoDAO.insertPhone",writerPhone);
	}
	public void insertUrl(String writerUrl) {
		sqlSessionTemplate.update("writerMyinfoDAO.insertUrl", writerUrl);
	}
	
	
}
