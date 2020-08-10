package com.web.bomulsum.writer.myinfo.repository;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WriterMyinfoDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//�۰� ������ �ҷ�����
	public WriterMyinfoVO getWriterMyinfo(){
		WriterMyinfoVO info = sqlSessionTemplate.selectOne("writerMyinfoDAO.loadMyinfo");
		return info;
	}
	
	//���� ����Ʈ
	public Map<String, Object> getGemPointSum2() {
		Map<String, Object> result =  sqlSessionTemplate.selectOne("writerGempointDAO.gempointSum"); 
		System.out.println("����������Ʈ:"+result); //�׽�Ʈ
		return result;
	}
	
	public void insertPhone(String writerPhone) {
		sqlSessionTemplate.update("writerMyinfoDAO.insertPhone",writerPhone);
	}
	public void insertUrl(String writerUrl) {
		sqlSessionTemplate.update("writerMyinfoDAO.insertUrl", writerUrl);
	}
	
	
}
