package com.web.bomulsum.writer.midas.service;

import java.util.List;

import com.web.bomulsum.writer.midas.repository.WriterMidasVO;

public interface WriterMidasService {

	void midasRegister(WriterMidasVO vo);
	
	String selectWriterCode(String writerEmail);
	
	List<WriterMidasVO> getClassAllSelect(String writerCodeSeq);
	
	WriterMidasVO getClassArticle(String orderSeq);
}
