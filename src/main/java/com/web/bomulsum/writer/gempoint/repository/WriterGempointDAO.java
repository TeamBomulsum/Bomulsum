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
	public List<Map<String, String>> getGemPoint() {
		List<Map<String, String>> list = sqlSessionTemplate.selectList("writerGempointDAO.gempointSelect");
		System.out.println(list); //�׽�Ʈ
		return list;
	}
//	public List<WriterGempointVO> getGemPoint() {
//		List<WriterGempointVO> list = sqlSessionTemplate.selectList("writerGempointDAO.gempointSelect");
//		return list;
//	}
	//���� ����Ʈ
	public Map<String, Object> getGemPointSum() {
		Map<String, Object> result =  sqlSessionTemplate.selectOne("writerGempointDAO.gempointSum"); //mapper namespace . id
		System.out.println(result); //�׽�Ʈ
		return result;
	}
	
	//������Ʈ ����
	public void insertGemPointCharge(int chargeMoney) {
		sqlSessionTemplate.insert("writerGempointDAO.gempointChargeInsert", chargeMoney); 
	}
}
