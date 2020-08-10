package com.web.bomulsum.writer.profile.service;

import com.web.bomulsum.writer.profile.repository.WriterProfileVO;

public interface WriterProfileService {
	void updateWriterProfile(WriterProfileVO vo);
	WriterProfileVO getWriterProfile();
	String getWriterProfileImg();
	String getWriterCoverImg();
	

}
