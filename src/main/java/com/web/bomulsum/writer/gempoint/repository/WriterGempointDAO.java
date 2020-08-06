package com.web.bomulsum.writer.gempoint.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WriterGempointDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�̿볻��
	public List<WriterGempointVO> getGemPoint() {
		List<WriterGempointVO> list = sqlSessionTemplate.selectList("writerGempointDAO.gempointSelect");
		return list;
	}
	//���� ����Ʈ
	public int getGemPointSum() {
		int result =  sqlSessionTemplate.selectOne("writerGempointDAO.gempointSum"); //mapper namespace . id
		System.out.println(result);
		return result;
	}
	
}
