package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.MemList;

public interface MemListService {
	
	public List<MemList> getMemberList(MemList input) throws Exception;

	public void idCheck(MemList input) throws Exception;
	
	public void addMember(MemList input) throws Exception;
	
}
