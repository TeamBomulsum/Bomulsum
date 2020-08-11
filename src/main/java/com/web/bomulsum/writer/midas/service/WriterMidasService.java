package com.web.bomulsum.writer.midas.service;

import com.web.bomulsum.writer.midas.repository.WriterMidasVO;

public interface WriterMidasService {

	void midasRegister(WriterMidasVO vo);
	
	String selectWriterCode(String writerEmail);
}
