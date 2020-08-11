package com.web.bomulsum.writer.activity.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CommentsListDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�Խ��� �� ��� �ҷ�����
	public List<CommentsListVO> commentsList(){
		System.out.println("���� �Գ���?");
		return sqlSessionTemplate.selectList("writerCommentListDAO.selectComment");
	}
	
	//�� ���
	public void addRecomment(CommentsListVO vo) {
		sqlSessionTemplate.update("writerCommentListDAO.addRecomment", vo);
	}
	
}
