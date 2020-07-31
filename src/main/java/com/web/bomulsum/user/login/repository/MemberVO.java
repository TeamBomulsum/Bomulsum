package com.web.bomulsum.user.login.repository;

public class MemberVO {
	private String memberEmail;
	private String memberPassword;
	private String memberName;
	private String memberPhone;
	private String memberRecCode;
	private boolean memberTermAgree;
	private boolean memberPrivateAgree;
	private boolean memberSmsAgree;
	private boolean memberEmailAgree;
	
	
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberRecCode() {
		return memberRecCode;
	}
	public void setMemberRecCode(String memberRecCode) {
		this.memberRecCode = memberRecCode;
	}
	public boolean isMemberTermAgree() {
		return memberTermAgree;
	}
	public void setMemberTermAgree(boolean memberTermAgree) {
		this.memberTermAgree = memberTermAgree;
	}
	public boolean isMemberPrivateAgree() {
		return memberPrivateAgree;
	}
	public void setMemberPrivateAgree(boolean memberPrivateAgree) {
		this.memberPrivateAgree = memberPrivateAgree;
	}
	public boolean isMemberSmsAgree() {
		return memberSmsAgree;
	}
	public void setMemberSmsAgree(boolean memberSmsAgree) {
		this.memberSmsAgree = memberSmsAgree;
	}
	public boolean isMemberEmailAgree() {
		return memberEmailAgree;
	}
	public void setMemberEmailAgree(boolean memberEmailAgree) {
		this.memberEmailAgree = memberEmailAgree;
	}
	@Override
	public String toString() {
		return "MemberVO [memberEmail=" + memberEmail + ", memberPassword=" + memberPassword + ", memberName="
				+ memberName + ", memberPhone=" + memberPhone + ", memberRecCode=" + memberRecCode
				+ ", memberTermAgree=" + memberTermAgree + ", memberPrivateAgree=" + memberPrivateAgree
				+ ", memberSmsAgree=" + memberSmsAgree + ", memberEmailAgree=" + memberEmailAgree + "]";
	}
	
	
	
	
	
}
