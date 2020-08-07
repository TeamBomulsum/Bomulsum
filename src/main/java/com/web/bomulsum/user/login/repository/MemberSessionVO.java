package com.web.bomulsum.user.login.repository;

public class MemberSessionVO {
	private String memberCode;
	private String memberEmail;
	private String memberName;
	private String memberLoginStat;
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberLoginStat() {
		return memberLoginStat;
	}
	public void setMemberLoginStat(String memberLoginStat) {
		this.memberLoginStat = memberLoginStat;
	}
	@Override
	public String toString() {
		return "MemberSessionVO [memberCode=" + memberCode + ", memberEmail=" + memberEmail + ", memberName="
				+ memberName + ", memberLoginStat=" + memberLoginStat + "]";
	}
	
	
}
