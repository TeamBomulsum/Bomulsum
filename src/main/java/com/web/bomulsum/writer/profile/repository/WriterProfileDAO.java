package com.web.bomulsum.writer.profile.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WriterProfileDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//�۰� �⺻������ �ҷ�����
	public WriterProfileVO getWriterProfile(){
		WriterProfileVO profile = sqlSessionTemplate.selectOne("writerProfileDAO.loadProfile");
		return profile;
	}
	
	//�۰� �⺻������ ���(������Ʈ)
	public void updateWriterProfile(WriterProfileVO vo){
		sqlSessionTemplate.update("writerProfileDAO.updateProfile",vo);
	}
	
	//�۰� ���� �������̹��� ��������
	public String getWriterProfileImg() {
		return sqlSessionTemplate.selectOne("writerProfileDAO.loadProfileImg");
	}
	
	//�۰� ���� Ŀ���̹��� ��������
	public String getWriterCoverImg() {
		return sqlSessionTemplate.selectOne("writerProfileDAO.loadCoverImg");
	}

}
