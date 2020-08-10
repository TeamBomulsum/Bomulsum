package com.web.bomulsum.writer.myinfo.service;

import java.util.Map;

import com.web.bomulsum.writer.myinfo.repository.WriterMyinfoVO;

public interface WriterMyinfoService {
	WriterMyinfoVO getWriterMyinfo();
	Map<String, Object> getGemPointSum2();
	void insertPhone(String writerPhone);
	void insertUrl(String writerUrl);
}
