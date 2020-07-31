package com.web.bomulsum.writer.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.board.repository.writerBoardDAO;
import com.web.bomulsum.writer.board.repository.writerBoardVO;

@Service
public class WriterBoardServiceImpl implements WriterBoardService{
	@Autowired
	writerBoardDAO dao;
	
	@Override
	public void writerBoardSelect(writerBoardVO vo) {
		dao.getWriterBoardList(vo);
		System.out.println(vo.toString()); //»Æ¿Œ
	}
}






