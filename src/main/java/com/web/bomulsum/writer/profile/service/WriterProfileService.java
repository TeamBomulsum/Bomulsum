package com.web.bomulsum.writer.profile.service;

import com.web.bomulsum.writer.profile.repository.WriterProfileVO;
import com.web.bomulsum.writer.salespolicy.repository.WriterSalesPolicyVO;

public interface WriterProfileService {
	void updateWriterProfile(WriterProfileVO vo);
	WriterProfileVO getWriterProfile();
	String getWriterProfileImg();
	String getWriterCoverImg();
	

}
