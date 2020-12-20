package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.MemberDto;

public interface MemberService {
	
	public List<MemberDto> getMemberList(MemberDto input) throws Exception;
	
	public void addMember(MemberDto input) throws Exception;
	
	public MemberDto getMember(MemberDto input) throws Exception;
	
	public void editMember(MemberDto input) throws Exception;
	
	public void idCheck(MemberDto input) throws Exception;
	
	public MemberDto login(MemberDto input) throws Exception;
	
}
