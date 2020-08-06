package com.web.bomulsum.manager.board.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�� ���
	public void mboardRegister(MBoardVO vo) {
		sqlSessionTemplate.insert("mBoardDAO.insertMBoard", vo);
	}
	
	//�Խ��� �� ��� �ҷ�����
	public List<MBoardListVO> mboardList(){
		return sqlSessionTemplate.selectList("mBoardDAO.selectMBoard");
	}
	
	//�� ������ ���� ������ �ҷ��ͼ� �������� �ѷ��ֱ�
	public MBoardVO mboardSelectOne(MBoardVO vo) {
		MBoardVO result = sqlSessionTemplate.selectOne("mBoardDAO.selectRewrite", vo);
		return result;
	}
	
	//�� ���� �ݿ�
	public void mboardUpdate(MBoardVO vo) {
		System.out.println("������Ʈ �Էµ� ������ : " + vo.toString());
		sqlSessionTemplate.update("mBoardDAO.updateMBoard", vo);
	}
	
	
	public void mboardDelete(MBoardVO vo) {
		System.out.println("������ ������ ������ : "+ vo.getAdminNoticeSeq());
		sqlSessionTemplate.delete("mBoardDAO.deleteMBoard", vo);
	}
}
